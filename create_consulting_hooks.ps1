$template = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulting | KFTA</title>
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
    <header class="sticky top-0 bg-kftaBeige/90 backdrop-blur-md z-50 border-b border-kftaBorder animate__animated animate__fadeInDown">
        <div class="max-w-7xl mx-auto px-6 h-20 flex justify-between items-center">
            <a href="index.html" class="flex items-center gap-3 hover:opacity-80 transition-opacity z-50">
                <img src="assets/kfta-logo-real.png" alt="KFTA Logo" class="h-12 w-auto">
            </a>
            <nav class="hidden md:flex gap-8 relative z-50 h-full">
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
                <p class="text-sm text-kftaBeige mb-2 font-semibold">Consulting</p>
                <h1 class="font-serif font-bold text-4xl lg:text-5xl mb-4">{{TITLE}}</h1>
                <p class="text-lg opacity-90">{{SUBTITLE}}</p>
            </div>
            
            <div class="p-10 space-y-16">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
                    <img src="{{IMAGE}}" class="rounded-2xl w-full h-96 object-cover shadow-lg">
                    <div>
                        <h3 class="text-2xl font-bold text-kftaGreen mb-2">{{TITLE}}</h3>
                        <p class="text-kftaRed font-bold mb-4">{{SUBTITLE2}}</p>
                        <p class="text-gray-600 leading-relaxed text-justify mb-4">{{DESC}}</p>
                        
                        <h4 class="font-bold text-lg text-kftaGreen mb-2 mt-6">진단 및 컨설팅 내용</h4>
                        <ul class="list-disc list-inside text-sm text-gray-600 mb-6 space-y-2">
                            {{FEATURES}}
                        </ul>
                    </div>
                </div>

                <div class="border-t border-gray-100 pt-16 mt-16">
                    <h4 class="font-bold text-2xl text-kftaGreen mb-8 text-center">프로그램 상세 안내</h4>
                    <div class="bg-gray-50 rounded-2xl p-8 lg:p-12">
                        {{HOOKING_CONTENT}}
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
                        예약 및 결제하기
                    </a>
                </div>
            </div>
        </div>
    </main>
    <footer class="bg-kftaGreen text-kftaBeige py-12 px-6">
        <div class="max-w-7xl mx-auto text-center text-sm opacity-60">
            &copy; 2026 Korea Fashion Therapy Association. All rights reserved.
        </div>
    </footer>
</body>
</html>
"@

# 1. 마인드 컬러 컨설팅 (consulting_1.html)
$hook1 = @"
<div class="space-y-6 text-gray-700 leading-relaxed text-justify max-w-3xl mx-auto">
    <p>혹시 <strong>무기력하거나 원인 모를 스트레스</strong>에 시달리고 계신가요?</p>
    <p>우리가 무의식적으로 고르는 옷의 색상은 현재의 심리 상태와 에너지를 고스란히 반영합니다. 마인드 컬러 컨설팅은 단순한 외면의 퍼스널 컬러 진단을 넘어, 당신의 <strong>'마음의 색'</strong>을 읽어내는 KFTA만의 독보적인 멘탈 케어 프로그램입니다.</p>
    <p>색채 심리학을 기반으로 현재 나에게 결핍된 에너지가 무엇인지 진단하고, 일상에서 옷과 소품의 색상을 활용하여 스스로 감정을 다스리고 회복할 수 있는 <strong>맞춤형 힐링 컬러 솔루션</strong>을 제공합니다.</p>
    <p class="font-bold text-kftaGreen mt-8 border-l-4 border-kftaRed pl-4">이런 분들께 추천합니다!</p>
    <ul class="list-disc list-inside space-y-2 text-gray-600 pl-2">
        <li>반복되는 일상에 지쳐 새로운 에너지가 필요하신 분</li>
        <li>최근 들어 유독 무채색이나 어두운 계열의 옷만 찾게 되는 분</li>
        <li>패션과 색상을 통해 긍정적인 심리 변화를 경험하고 싶으신 분</li>
    </ul>
