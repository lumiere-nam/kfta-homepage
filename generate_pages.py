import re

with open('cert_level1.html', 'r', encoding='utf-8') as f:
    html = f.read()

header = html.split('<main')[0]
footer = '</main>' + html.split('</main>')[1]

def make_page(filename, title, subtitle, content):
    main_section = f'''<main class="bg-kftaLight py-12 px-6 relative font-sans text-gray-800">
    <div class="max-w-5xl mx-auto bg-white shadow-2xl rounded-3xl overflow-hidden border border-gray-200">
        <div class="bg-kftaGreen p-10 text-white">
            <p class="text-sm text-kftaBeige mb-2 font-semibold">KFTA Academy</p>
            <h1 class="font-serif font-bold text-4xl lg:text-5xl mb-4">{title}</h1>
            <p class="text-lg opacity-90">{subtitle}</p>
        </div>
        <div class="p-10 space-y-16">
            {content}
        </div>
    </div>
'''
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(header + main_section + footer)

# 1. ONE DAY CLASS
oneday_content = '''
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
        <img src="assets/class_mom_profile.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">엄마프사 프로젝트</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널컬러 & 셀프화보 (400,000원 / 120분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">단순한 사진 촬영을 넘어, 나에게 가장 잘 어울리는 색을 찾고 우아한 현재의 모습을 기록하는 하이엔드 메이크오버 프로그램입니다. 전문가의 스타일링과 함께 잃어버린 자존감을 되찾으세요.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>정밀 퍼스널 컬러 진단</li>
                <li>개인 맞춤형 헤어/메이크업 터치업</li>
                <li>하이엔드 프로필 화보 촬영 (원본 및 보정본 제공)</li>
            </ul>
        </div>
    </div>
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
        <img src="https://images.unsplash.com/photo-1558769132-cb1aea458c5e?auto=format&fit=crop&w=600&q=80" class="rounded-2xl w-full h-80 object-cover shadow-lg lg:order-2">
        <div class="lg:order-1">
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">옷장 다이어트</h3>
            <p class="text-kftaRed font-bold mb-4">내면의 여백 만들기 (400,000원 / 120분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">입지 않는 옷을 비워내는 것은 마음의 여백을 만드는 과정입니다. 전문가와 함께 옷장을 정리하며 과거에 얽매인 감정을 비우고, 나다운 스타일만 남기는 성찰의 시간을 가집니다.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>방문 옷장 분석 및 비워내기 코칭</li>
                <li>감정적 애착이 남은 옷 보내주기 의식</li>
                <li>나다운 캡슐 옷장 기획</li>
            </ul>
        </div>
    </div>
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 border-b pb-10">
        <img src="assets/class_signature_scent.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">나만의 시그니처 무드향</h3>
            <p class="text-kftaRed font-bold mb-4">후각적 테라피 (400,000원 / 120분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">시각적 스타일링에 더해 나만의 무드를 완성하는 후각적 테라피. 천연 에센셜 오일을 사용하여 그날의 감정과 TPO에 맞는 힐링 향수를 직접 조향해보는 원데이 클래스입니다.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>개인 감정 및 무드 분석</li>
                <li>천연 에센셜 오일 시향 및 블렌딩</li>
                <li>나만의 시그니처 힐링 향수 제작 (50ml)</li>
            </ul>
        </div>
    </div>
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
        <img src="assets/class_4050_beauty.jpg" class="rounded-2xl w-full h-80 object-cover shadow-lg lg:order-2">
        <div class="lg:order-1">
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">4050 뷰티큐레이션</h3>
            <p class="text-kftaRed font-bold mb-4">나이듦의 긍정 (400,000원 / 120분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">변화하는 4050 세대의 신체적 특징을 있는 그대로 긍정하며, 장점을 극대화하는 맞춤 체형 스타일링과 고급스러운 메이크업 노하우를 배우는 실속형 뷰티 클래스입니다.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>체형 및 피부톤 진단</li>
                <li>단점 커버가 아닌 장점 극대화 메이크업 실습</li>
                <li>4050 라이프스타일 맞춤 룩북 제안</li>
            </ul>
        </div>
    </div>
'''
make_page('academy_oneday.html', 'One Day Class', '하루 만에 만나는 확실한 변화, 패션테라피 원데이 클래스', oneday_content)

