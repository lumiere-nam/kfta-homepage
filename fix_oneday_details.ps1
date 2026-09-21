$template = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>One Day Class | KFTA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: { extend: { colors: { kftaGreen: '#3B4B38', kftaRed: '#8B1A1A', kftaBeige: '#E8E3D9', kftaLight: '#F9F8F6', kftaBorder: '#D1C9BB' }, fontFamily: { serif: ['"Playfair Display"', 'serif'], sans: ['Pretendard', 'sans-serif'] } } }
      }
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        @font-face {
            font-family: 'AmpersandSerif';
            src: local('Baskerville'), local('Georgia'), local('Times New Roman'), serif;
            unicode-range: U+0026;
        }
        body, h1, h2, h3, h4, h5, h6, p, a, span, div {
            font-family: 'AmpersandSerif', 'Pretendard', sans-serif !important;
        }
    </style>
</head>
<body class="font-sans text-gray-800 bg-kftaLight antialiased selection:bg-kftaRed selection:text-white">

    <!-- Navbar -->
    <header class="sticky top-0 bg-kftaBeige/90 backdrop-blur-md z-50 border-b border-kftaBorder animate__animated animate__fadeInDown">
        <div class="max-w-7xl mx-auto px-6 h-20 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-3 hover:opacity-80 transition-opacity z-50">
                <img src="assets/kfta-logo-real.png" alt="KFTA Logo" class="h-12 w-auto">
            </a>
            <nav class="hidden md:flex gap-8 relative z-50 h-full">
                <!-- Nav items omitted for brevity but they are standard... wait, let's keep it complete so the page isn't broken -->
                <div class="group relative flex items-center h-full"><a href="index.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">ABOUT</a></div>
                <div class="group relative flex items-center h-full"><a href="academy.html?v=2" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">ACADEMY</a></div>
                <div class="group relative flex items-center h-full"><a href="certification.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">CERTIFICATION</a></div>
                <div class="group relative flex items-center h-full"><a href="consulting.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">CONSULTING</a></div>
                <div class="group relative flex items-center h-full"><a href="corporate.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">CORPORATE</a></div>
                <div class="group relative flex items-center h-full"><a href="shop.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">SHOP</a></div>
                <div class="group relative flex items-center h-full"><a href="community.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">COMMUNITY</a></div>
            </nav>
        </div>
    </header>

    <main class="bg-kftaLight py-12 px-6 relative font-sans text-gray-800">
        <div class="max-w-5xl mx-auto bg-white shadow-2xl rounded-3xl overflow-hidden border border-gray-200">
            <div class="bg-kftaGreen p-10 text-white">
                <p class="text-sm text-kftaBeige mb-2 font-semibold">One Day Class</p>
                <h1 class="font-serif font-bold text-4xl lg:text-5xl mb-4">{{TITLE}}</h1>
                <p class="text-lg opacity-90">{{HERO_SUBTITLE}}</p>
            </div>
            
            <div class="p-10 space-y-16">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
                    <img src="{{IMAGE}}" class="rounded-2xl w-full h-96 object-cover shadow-lg">
                    <div>
                        <h3 class="text-2xl font-bold text-kftaGreen mb-2">{{TITLE}}</h3>
                        <p class="text-kftaRed font-bold mb-4">{{SUBTITLE}}</p>
                        <p class="text-gray-600 leading-relaxed text-justify mb-4">{{DESC}}</p>
                        
                        <h4 class="font-bold text-lg text-kftaGreen mb-2 mt-6">핵심 내용</h4>
                        <ul class="list-disc list-inside text-sm text-gray-600 mb-6 space-y-2">
                            {{FEATURES}}
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Bottom CTA Bar -->
            <div class="bg-gray-50 border-t border-gray-200 p-6 sm:p-10">
                <div class="flex flex-col sm:flex-row justify-between items-center gap-6">
                    <div>
                        <h3 class="font-bold text-xl text-gray-800">{{TITLE}}</h3>
                        <p class="text-sm text-gray-500">가격: {{PRICE}} / 소요 시간: {{TIME}}</p>
                    </div>
                    <a href="checkout.html?item={{TITLE}}" class="w-full sm:w-auto bg-kftaRed hover:bg-red-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg text-center">
                        신청 및 결제하기
                    </a>
                </div>
            </div>
        </div>
    </main>
    
    <!-- Footer -->
    <footer class="bg-kftaGreen text-kftaBeige py-12 px-6">
        <div class="max-w-7xl mx-auto flex flex-col md:flex-row justify-between gap-8">
            <div class="w-full md:w-1/3">
                <h3 class="font-serif font-bold text-xl mb-4">KFTA</h3>
                <p class="text-sm opacity-80 leading-relaxed">한국패션테라피협회는 패션과 심리를 결합하여 진정한 나를 찾고, 치유와 성장을 돕는 새로운 패러다임을 제시합니다.</p>
            </div>
            <div class="w-full md:w-1/3">
                <h4 class="font-bold mb-4">Contact</h4>
                <p class="text-sm opacity-80 mb-2">Email: info@kfta.org</p>
                <p class="text-sm opacity-80 mb-2">Tel: 02-1234-5678</p>
            </div>
            <div class="w-full md:w-1/3">
                <h4 class="font-bold mb-4">Legal</h4>
                <a href="#" class="block text-sm opacity-80 hover:text-white mb-2 transition-colors">이용약관</a>
                <a href="#" class="block text-sm opacity-80 hover:text-white transition-colors">개인정보처리방침</a>
            </div>
        </div>
        <div class="max-w-7xl mx-auto mt-12 pt-8 border-t border-kftaBeige/20 text-center text-sm opacity-60">
            &copy; 2026 Korea Fashion Therapy Association. All rights reserved.
        </div>
    </footer>
