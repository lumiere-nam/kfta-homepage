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
            <h1 class="text-4xl md:text-6xl font-serif font-bold mb-6 leading-tight">나만의 천연 화장품 DIY</h1>
            <p class="text-xl md:text-2xl font-light opacity-90 mb-8">당신의 피부 타입과 마인드 컬러에 맞춘<br>세상에 단 하나뿐인 건강한 스킨케어 레시피</p>
            <a href="#apply" class="inline-block bg-white text-[#29465B] hover:bg-gray-100 font-bold py-4 px-10 rounded-full transition-all text-lg shadow-xl">클래스 예약하기</a>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-30 bg-[url('assets/class_oneday_diy.jpg')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                수많은 화장품을 써봐도<br><strong>내 피부에 딱 맞는 제품</strong>을 찾지 못하셨나요?
            </h2>
            <div class="w-24 h-1 bg-[#29465B] mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                민감해진 피부, 화학 성분에 지친 현대인들에게 이제 피부 휴식이 필요합니다. 비싼 브랜드 화장품이 모두에게 정답은 아닙니다. 나에게 맞지 않는 성분을 과감히 덜어내고, 내 피부가 진짜로 원하는 영양만 쏙쏙 담아낼 수 있다면 어떨까요?<br><br>
                '나만의 천연 화장품 DIY' 클래스는 <strong>나의 피부 타입은 물론, 마인드 컬러(심리 상태)에 맞는 천연 원료와 아로마 에센셜 오일</strong>을 직접 배합하여 건강한 스킨케어 제품을 완성하는 힐링 체험 프로그램입니다.
            </p>
        </div>
    </section>

    <!-- Visual Divider -->
    <div class="w-full h-96 bg-[url('assets/class_oneday_diy.jpg')] bg-cover bg-center bg-fixed"></div>

    <!-- Details Section -->
    <section class="py-24 px-6 bg-kftaBeige/20 text-center border-y border-kftaBorder/50">
        <div class="max-w-4xl mx-auto space-y-8">
            <p class="text-kftaRed font-bold tracking-widest uppercase">Class Highlights</p>
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                내 손으로 직접 빚어내는<br><strong>깨끗하고 투명한 뷰티 레시피</strong>
            </h2>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                식물에서 추출한 천연 베이스와 보습/재생 효과가 탁월한 천연 원료들을 눈앞에서 직접 확인하고 배합합니다. 복잡하고 어려운 화학 기호 대신, 대자연이 선사하는 향기와 에너지를 느끼며 스트레스를 해소하는 시간을 가져보세요.<br><br>
                전문 강사의 꼼꼼한 지도 아래 진행되므로 초보자나 곰손이신 분들도 누구나 시판 화장품 부럽지 않은 최고급 퀄리티의 결과물을 만들어 가실 수 있습니다.
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
                            <h4 class="font-bold text-xl text-gray-800 mb-1">피부 & 마인드 진단</h4>
                            <p class="text-gray-600">현재 피부 고민(건조, 트러블, 미백 등)과 심리 상태를 체크하여 내게 필요한 성분과 향을 디자인합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">프리미엄 천연 스킨케어 2종 제작</h4>
                            <p class="text-gray-600">수분 진정 미스트(100ml)와 영양 보습 크림(50ml) 등 활용도 높은 데일리 스킨케어 2종 세트를 직접 제작하여 가져가십니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-[#29465B]/10 p-2 rounded-lg text-[#29465B]">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">나만의 브랜드 네이밍 & 패키징</h4>
                            <p class="text-gray-600">직접 만든 화장품 용기에 나만의 브랜드 이름이 적힌 라벨을 부착하고 예쁘게 포장하여 완성합니다. (선물용으로도 적극 추천!)</p>
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
            <p class="text-sm font-medium text-kftaRed">가격: 90,000원 <span class="text-gray-400 mx-2">|</span> 소요 시간: 90분</p>
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