# 2. KIDS
kids_content = '''
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
        <img src="assets/class_kids.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">서로를 비추는 거울</h3>
            <p class="text-kftaRed font-bold mb-4">가족 스타일링 테라피 (60분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">부모와 아이가 서로의 장점을 발견하고 칭찬하며 긍정적인 관계를 형성하는 프로그램입니다. 패션이라는 매개체를 통해 서로를 이해하고 소통하는 방법을 배웁니다.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>아이의 눈높이에 맞춘 색채 심리 놀이</li>
                <li>부모와 아이가 서로에게 옷 골라주기 미션</li>
                <li>긍정의 언어로 서로의 장점 표현하기</li>
            </ul>
        </div>
    </div>
'''
make_page('academy_kids.html', 'Kids & Family', '아이와 함께하는 따뜻한 교감, 패션테라피 가족 클래스', kids_content)

# 3. WEEKLY
weekly_content = '''
    <div class="text-gray-600 leading-relaxed mb-10 text-center max-w-3xl mx-auto">
        <p>매주 진행되는 심도 있는 패션 매체론. 패션의 각 요소를 깊이 있게 파헤치며 숨겨진 심리적 의미를 탐구합니다.</p>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[1화] 사람 읽는 법_비언어적 소통 (90분)</h3><p class="text-sm text-gray-600">옷차림, 표정, 제스처를 통해 상대방의 심리와 성향을 읽어내는 기초를 다집니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[2화] 매체론_스카프 (90분)</h3><p class="text-sm text-gray-600">스카프가 가지는 포용과 부드러움의 심리적 효과를 이해하고 활용법을 배웁니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[3화] 매체론_벨트 (90분)</h3><p class="text-sm text-gray-600">중심을 잡고 단절과 연결을 의미하는 벨트의 상징성에 대해 심도 있게 논의합니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[4화] 매체론_안경 (90분)</h3><p class="text-sm text-gray-600">세상을 바라보는 창이자 나를 드러내는 방패인 안경의 심리학을 다룹니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[5화] 매체론_가방 (90분)</h3><p class="text-sm text-gray-600">나의 비밀을 담는 공간이자 책임감의 무게를 상징하는 가방에 대해 알아봅니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[6화] 매체론_신발 (90분)</h3><p class="text-sm text-gray-600">나를 어디로든 데려가는 신발. 자존감과 삶의 방향성을 상징하는 신발을 분석합니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[7화] 매체론_향수 (90분)</h3><p class="text-sm text-gray-600">보이지 않지만 가장 강렬하게 기억되는 후각적 스타일링의 힘을 이해합니다.</p></div>
        <div class="border p-6 rounded-2xl bg-gray-50"><h3 class="font-bold text-lg text-kftaGreen mb-2">[8화] 매체론_프레임워크 완성 (90분)</h3><p class="text-sm text-gray-600">지금까지 배운 모든 매체론을 종합하여 나만의 패션테라피 프레임워크를 완성합니다.</p></div>
    </div>
'''
make_page('academy_weekly.html', 'Weekly Talks', '일상의 아이템에 담긴 내면의 언어를 읽는 시간', weekly_content)

# 4. K-POP
kpop_content = '''
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
        <img src="assets/class_kpop.png" class="rounded-2xl w-full h-80 object-cover shadow-lg">
        <div>
            <h3 class="text-2xl font-bold text-kftaGreen mb-2">Fashion in K-POP</h3>
            <p class="text-kftaRed font-bold mb-4">퍼스널 이미지 메이킹 (120분)</p>
            <p class="text-gray-600 leading-relaxed mb-4">K-POP 아이돌의 콘셉트 기획 및 스타일링 방법론을 적용하여 나만의 독보적인 이미지를 메이킹하는 특별 클래스입니다. 트렌디하면서도 나에게 딱 맞는 스타일을 찾아냅니다.</p>
            <ul class="list-disc list-inside text-sm text-gray-600 mb-6">
                <li>K-POP 아이돌 스타일링의 비밀 분석</li>
                <li>나의 캐릭터(콘셉트) 기획하기</li>
                <li>무대의상처럼 돋보이는 데일리룩 스타일링 실습</li>
            </ul>
        </div>
    </div>
'''
make_page('academy_kpop.html', 'Fashion in K-POP', '나를 하나의 브랜드이자 무대 위의 주인공으로 메이킹하기', kpop_content)
