$c = Get-Content academy_vod_detail.html -Raw -Encoding UTF8
$oldHTML = @"
    <!-- Hero Section -->
    <section class="relative bg-kftaGreen text-white py-28 px-6 overflow-hidden text-center">
        <div class="relative z-10 max-w-4xl mx-auto">
            <p class="text-kftaBeige font-bold tracking-widest mb-4 uppercase">Online VOD Class</p>
            <h1 id="hero-title" class="text-3xl md:text-5xl font-serif font-bold mb-6 leading-tight">패션테라피 VOD 클래스</h1>
            <p class="text-lg md:text-xl font-light opacity-90 mb-8">나만의 고유한 에너지 컬러를 찾아 내면의 상처를 치유하고<br>진정한 '나다움'을 완성하는 패션테라피의 비밀</p>
        </div>
        <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-[url('assets/class_personal_branding.png')] bg-cover bg-center mix-blend-overlay"></div>
    </section>

    <!-- Empathy / Pain Point Section -->
    <section class="py-24 px-6 bg-white text-center">
        <div class="max-w-3xl mx-auto space-y-8">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-800 leading-snug">
                누구나 태어날 때부터 가지고 있는<br><strong>고유한 에너지 색깔</strong>이 있습니다.
            </h2>
            <div class="w-24 h-1 bg-kftaGreen mx-auto rounded-full"></div>
            <p class="text-lg text-gray-600 leading-relaxed text-left">
                기존의 인적성 검사나 단순한 뷰티 컨설팅만으로는 왜 채워지지 않는 공허함이 있었을까요? 그것은 바로 변하지 않는 나의 '타고난 경향성(Energy)'을 옷이라는 언어로 번역하지 못했기 때문입니다.<br><br>
                본 VOD 클래스는 Color Personality Analysis(CPA)의 핵심 원리를 패션에 접목하여, 내가 가진 본연의 빛깔을 발견하고 타인과의 관계를 부드럽게 개선하며, 스스로의 가치를 극대화하는 <strong>실전 패션 심리 치유법</strong>을 밀도 있게 담아냈습니다.
            </p>
        </div>
    </section>

    <!-- Visual Divider -->
    <div class="w-full h-80 bg-[url('assets/class_color_palette_new.jpg')] bg-cover bg-center bg-fixed"></div>

    <!-- Details Section -->
    <section class="py-24 px-6 bg-kftaBeige/30 text-center border-y border-kftaBorder/50">
        <div class="max-w-5xl mx-auto space-y-12">
            <p class="text-kftaRed font-bold tracking-widest uppercase">Target Audience</p>
            <h2 class="text-3xl font-bold text-gray-800">이런 분들께 강력히 추천합니다</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm">
                    <div class="text-4xl mb-4">🔍</div>
                    <h3 class="font-bold text-xl text-gray-800 mb-3">나를 깊이 이해하고 싶은 분</h3>
                    <p class="text-gray-600 text-sm">타인의 시선에 맞춘 옷이 아닌, 내 고유의 에너지를 돋보이게 하는 스타일을 찾고 싶은 분</p>
                </div>
                <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm">
                    <div class="text-4xl mb-4">🤝</div>
                    <h3 class="font-bold text-xl text-gray-800 mb-3">인간관계 개선이 필요한 분</h3>
                    <p class="text-gray-600 text-sm">상대방의 에너지 컬러를 이해하고 소통의 갈등을 유연하게 해결하고 싶은 분</p>
                </div>
                <div class="bg-white p-8 rounded-3xl border border-gray-100 shadow-sm">
                    <div class="text-4xl mb-4">✨</div>
                    <h3 class="font-bold text-xl text-gray-800 mb-3">내면의 힐링이 필요한 분</h3>
                    <p class="text-gray-600 text-sm">옷장 속 부정적인 감정을 비워내고, 패션을 통해 매일 자존감을 충전하고 싶은 분</p>
                </div>
            </div>
        </div>
    </section>
"@

