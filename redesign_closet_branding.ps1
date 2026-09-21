$closetHtml = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>옷장 다이어트 컨설팅 | KFTA</title>
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
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-kftaGreen text-white py-24 px-6 overflow-hidden text-center">
        <div class="relative z-10 max-w-4xl mx-auto">
            <p class="text-kftaBeige font-bold tracking-widest mb-4">KFTA PRIVATE CONSULTING</p>
            <h1 class="text-4xl md:text-6xl font-serif font-bold mb-6 leading-tight">옷장 다이어트 컨설팅</h1>
            <p class="text-xl md:text-2xl font-light opacity-90 mb-8">안 입는 옷을 버리지 못하는 진짜 이유,<br>전문가와 함께 내면의 감정까지 정리하는 패션테라피</p>
            <a href="#apply" class="inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-4 px-10 rounded-full transition-all text-lg shadow-xl">내 옷장 점검받기</a>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-[url('assets/class_closet_diet.png')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                매일 아침 <strong>"입을 옷이 없다"</strong>며<br>옷장 앞에서 서성이고 계시진 않나요?
            </h2>
            <div class="w-24 h-1 bg-kftaGreen mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                옷장은 꽉 차 있는데 막상 손이 가는 옷은 몇 벌 없으신가요?<br>
                비싼 돈 주고 샀지만 한 번도 입지 않은 옷, 살이 빠지면 입겠다고 몇 년째 방치한 옷, 언젠가 유행이 돌아올 거라 믿고 쌓아둔 옷들...<br><br>
                우리가 특정 옷을 버리지 못하고 끌어안고 있는 데에는 숨겨진 <strong>'심리적 이유'</strong>가 있습니다. 옷장 다이어트는 단순히 불필요한 옷을 버리는 기계적인 정리 정돈이 아닙니다. <strong class="text-kftaRed">전문가와 함께 나의 소비 패턴을 분석하고 내면의 결핍과 감정을 마주하는 깊이 있는 패션테라피 과정</strong>입니다.
            </p>
        </div>
    </section>

    <!-- Target Audience -->
    <section class="py-24 px-6 bg-kftaBeige/30 text-center border-y border-kftaBorder/50">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-12">이런 분들께 <span class="text-kftaGreen">강력히 추천</span>합니다</h2>
        <div class="max-w-5xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">👗</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">옷장은 터질 듯 꽉 찬 분</h3>
                <p class="text-gray-600">옷은 넘쳐나는데, 정작 외출할 때마다 입을 옷이 없어 스트레스 받는 분</p>
            </div>
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">💳</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">감정 쇼핑이 잦은 분</h3>
                <p class="text-gray-600">스트레스를 받을 때마다 충동구매를 하고, 택도 안 뗀 옷을 쌓아두시는 분</p>
            </div>
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">🗑️</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">버리지 못하는 분</h3>
                <p class="text-gray-600">과거의 체형이나 추억에 얽매여 낡은 옷을 과감하게 비워내지 못하는 분</p>
            </div>
        </div>
    </section>

    <!-- Deliverables -->
    <section class="py-24 px-6 bg-white">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-3xl font-bold text-center text-gray-800 mb-12">그래서, <span class="text-kftaGreen">무엇을 얻어갈 수 있나요?</span> (제공 내역)</h2>
            <div class="bg-gray-50 p-10 rounded-3xl shadow-lg border border-gray-100">
                <ul class="space-y-6">
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">옷장 분석 & 체형 핏 진단</h4>
                            <p class="text-gray-600">고객님의 실제 소장 아이템을 점검하며, 체형을 완벽하게 보완해주는 실루엣과 버려야 할 워스트 핏을 확실히 구별해 드립니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">내면 심리 점검 솔루션</h4>
                            <p class="text-gray-600">안 입는 옷을 버리지 못하는 심리적 원인을 분석하고, 부정적 감정을 비워내는 마인드 테라피 세션을 제공합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">200% 활용 믹스매치 코칭</h4>
                            <p class="text-gray-600">살아남은 소수 정예 아이템들로 다양한 TPO에 맞는 5~10가지 이상의 코디 조합(캡슐 옷장)을 기획해 드립니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">스마트 쇼핑 가이드</h4>
                            <p class="text-gray-600">앞으로 실패 없는 쇼핑을 위해 반드시 채워야 할 '머스트 해브 아이템' 리스트를 구체적으로 처방해 드립니다.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Sticky Bottom Apply Action -->
    <div id="apply" class="sticky bottom-0 left-0 w-full bg-white/95 backdrop-blur-md border-t border-gray-200 p-6 flex flex-col sm:flex-row justify-between items-center gap-4 z-50 shadow-[0_-10px_30px_rgba(0,0,0,0.1)]">
        <div>
            <h3 class="font-bold text-2xl text-gray-800">옷장 다이어트 컨설팅</h3>
            <p class="text-sm font-medium text-kftaRed">가격: 400,000원 <span class="text-gray-400 mx-2">|</span> 소요 시간: 150분</p>
        </div>
        <a href="checkout.html?item=옷장 다이어트 컨설팅" class="w-full sm:w-auto bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg text-center">
            지금 예약하고 옷장 비우기
        </a>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-gray-400 py-12 px-6 text-center">
        <p>&copy; 2026 Korea Fashion Therapy Association. All rights reserved.</p>
    </footer>
</body>
</html>
"@

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_closet.html", $closetHtml, [System.Text.Encoding]::UTF8)

# Now for consulting_3.html (퍼스널 이미지 브랜딩 컨설팅)
$brandingHtml = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>퍼스널 이미지 브랜딩 | KFTA</title>
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
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-kftaGreen text-white py-24 px-6 overflow-hidden text-center">
        <div class="relative z-10 max-w-4xl mx-auto">
            <p class="text-kftaBeige font-bold tracking-widest mb-4">KFTA PREMIUM CONSULTING</p>
            <h1 class="text-4xl md:text-6xl font-serif font-bold mb-6 leading-tight">퍼스널 이미지 브랜딩</h1>
            <p class="text-xl md:text-2xl font-light opacity-90 mb-8">가장 나다운 모습이 가장 강력한 무기가 될 수 있도록,<br>당신의 가치를 시각화하는 전략적 퍼스널 브랜딩</p>
            <a href="#apply" class="inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-4 px-10 rounded-full transition-all text-lg shadow-xl">내 이미지 리브랜딩하기</a>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-[url('assets/class_personal_branding.png')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                중요한 미팅, 면접, 비즈니스를 앞두고<br><strong>'어떤 옷을 입어야 나를 가장 잘 보여줄까?'</strong> 고민하시나요?
            </h2>
            <div class="w-24 h-1 bg-kftaGreen mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                누구나 첫인상이 중요하다는 것을 알지만, 막상 나를 표현해야 할 때면 옷차림부터 말투, 표정까지 모든 것이 낯설고 어색하게만 느껴집니다.<br><br>
                퍼스널 이미지 브랜딩은 유행하는 옷을 입혀드리는 단순한 스타일링 서비스가 아닙니다. <strong class="text-kftaRed">당신의 직업, 라이프스타일, 성향, 그리고 숨겨진 내면의 강점을 입체적으로 분석하여 '나다움'을 강력한 브랜드로 시각화</strong>하는 프리미엄 컨설팅입니다. 나의 가치를 극대화하는 외적 이미지를 완성해 보세요.
            </p>
        </div>
    </section>

    <!-- Target Audience -->
    <section class="py-24 px-6 bg-kftaBeige/30 text-center border-y border-kftaBorder/50">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-12">이런 분들께 <span class="text-kftaGreen">강력히 추천</span>합니다</h2>
        <div class="max-w-5xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">👔</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">비즈니스 리더 & 창업가</h3>
                <p class="text-gray-600">CEO, 프리랜서 등 신뢰감과 전문성이 돋보이는 나만의 시그니처 이미지가 필요하신 분</p>
            </div>
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">🎯</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">터닝포인트를 맞이한 분</h3>
                <p class="text-gray-600">이직, 면접, 복직 등 중요한 순간을 앞두고 확실한 첫인상을 각인시키고 싶으신 분</p>
            </div>
            <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm hover:shadow-xl transition-shadow">
                <div class="text-4xl mb-6">💎</div>
                <h3 class="font-bold text-xl text-gray-800 mb-4">나의 가치를 높이고픈 분</h3>
                <p class="text-gray-600">외적인 매력을 업그레이드하여 자존감을 높이고 대인관계에서 자신감을 갖고 싶은 분</p>
            </div>
        </div>
    </section>

    <!-- Deliverables -->
    <section class="py-24 px-6 bg-white">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-3xl font-bold text-center text-gray-800 mb-12">그래서, <span class="text-kftaGreen">무엇을 얻어갈 수 있나요?</span> (제공 내역)</h2>
            <div class="bg-gray-50 p-10 rounded-3xl shadow-lg border border-gray-100">
                <ul class="space-y-6">
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">퍼스널 맞춤 룩북 (Look-book) 제공</h4>
                            <p class="text-gray-600">나의 체형, 컬러, 라이프스타일을 심층 분석하여 기획된 '세상에 하나뿐인 나만의 스타일 가이드북(PDF)'을 제공합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">옷장 심폐소생 솔루션</h4>
                            <p class="text-gray-600">가져오신 기존 소장 아이템들의 활용 가능 여부를 진단하고, 이를 200% 활용할 수 있는 컬러 배색 및 믹스매치 팁을 알려드립니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">실전 핀셋 쇼핑 리스트</h4>
                            <p class="text-gray-600">룩북을 완성하기 위해 추가로 구매하면 좋은 핵심 아이템(신발, 이너, 액세서리, 재킷 등)의 구체적인 추천 리스트를 처방합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">TPO 1착장 마스터 코칭</h4>
                            <p class="text-gray-600">다가오는 가장 중요한 일정(면접, 데이트, 중요한 PT 등)을 위한 최적의 1착장 스타일링을 그 자리에서 완벽하게 세팅해 드립니다.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Sticky Bottom Apply Action -->
    <div id="apply" class="sticky bottom-0 left-0 w-full bg-white/95 backdrop-blur-md border-t border-gray-200 p-6 flex flex-col sm:flex-row justify-between items-center gap-4 z-50 shadow-[0_-10px_30px_rgba(0,0,0,0.1)]">
        <div>
            <h3 class="font-bold text-2xl text-gray-800">퍼스널 이미지 브랜딩 컨설팅</h3>
            <p class="text-sm font-medium text-kftaRed">가격: 500,000원 <span class="text-gray-400 mx-2">|</span> 소요 시간: 180분</p>
        </div>
        <a href="checkout.html?item=퍼스널 이미지 브랜딩" class="w-full sm:w-auto bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg text-center">
            지금 예약하고 나만의 브랜드 찾기
        </a>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-gray-400 py-12 px-6 text-center">
        <p>&copy; 2026 Korea Fashion Therapy Association. All rights reserved.</p>
    </footer>
</body>
</html>
"@

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_3.html", $brandingHtml, [System.Text.Encoding]::UTF8)
