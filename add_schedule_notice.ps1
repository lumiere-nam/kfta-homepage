$c = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\community.html", [System.Text.Encoding]::UTF8)

$oldGrid = '<div class="grid grid-cols-1 md:grid-cols-2 gap-8">'
$newGrid = '<div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <a href="notice_detail_schedule.html" class="group bg-white p-8 rounded-xl shadow-md border border-gray-100 hover:shadow-xl transition-all duration-300 block hover:-translate-y-1 relative overflow-hidden">
                <div class="absolute top-0 right-0 bg-[#8B1A1A] text-white text-xs font-bold px-3 py-1 rounded-bl-lg">NEW</div>
                <p class="text-sm text-[#869CB0] font-bold mb-3 tracking-wide">2026.02.01</p>
                <h3 class="text-2xl font-bold text-[#1a2d3b] mb-4 group-hover:text-[#3B4B38] transition-colors">[일정공지] 이달의 KFTA 프로그램 일정 안내</h3>
                <p class="text-gray-600 mb-4 line-clamp-2 leading-relaxed">이번 달에 진행되는 원데이 클래스, 위클리 토크, 그리고 정규 아카데미 개강 일정을 확인하고 수강 신청을 서둘러 주세요!</p>
                <span class="text-[#3B4B38] font-bold text-sm inline-flex items-center gap-1 group-hover:underline underline-offset-4">Read more <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg></span>
            </a>'

$c = $c.Replace($oldGrid, $newGrid)

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\community.html", $c, [System.Text.Encoding]::UTF8)
