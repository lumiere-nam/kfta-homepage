$c = Get-Content index.html -Encoding UTF8
$c = $c[0..110] + $c[191..($c.Length-1)]
Set-Content index.html $c -Encoding UTF8