$newHTML = @"
    <main class="bg-kftaLight py-12 px-6 relative font-sans text-gray-800">
        <div class="max-w-5xl mx-auto bg-white shadow-2xl rounded-3xl overflow-hidden border border-gray-200">
            <!-- Boxed Header -->
            <div class="bg-kftaGreen p-10 text-white relative">
                <p class="text-sm text-kftaBeige mb-2 font-semibold tracking-widest uppercase relative z-10">Online VOD Class</p>
                <h1 id="hero-title" class="font-serif font-bold text-4xl lg:text-5xl mb-4 relative z-10">패션테라피 VOD 클래스</h1>
                <p class="text-lg opacity-90 relative z-10">나만의 고유한 에너지 컬러를 찾아 내면의 상처를 치유하고<br>진정한 '나다움'을 완성하는 패션테라피의 비밀</p>
                <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-[url('assets/class_personal_branding.png')] bg-cover bg-center mix-blend-overlay z-0"></div>
            </div>
            
            <!-- Content -->
            <div class="p-10 space-y-16">
                <!-- Empathy / Pain Point Section -->
                <div class="text-center space-y-8">
                    <h2 class="text-2xl md:text-3xl font-bold text-gray-800 leading-snug">
                        누구나 태어날 때부터 가지고 있는<br><strong>고유한 에너지 색깔</strong>이 있습니다.
                    </h2>
                    <div class="w-16 h-1 bg-kftaGreen mx-auto rounded-full"></div>
                    <p class="text-base text-gray-600 leading-relaxed text-justify max-w-3xl mx-auto">
                        기존의 인적성 검사나 단순한 뷰티 컨설팅만으로는 왜 채워지지 않는 공허함이 있었을까요? 그것은 바로 변하지 않는 나의 '타고난 경향성(Energy)'을 옷이라는 언어로 번역하지 못했기 때문입니다.<br><br>
                        본 VOD 클래스는 Color Personality Analysis(CPA)의 핵심 원리를 패션에 접목하여, 내가 가진 본연의 빛깔을 발견하고 타인과의 관계를 부드럽게 개선하며, 스스로의 가치를 극대화하는 <strong>실전 패션 심리 치유법</strong>을 밀도 있게 담아냈습니다.
                    </p>
                </div>

                <!-- Visual Divider -->
                <div class="w-full h-80 rounded-2xl bg-[url('assets/class_color_gradient.png')] bg-cover bg-center shadow-inner"></div>

                <!-- Details Section -->
                <div class="text-center space-y-8 bg-kftaBeige/30 p-10 rounded-2xl border border-kftaBorder/50">
                    <p class="text-kftaRed font-bold tracking-widest uppercase text-sm">Target Audience</p>
                    <h2 class="text-2xl font-bold text-gray-800">이런 분들께 강력히 추천합니다</h2>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <div class="bg-white p-6 rounded-2xl border border-gray-100 shadow-sm">
                            <div class="text-3xl mb-3">🔍</div>
                            <h3 class="font-bold text-lg text-gray-800 mb-2">나를 깊이 이해하고 싶은 분</h3>
                            <p class="text-gray-600 text-sm leading-relaxed">타인의 시선에 맞춘 옷이 아닌, 내 고유의 에너지를 돋보이게 하는 스타일을 찾고 싶은 분</p>
                        </div>
                        <div class="bg-white p-6 rounded-2xl border border-gray-100 shadow-sm">
                            <div class="text-3xl mb-3">🤝</div>
                            <h3 class="font-bold text-lg text-gray-800 mb-2">인간관계 개선이 필요한 분</h3>
                            <p class="text-gray-600 text-sm leading-relaxed">상대방의 에너지 컬러를 이해하고 소통의 갈등을 유연하게 해결하고 싶은 분</p>
                        </div>
                        <div class="bg-white p-6 rounded-2xl border border-gray-100 shadow-sm">
                            <div class="text-3xl mb-3">✨</div>
                            <h3 class="font-bold text-lg text-gray-800 mb-2">내면의 힐링이 필요한 분</h3>
                            <p class="text-gray-600 text-sm leading-relaxed">옷장 속 부정적인 감정을 비워내고, 패션을 통해 매일 자존감을 충전하고 싶은 분</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
"@
$c = $c.Replace($oldHTML, $newHTML)
Set-Content academy_vod_detail.html $c -Encoding UTF8