</div>
"@
$html1 = $template.Replace('{{TITLE}}', '마인드 컬러 컨설팅')
$html1 = $html1.Replace('{{SUBTITLE}}', '심리 에너지 및 라이프스타일 맞춤 치유 컬러 도출')
$html1 = $html1.Replace('{{IMAGE}}', 'assets/consulting_1.jpg')
$html1 = $html1.Replace('{{SUBTITLE2}}', 'KFTA 오프라인 대면 컨설팅')
$html1 = $html1.Replace('{{DESC}}', '최근 스트레스 받으시나요? 일상에 필요한 회복의 컬러는 무엇일까요? 내면의 상태를 점검하고 나를 치유하는 마인드 컬러를 찾아드리는 1:1 심층 컨설팅입니다.')
$html1 = $html1.Replace('{{FEATURES}}', '<li>현재 심리 및 스트레스 지수 측정</li><li>무의식의 컬러 선호도 심층 분석</li><li>일상 회복을 위한 힐링 컬러 팔레트 처방</li><li>컬러 테라피 실전 적용 가이드</li>')
$html1 = $html1.Replace('{{HOOKING_CONTENT}}', $hook1)
$html1 = $html1.Replace('{{PRICE}}', '250,000원')
$html1 = $html1.Replace('{{TIME}}', '90분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $html1, [System.Text.Encoding]::UTF8)

# 2. 퍼스널 이미지 브랜딩 컨설팅 (consulting_3.html)
$hook3 = @"
<div class="space-y-6 text-gray-700 leading-relaxed text-justify max-w-3xl mx-auto">
    <p>옷장에 옷은 가득한데, <strong>막상 외출하려고 하면 입을 옷이 없어서</strong> 고민하신 적이 있으신가요?</p>
    <p>당신의 고유한 매력을 가장 빠르고 직관적으로 보여주는 수단이 바로 '패션'입니다. 퍼스널 이미지 브랜딩 컨설팅은 일회성 코디 추천이 아닌, 당신이 가진 신체적 장점과 추구하는 이미지를 완벽히 일치시키는 <strong>전략적 스타일링 과정</strong>입니다.</p>
    <p>가지고 계신 소장 아이템들을 활용하여 최고의 핏과 컬러 배색을 찾아내고, 중요한 미팅이나 모임에서 주인공이 될 수 있는 <strong>'나만의 실전 맞춤형 룩북(Look-book)'</strong>을 제작해 드립니다. 입을 때마다 자존감이 올라가는 찰떡 코디 조합을 지금 바로 확인해보세요.</p>
    <p class="font-bold text-kftaGreen mt-8 border-l-4 border-kftaRed pl-4">이런 분들께 추천합니다!</p>
    <ul class="list-disc list-inside space-y-2 text-gray-600 pl-2">
        <li>나에게 가장 잘 어울리는 베스트 스타일이 무엇인지 헷갈리시는 분</li>
        <li>비싼 옷을 사도 왠지 모르게 어색하고 촌스러워 보이시는 분</li>
        <li>이직, 승진, 결혼 등 인생의 중요한 전환점을 앞두고 확실한 이미지 메이킹이 필요하신 분</li>
    </ul>
</div>
"@
$html3 = $template.Replace('{{TITLE}}', '퍼스널 이미지 브랜딩 컨설팅')
$html3 = $html3.Replace('{{SUBTITLE}}', '소장 아이템 연계 컬러 배색 & 실전 맞춤형 룩북 가이드')
$html3 = $html3.Replace('{{IMAGE}}', 'assets/consulting_3_new.png')
$html3 = $html3.Replace('{{SUBTITLE2}}', 'KFTA 오프라인 대면 컨설팅')
$html3 = $html3.Replace('{{DESC}}', '나의 신체적 강점을 극대화하고 약점을 보완하며, 소장 중인 아이템들을 100% 활용해 내게 가장 잘 어울리는 최적의 룩을 기획해주는 프리미엄 브랜딩 컨설팅입니다.')
$html3 = $html3.Replace('{{FEATURES}}', '<li>개인 체형 및 퍼스널 컬러 정밀 진단</li><li>소장 패션 아이템 핏(Fit) & 배색 점검</li><li>TPO(시간, 장소, 상황)에 맞는 스타일링 코칭</li><li>나만의 퍼스널 맞춤 룩북 제공</li>')
$html3 = $html3.Replace('{{HOOKING_CONTENT}}', $hook3)
$html3 = $html3.Replace('{{PRICE}}', '500,000원')
$html3 = $html3.Replace('{{TIME}}', '120분')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $html3, [System.Text.Encoding]::UTF8)

# 3. Update "One Day Class" text to "Consulting" in Mom Profile and Closet Diet
$momHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", [System.Text.Encoding]::UTF8)
$momHtml = $momHtml.Replace('<p class="text-sm text-kftaBeige mb-2 font-semibold">One Day Class</p>', '<p class="text-sm text-kftaBeige mb-2 font-semibold">Consulting</p>')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", $momHtml, [System.Text.Encoding]::UTF8)

$closetHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_closet.html", [System.Text.Encoding]::UTF8)
$closetHtml = $closetHtml.Replace('<p class="text-sm text-kftaBeige mb-2 font-semibold">One Day Class</p>', '<p class="text-sm text-kftaBeige mb-2 font-semibold">Consulting</p>')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_closet.html", $closetHtml, [System.Text.Encoding]::UTF8)

