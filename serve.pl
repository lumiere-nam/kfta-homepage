#!/usr/bin/perl
# 로컬 미리보기용 정적 파일 서버 (개발 확인 전용)
#   perl serve.pl [포트]
use strict;
use warnings;
use IO::Socket::INET;
use IO::Select;

my $PORT = $ARGV[0] || 8080;
my $ROOT = '.';

my %MIME = (
    html => 'text/html; charset=utf-8',
    css  => 'text/css; charset=utf-8',
    js   => 'application/javascript; charset=utf-8',
    json => 'application/json; charset=utf-8',
    png  => 'image/png',   jpg => 'image/jpeg', jpeg => 'image/jpeg',
    gif  => 'image/gif',   svg => 'image/svg+xml', webp => 'image/webp',
    ico  => 'image/x-icon', pdf => 'application/pdf',
    woff => 'font/woff',   woff2 => 'font/woff2', ttf => 'font/ttf',
);

my $server = IO::Socket::INET->new(
    LocalAddr => '0.0.0.0',
    LocalPort => $PORT,
    Proto     => 'tcp',
    Listen    => 20,
    ReuseAddr => 1,
) or die "포트 $PORT 열기 실패: $!\n";

$| = 1;
print "KFTA 로컬 서버 실행 중\n";
print "  PC   : http://localhost:$PORT/\n";
for my $ip (lan_ips()) { print "  폰   : http://$ip:$PORT/\n" }
print "  중지 : Ctrl+C\n\n";

my $sel = IO::Select->new($server);
while (1) {
    for my $ready ($sel->can_read(1)) {
        my $c = $server->accept or next;
        $c->autoflush(1);
        my $req = <$c>;
        unless (defined $req) { close $c; next }
        # 남은 헤더 비우기
        while (my $l = <$c>) { last if $l =~ /^\r?\n$/ }

        my ($path) = $req =~ m{^GET\s+(\S+)\s+HTTP} ;
        $path = '/' unless defined $path;
        $path =~ s/\?.*$//;             # 쿼리 제거
        $path =~ s/%([0-9A-Fa-f]{2})/chr(hex($1))/ge;
        $path = '/index.html' if $path eq '/';
        $path =~ s{\.\.}{}g;            # 경로 탈출 차단
        my $file = $ROOT . $path;

        if (-f $file) {
            my ($ext) = $file =~ /\.([A-Za-z0-9]+)$/;
            my $type = $MIME{ lc($ext // '') } || 'application/octet-stream';
            open my $fh, '<:raw', $file or do { send_404($c); next };
            local $/; my $body = <$fh>; close $fh;
            print $c "HTTP/1.1 200 OK\r\n";
            print $c "Content-Type: $type\r\n";
            print $c "Content-Length: " . length($body) . "\r\n";
            print $c "Cache-Control: no-store\r\n";
            print $c "Connection: close\r\n\r\n";
            print $c $body;
            printf "  200  %s\n", $path;
        } else {
            send_404($c);
            printf "  404  %s\n", $path;
        }
        close $c;
    }
}

sub send_404 {
    my $c = shift;
    my $body = "<meta charset='utf-8'><h1>404</h1><p>파일을 찾을 수 없습니다.</p>";
    print $c "HTTP/1.1 404 Not Found\r\n";
    print $c "Content-Type: text/html; charset=utf-8\r\n";
    print $c "Content-Length: " . length($body) . "\r\n";
    print $c "Connection: close\r\n\r\n";
    print $c $body;
}

sub lan_ips {
    my @ips;
    my $out = `ipconfig 2>nul`;
    while ($out =~ /IPv4[^:]*:\s*([0-9.]+)/g) {
        my $ip = $1;
        next if $ip =~ /^127\./;
        push @ips, $ip;
    }
    return @ips;
}
