$html = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Replace K-Pop Episode 1 Image
$pattern1 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="w-full h-48 bg-gray-200 flex items-center justify-center text-gray-400 text-sm border-b border-gray-100">)<img src="https://images.unsplash.com/[^"]+" class="w-full h-full object-cover" alt="클래스 이미지">(</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4 class="font-bold text-lg text-kftaGreen mb-3">\[1화\] 페르소나의 확장</h4>)'
$replacement1 = '${1}<img src="assets/class_kpop_1.png" class="w-full h-full object-cover" alt="클래스 이미지">${2}'
$html = [regex]::Replace($html, $pattern1, $replacement1)

# Replace K-Pop Episode 2 Image
$pattern2 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="w-full h-48 bg-gray-200 flex items-center justify-center text-gray-400 text-sm border-b border-gray-100">)<img src="https://images.unsplash.com/[^"]+" class="w-full h-full object-cover" alt="클래스 이미지">(</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4 class="font-bold text-lg text-kftaGreen mb-3">\[2화\] 콘셉트를 입다</h4>)'
$replacement2 = '${1}<img src="assets/class_kpop_2.png" class="w-full h-full object-cover" alt="클래스 이미지">${2}'
$html = [regex]::Replace($html, $pattern2, $replacement2)

# Replace K-Pop Episode 3 Image
$pattern3 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="w-full h-48 bg-gray-200 flex items-center justify-center text-gray-400 text-sm border-b border-gray-100">)<img src="https://images.unsplash.com/[^"]+" class="w-full h-full object-cover" alt="클래스 이미지">(</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4 class="font-bold text-lg text-kftaGreen mb-3">\[3화\] 입는 순간 주인공이 된다</h4>)'
$replacement3 = '${1}<img src="assets/class_kpop_3.png" class="w-full h-full object-cover" alt="클래스 이미지">${2}'
$html = [regex]::Replace($html, $pattern3, $replacement3)

# Replace K-Pop Episode 4 Image
$pattern4 = '(?s)(<div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300 border-l-4 border-kftaGreen">.*?<div class="w-full h-48 bg-gray-200 flex items-center justify-center text-gray-400 text-sm border-b border-gray-100">)<img src="https://images.unsplash.com/[^"]+" class="w-full h-full object-cover" alt="클래스 이미지">(</div>\s*<div class="p-6 flex-grow flex flex-col">\s*<h4 class="font-bold text-lg text-kftaGreen mb-3">\[4화\] 소통과 연대</h4>)'
$replacement4 = '${1}<img src="assets/class_kpop_4.png" class="w-full h-full object-cover" alt="클래스 이미지">${2}'
$html = [regex]::Replace($html, $pattern4, $replacement4)


[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $html, [System.Text.Encoding]::UTF8)
