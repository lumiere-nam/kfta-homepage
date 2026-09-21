# 1. Update prices in academy.html
$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Update DIY price
$a = $a.Replace("가격: 90,000원", "200,000원 (재료비 포함)")
# Update Aroma price
$a = $a.Replace("가격: 80,000원", "100,000원")

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)

# 2. Rewrite academy_oneday_diy.html
$diyContent = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나만의 천연 화장품 DIY | KFTA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: { extend: { colors: { kftaGreen: '#3B4B38', kftaRed: '#8B1A1A', kftaBeige: '#E8E3D9', kftaLight: '#F9F8F6', kftaBorder: '#D1C9BB' }, fontFamily: { serif: ['"Playfair Display"', 'serif'], sans: ['Pretendard', 'sans-serif'] } } }
      }
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        @font-face { font-family: 'AmpersandSerif'; src: local('Baskerville'), local('Georgia'), local('Times New Roman'), serif; unicode-range: U+0026; }
        body, h1, h2, h3, h4, h5, h6, p, a, span, div { font-family: 'AmpersandSerif', 'Pretendard', sans-serif !important; }
    </style>
</head>
<body class="font-sans text-gray-800 bg-kftaLight antialiased selection:bg-kftaRed selection:text-white">
    <header class="sticky top-0 bg-kftaBeige/90 backdrop-blur-md z-50 border-b border-kftaBorder">
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
    <section class="relative bg-[#29465B] text-white py-28 px-6 overflow-hidden text-center">
        <div class="relative z-10 max-w-4xl mx-auto">
            <p class="text-kftaBeige font-bold tracking-widest mb-4">ONE DAY CLASS</p>
            <h1 class="text-4xl md:text-6xl font-serif font-bold mb-6 leading-tight">나만의 천연 화장품 DIY</h1>
            <p class="text-xl md:text-2xl font-light opacity-90 mb-8">스트레스받은 뇌와 지친 피부를 동시에 깨우는<br>심리피부학(Psychodermatology) 기반의 뉴로글로우 레시피</p>
            <a href="#apply" class="inline-block bg-white text-[#29465B] hover:bg-gray-100 font-bold py-4 px-10 rounded-full transition-all text-lg shadow-xl">클래스 예약하기</a>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-30 bg-[url('assets/class_oneday_diy.jpg')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                극심한 스트레스가 쌓일 때마다<br><strong>피부부터 뒤집어지는 이유, 알고 계셨나요?</strong>
            </h2>
            <div class="w-24 h-1 bg-[#29465B] mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                아무리 비싼 명품 화장품을 발라도 푸석푸석한 피부가 나아지지 않는다면, 그 원인은 외부 환경이 아닌 '내면의 스트레스'에 있을 수 있습니다.<br><br>
                최신 글로벌 뷰티 트렌드인 <strong>'뉴로코스메틱(Neurocosmetics)'</strong>과 <strong>'심리피부학(Psychodermatology)'</strong>에 따르면, 우리의 피부는 뇌와 직접 연결된 감각 기관(Skin-Brain Axis)입니다. 마음이 불안하고 지치면 피부 장벽이 가장 먼저 무너집니다. 반대로 좋은 성분과 향을 통해 뇌에 긍정적인 신호(엔도르핀 분비)를 보내면, 피부는 스스로 빛을 내기 시작합니다.
            </p>
        </div>
    </section>

    <!-- Visual Divider -->
    <div class="w-full h-96 bg-[url('assets/class_oneday_diy.jpg')] bg-cover bg-center bg-fixed"></div>

    <!-- Details Section -->
    <section class="py-24 px-6 bg-kftaBeige/20 text-center border-y border-kftaBorder/50">
        <div class="max-w-4xl mx-auto space-y-8">
            <p class="text-kftaRed font-bold tracking-widest uppercase">Skin-Brain Axis Therapy</p>
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                내 피부가 진짜 원하는 성분으로 완성하는<br><strong>감정 뷰티 레시피 (NeuroGlow)</strong>
            </h2>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                나만의 천연 화장품 DIY 클래스는 단순한 공방 체험이 아닙니다. 내 피부의 부족한 영양을 채우는 동시에, <strong>감정 아로마 에센셜 오일</strong>을 배합하여 마음의 스트레스까지 씻어내는 진정한 웰니스(Wellness) 뷰티 과정입니다.<br><br>
                화학 방부제, 인공 향료, 내게 맞지 않는 유해 성분은 과감히 덜어냅니다. 100% 식물성 천연 지질 성분과 피부 진정 효과가 탁월한 치유 에센스만을 사용해, 바르는 순간 내 마음까지 환해지는 마법 같은 치유의 시간을 경험해 보세요.
            </p>
        </div>
    </section>

    <!-- Deliverables -->
    <section class="py-24 px-6 bg-white">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-3xl font-bold text-center text-gray-800 mb-12">클래스 <span class="text-[#29465B]">진행 내용 & 제공 내역</span></h2>
            <div class="bg-gray-50 p-10 rounded-3xl shadow-lg border border-gray-100">
                <ul class="space-y-6">
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">피부 & 마인드 진단 컨설팅</h4>
                            <p class="text-gray-600">현재의 피부 상태와 심리적 스트레스 원인을 종합적으로 파악하여, 내게 꼭 필요한 유효 성분과 아로마 향기(진정/활력/집중 등)를 디자인합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">천연 프리미엄 스킨케어 2종 직접 조제</h4>
                            <p class="text-gray-600">수분 장벽을 강화하는 고보습 천연 크림(50ml)과 피부 열감을 낮춰주는 쿨링/진정 미스트(100ml)를 직접 배합하여 제조합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">나만의 브랜드 네이밍 & 고급 패키징</h4>
                            <p class="text-gray-600">세상에 단 하나뿐인 제품에 나만의 특별한 이름을 부여하여 라벨링하고, 백화점 퀄리티의 고급스러운 패키징으로 완성합니다.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Sticky Bottom Apply Action -->
    <div id="apply" class="sticky bottom-0 left-0 w-full bg-white/95 backdrop-blur-md border-t border-gray-200 p-6 flex flex-col sm:flex-row justify-between items-center gap-4 z-50 shadow-[0_-10px_30px_rgba(0,0,0,0.1)]">
        <div>
            <h3 class="font-bold text-2xl text-gray-800">나만의 천연 화장품 DIY</h3>
            <p class="text-sm font-medium text-kftaRed">가격: 200,000원 (재료비 포함) <span class="text-gray-400 mx-2">|</span> 소요 시간: 90분</p>
        </div>
        <a href="checkout.html?item=나만의 천연 화장품 DIY" class="w-full sm:w-auto bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg text-center">
            지금 신청하기
        </a>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-gray-400 py-12 px-6 text-center">
        <p>&copy; 2026 Korea Fashion Therapy Association. All rights reserved.</p>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_diy.html", $diyContent, [System.Text.Encoding]::UTF8)

# 3. Rewrite academy_oneday_aroma.html
$aromaContent = @"
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정 아로마테라피 | KFTA</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: { extend: { colors: { kftaGreen: '#3B4B38', kftaRed: '#8B1A1A', kftaBeige: '#E8E3D9', kftaLight: '#F9F8F6', kftaBorder: '#D1C9BB' }, fontFamily: { serif: ['"Playfair Display"', 'serif'], sans: ['Pretendard', 'sans-serif'] } } }
      }
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        @font-face { font-family: 'AmpersandSerif'; src: local('Baskerville'), local('Georgia'), local('Times New Roman'), serif; unicode-range: U+0026; }
        body, h1, h2, h3, h4, h5, h6, p, a, span, div { font-family: 'AmpersandSerif', 'Pretendard', sans-serif !important; }
    </style>
</head>
<body class="font-sans text-gray-800 bg-kftaLight antialiased selection:bg-kftaRed selection:text-white">
    <!-- Header -->
    <header class="sticky top-0 bg-kftaBeige/90 backdrop-blur-md z-50 border-b border-kftaBorder">
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
    <section class="relative bg-[#29465B] text-white py-28 px-6 overflow-hidden text-center">
        <div class="relative z-10 max-w-4xl mx-auto">
            <p class="text-kftaBeige font-bold tracking-widest mb-4">ONE DAY CLASS</p>
            <h1 class="text-4xl md:text-6xl font-serif font-bold mb-6 leading-tight">감정 아로마테라피</h1>
            <p class="text-xl md:text-2xl font-light opacity-90 mb-8">무의식의 향기가 말해주는 나의 진짜 마음,<br>뉴로-아로마테라피로 찾는 감정의 '중심점'</p>
            <a href="#apply" class="inline-block bg-white text-[#29465B] hover:bg-gray-100 font-bold py-4 px-10 rounded-full transition-all text-lg shadow-xl">클래스 예약하기</a>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-20 bg-[url('assets/class_signature_scent.png')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                이유 없는 무기력함과 잦은 짜증,<br><strong>단순히 내 성격 탓이 아닐지도 모릅니다.</strong>
            </h2>
            <div class="w-24 h-1 bg-[#29465B] mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                현대인들은 타인의 시선을 의식하느라 자신의 진짜 감정을 억누른 채 살아갑니다. 억압된 감정은 육체적인 피로와 원인 모를 불안으로 우리 몸을 공격합니다.<br><br>
                인간의 오감 중 유일하게 이성적 판단을 거치지 않고 감정과 기억을 관장하는 <strong>뇌의 변연계(Limbic System)</strong>로 직접 도달하는 감각이 바로 <strong>'후각'</strong>입니다. 향기는 뇌의 스위치를 가장 빠르게 켜고 끕니다. '뉴로-아로마테라피'는 지금 나에게 끌리는 향을 통해 무의식을 진단하고, 억눌린 감정의 매듭을 가장 빠르고 부드럽게 풀어주는 과학적이고 섬세한 치유 과정입니다.
            </p>
        </div>
    </section>

    <!-- Details Section -->
    <section class="py-24 px-6 bg-kftaBeige/20 text-center border-y border-kftaBorder/50">
        <div class="max-w-4xl mx-auto space-y-8">
            <p class="text-kftaRed font-bold tracking-widest uppercase">Mood Management System</p>
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                들뜬 마음은 가라앉히고, 쳐진 마음은 일으키는<br><strong>도테라 10종 감정 오일 처방</strong>
            </h2>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                식물의 생명력을 담은 10가지 감정 오일(Emotional Aromatherapy)은 저마다 다른 화학적 치유 능력을 지니고 있습니다. 우울할 땐 시트러스 향으로 행복감을(모노테르펜), 극도의 스트레스와 슬픔엔 나무와 허브 향으로 편안함을(에스테르), 두려움이 앞설 땐 꽃 향기로 진정 효과(알코올)를 선사합니다.<br><br>
                이 클래스는 억지로 기분을 들뜨게 만드는 것이 아닙니다. <strong>분노와 불안을 비워내고 스스로 가장 건강하고 평온한 '감정의 중심점(Balance)'으로 돌아갈 수 있도록 돕는 프리미엄 내면 테라피</strong>입니다.
            </p>
        </div>
    </section>

    <!-- Deliverables -->
    <section class="py-24 px-6 bg-white">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-3xl font-bold text-center text-gray-800 mb-12">클래스 <span class="text-[#29465B]">진행 내용 & 제공 내역</span></h2>
            <div class="bg-gray-50 p-10 rounded-3xl shadow-lg border border-gray-100">
                <ul class="space-y-6">
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">1:1 블라인드 향기 심리 진단</h4>
                            <p class="text-gray-600">10가지의 감정 오일 중 가장 선호하는 향 2가지와, 반대로 가장 역겹거나 피하고 싶은 향 1가지를 직관적으로 선택하여 현재 나의 무의식과 심리 상태를 날카롭게 진단합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">전문 테라피스트의 식물 에너지 코칭</h4>
                            <p class="text-gray-600">민트(활기), 시트러스(행복), 플로럴(진정), 우디(편안함) 등 각 식물이 가진 화학적 성질과 에너지가 어떻게 내 감정을 치유할 수 있는지 전문적인 코칭을 제공합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">나만의 힐링 감정 롤온 향수(10ml) 맞춤 제작</h4>
                            <p class="text-gray-600">진단 결과를 바탕으로 최고급 도테라(doTERRA) 에센셜 오일을 베이스로 하여, 내게 가장 필요한 감정 에너지를 담은 나만의 롤온 향수(10ml)를 직접 제작해 가져갑니다.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Sticky Bottom Apply Action -->
    <div id="apply" class="sticky bottom-0 left-0 w-full bg-white/95 backdrop-blur-md border-t border-gray-200 p-6 flex flex-col sm:flex-row justify-between items-center gap-4 z-50 shadow-[0_-10px_30px_rgba(0,0,0,0.1)]">
        <div>
            <h3 class="font-bold text-2xl text-gray-800">감정 아로마테라피</h3>
            <p class="text-sm font-medium text-kftaRed">가격: 100,000원 <span class="text-gray-400 mx-2">|</span> 소요 시간: 90분</p>
        </div>
        <a href="checkout.html?item=감정 아로마테라피" class="w-full sm:w-auto bg-kftaGreen hover:bg-green-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-lg text-lg text-center">
            지금 신청하기
        </a>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-900 text-gray-400 py-12 px-6 text-center">
        <p>&copy; 2026 Korea Fashion Therapy Association. All rights reserved.</p>
    </footer>
</body>
</html>
"@
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_aroma.html", $aromaContent, [System.Text.Encoding]::UTF8)