</body>
</html>
"@

# 1. Color Palette Page
$colorHTML = $template.Replace('{{TITLE}}', '나의 컬러 팔레트 맵')
$colorHTML = $colorHTML.Replace('{{HERO_SUBTITLE}}', '내면과 외면의 완벽한 조화')
$colorHTML = $colorHTML.Replace('{{IMAGE}}', 'assets/class_color_palette_new.jpg')
$colorHTML = $colorHTML.Replace('{{SUBTITLE}}', '미니 클래스')
$colorHTML = $colorHTML.Replace('{{DESC}}', '퍼스널컬러와 심리를 결합하여 짧은 시간 안에 나의 내면의 색과 외면의 색을 찾는 미니 클래스입니다.')
$colorHTML = $colorHTML.Replace('{{FEATURES}}', '<li>퍼스널 컬러 및 심리 진단</li><li>내면의 색과 외면의 색 매칭</li><li>컬러 활용 스타일링 팁</li>')
$colorHTML = $colorHTML.Replace('{{PRICE}}', '150,000원')
$colorHTML = $colorHTML.Replace('{{TIME}}', '60분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_color.html", $colorHTML, [System.Text.Encoding]::UTF8)

# 2. Detox Page
$detoxHTML = $template.Replace('{{TITLE}}', '패션 마인드 디톡스 원데이')
$detoxHTML = $detoxHTML.Replace('{{HERO_SUBTITLE}}', '옷장 속 감정을 비우는 시간')
$detoxHTML = $detoxHTML.Replace('{{IMAGE}}', 'assets/class_mind_detox.png')
$detoxHTML = $detoxHTML.Replace('{{SUBTITLE}}', '인지 오류 개선')
$detoxHTML = $detoxHTML.Replace('{{DESC}}', '패션에 대한 나의 인지 오류와 부정적인 언어 습관을 발견하고, 이를 긍정적으로 개선하여 자신감을 되찾는 원데이 클래스입니다.')
$detoxHTML = $detoxHTML.Replace('{{FEATURES}}', '<li>패션 인지 오류 자가진단</li><li>부정적 언어 습관 분석 및 교정</li><li>자존감 회복을 위한 긍정 선언문 작성</li>')
$detoxHTML = $detoxHTML.Replace('{{PRICE}}', '120,000원')
$detoxHTML = $detoxHTML.Replace('{{TIME}}', '60분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_detox.html", $detoxHTML, [System.Text.Encoding]::UTF8)

