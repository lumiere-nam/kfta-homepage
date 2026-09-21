$template = [System.IO.File]::ReadAllText('cert_level1.html', [System.Text.Encoding]::UTF8)

$prefix = $template.Substring(0, $template.IndexOf('            <!-- Header Section -->'))
$suffix = $template.Substring($template.IndexOf('            <!-- Sticky Bottom Apply Action -->'))

function BuildCertPage {
    param(
        [string]$Filename,
        [string]$SubTitle,
        [string]$MainTitle,
        [string]$Quote,
        [string]$Description,
        [string[]]$Features,
        [string]$TableName,
        [object[]]$TableData,
        [string]$CertName,
        [string]$Duration,
        [string]$Price
    )

    $featureLis = ($Features | ForEach-Object { "<li>$_</li>" }) -join "`n                            "

    $tableRows = ($TableData | ForEach-Object { 
        "<tr class=""border-b border-gray-100 hover:bg-gray-50""><td class=""p-4 font-bold"">$($_.주차)</td><td class=""p-4"">$($_.요소)</td><td class=""p-4"">$($_.주제)</td></tr>"
    }) -join "`n"

    $content = @"
            <!-- Header Section -->
            <div class="bg-kftaGreen p-10 text-white">
                <p class="text-sm text-kftaBeige mb-2 font-semibold">KFTA 패션테라피 자격증</p>
                <h1 class="font-serif font-bold text-4xl lg:text-5xl mb-4">$MainTitle</h1>
                <p class="text-lg opacity-90">"$Quote"</p>
            </div>
            
            <div class="p-10 space-y-16">
                <!-- 기본 설명 -->
                <div>
                    <h3 class="text-xl font-bold text-kftaGreen mb-4 border-b-2 border-kftaGreen pb-2 inline-block">과정 소개</h3>
                    <p class="text-gray-600 leading-relaxed text-justify break-keep">$Description</p>
                </div>

                <!-- 특징 -->
                <div class="bg-gray-50 border border-gray-100 p-8 rounded-2xl shadow-sm">
                    <h4 class="font-bold text-xl text-kftaGreen mb-4">과정 특징</h4>
                    <ul class="text-gray-700 space-y-3 list-disc list-inside">
                        $featureLis
                    </ul>
                </div>

                <!-- Curriculum Table -->
                <div>
                    <h3 class="text-xl font-bold text-kftaGreen mb-6 border-b-2 border-kftaGreen pb-2 inline-block">$TableName 커리큘럼</h3>
                    <div class="overflow-x-auto">
                        <table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200 w-24">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">주제</th></tr></thead><tbody class="text-gray-600">
$tableRows
</tbody></table>
                    </div>
                </div>

                <!-- Summary Info Table -->
                <div>
                    <h3 class="text-xl font-bold text-kftaGreen mb-6 border-b-2 border-kftaGreen pb-2 inline-block">모집 개요</h3>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">자격증명</div><div class="w-2/3 p-4 bg-white flex items-center">$CertName</div></div>
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">모집 인원</div><div class="w-2/3 p-4 bg-white flex items-center">소수 정예 그룹</div></div>
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">교육 기간</div><div class="w-2/3 p-4 bg-white flex items-center">$Duration</div></div>
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">진행방식</div><div class="w-2/3 p-4 bg-white flex items-center">오프라인 클래스</div></div>
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">교육비</div><div class="w-2/3 p-4 bg-white flex items-center text-kftaRed font-bold">$Price <span class="text-xs text-gray-500 font-normal ml-2">(발급비 별도)</span></div></div>
                        <div class="flex border border-gray-200 rounded-lg overflow-hidden"><div class="w-1/3 bg-gray-100 p-4 font-bold text-gray-700 flex items-center justify-center text-center">모집 대상</div><div class="w-2/3 p-4 bg-white flex items-center">해당 과정 조건 충족자</div></div>
                    </div>
                </div>
            </div>
            
"@
    
    $fullSuffix = $suffix -replace 'Level 1 Foundation', $CertName
    $fullHtml = $prefix + $content + $fullSuffix

    [System.IO.File]::WriteAllText($Filename, $fullHtml, [System.Text.Encoding]::UTF8)
}

# L1
BuildCertPage -Filename "cert_level1.html" `
-SubTitle "패션테라피 레벨1 교재" `
-MainTitle "초급 실천가 과정 — 나는 누구인가" `
-Quote "옷장 속에 담긴 나의 이야기를 처음으로 꺼내보는 시간" `
-Description "레벨1의 주제는 '나는 누구인가'입니다. 기술적인 진단 없이, 패션·컬러·체형·얼굴·자세·헤어·메이크업이라는 7가지 요소를 통해 지금까지의 나를 스스로 관찰하고 정리합니다. 협회의 4축 분석 프레임워크(외적 표현·내면 심리·행동 표현·상황 맥락)로 이어지는 여정의 첫걸음이며, 콜라주·컬러카드·실루엣 그리기 등 감각적이고 투사적인 활동을 통해 '평가'가 아닌 '관찰'의 태도를 몸에 익히는 6주 과정입니다." `
-Features @(
    "사전 지식·경험이 전혀 없어도 시작할 수 있는 입문형 커리큘럼",
    "이미지분석 7요소(패션·컬러·체형·얼굴·자세·헤어·메이크업)를 6주에 걸쳐 균형 있게 경험",
    "협회 고유의 4축 분석 프레임워크 여정의 첫 단계",
    "콜라주·컬러카드·실루엣 그리기 등 감각적·투사적 도구를 활용한 체험 중심 수업",
    "타인이 아닌 '나 자신'을 대상으로 하는 자기 이해 중심 설계",
    "무드보드 제작과 스타일 선언문 발표로 완성되는 수료 프로젝트",
    "수료 후 레벨2 프랙티셔너로 이어지는 명확한 성장 경로 제시"
) `
-TableName "레벨1" `
-TableData @(
    @{주차="1주";요소="패션 (+오리엔테이션)";주제="나를 그려보다"},
    @{주차="2주";요소="컬러";주제="색과 감정의 연결을 발견하다"},
    @{주차="3주";요소="체형";주제="인식속의 나와 실제의 나를 마주하다"},
    @{주차="4주";요소="얼굴";주제="얼굴과 소품의 관계를 탐색하다"},
    @{주차="5주";요소="자세";주제="거울 속 나의 태도를 관찰하다"},
    @{주차="6주";요소="헤어·메이크업";주제="나만의 고유한 매력을 탐구하다"}
) `
-CertName "레벨1 (초급 실천가)" -Duration "6주·12시간" -Price "1,500,000원"

# L2
BuildCertPage -Filename "cert_level2.html" `
-SubTitle "패션테라피 레벨2 교재" `
-MainTitle "프랙티셔너 과정 — 진단과 스타일링" `
-Quote "감각으로 스쳐 지나간 것들을 협회 고유의 진단체계로 정식으로 다루는 시간" `
-Description "레벨2 프랙티셔너는 레벨1에서 감각으로만 스쳐 지나간 이미지분석 요소 — 컬러·체형·얼굴·헤어·메이크업 — 을 협회 고유의 객관적 진단체계로 정식으로 다루고, 그 진단 결과를 실제 스타일링으로 완성하는 실무 중심 과정입니다. 8주 동안 심리상담학·미술치료학적 접근을 결합한 '4축 진단'으로 퍼스널컬러 진단을 포함한 진단법을 익히고, 사람마다 다른 콤플렉스를 메이크업으로 살펴보는 법과, 진단 결과를 실제 옷차림·코디네이션으로 연결하는 협회 스타일링 기법을 배웁니다. 실제 고객을 대상으로 한 컨설팅 실습과 분석 리포트 작성은 심화 상담 역량을 다루는 레벨3에서 이어집니다." `
-Features @(
    "협회 고유 객관적 진단체계 '4축 진단' 최초 공개",
    "퍼스널컬러 진단(웜톤·쿨톤, 봄·여름·가을·겨울 시즌 컬러)을 포함한 컬러 진단",
    "레벨1에서 감각적으로 경험한 체형·얼굴 요소를 기술적으로 진단",
    "헤어·메이크업은 한 주로 통합 — 메이크업 중심으로, 헤어는 인상에 미치는 영향 위주로 가볍게 다룸",
    "사람마다 다른 콤플렉스(다크서클·넓은 콧볼·처진 눈매 등)를 사례별로 살펴보는 메이크업 코칭",
    "진단 결과를 실제 옷차림으로 완성하는 협회 스타일링 기법 학습",
    "개인 룩북(포트폴리오) 제작으로 완성하는 스타일링 실습"
) `
-TableName "레벨2" `
-TableData @(
    @{주차="1주";요소="오리엔테이션";주제="4축 진단, 전체 지도를 만나다"},
    @{주차="2주";요소="컬러";주제="퍼스널컬러, 색채 선택 속 심리를 읽다"},
    @{주차="3주";요소="체형";주제="인식과 실제를 정식으로 비교 진단하다"},
    @{주차="4주";요소="얼굴";주제="얼굴형과 인상의 관계를 정밀 분석하다"},
    @{주차="5주";요소="헤어·메이크업(통합)";주제="콤플렉스를 메이크업으로 살펴보다"},
    @{주차="6주";요소="스타일링Ⅰ";주제="진단을 스타일링으로 연결하다"},
    @{주차="7주";요소="스타일링Ⅱ&포트폴리오";주제="나만의 스타일링을 완성하다"},
    @{주차="8주";요소="종합&수료";주제="레벨2 과정을 완성하다"}
) `
-CertName "레벨2 (프랙티셔너)" -Duration "8주·20시간" -Price "2,000,000원"

# L3
BuildCertPage -Filename "cert_level3.html" `
-SubTitle "패션테라피 레벨3 교재" `
-MainTitle "마스터 프랙티셔너 과정 — 4축 통합과 상담 역량" `
-Quote "레벨1·레벨2 전 과정을 마스터 레벨로 심화하고 총괄하는 시간" `
-Description "레벨3 마스터 프랙티셔너는 레벨1·레벨2에서 배운 진단·스타일링 전체를 마스터 레벨로 심화하고 총괄하며, 협회의 4축 분석 프레임워크 — 외적·내면심리·행동표현·상황맥락 — 로 한 사람을 통합적으로 읽는 마스터클래스 과정입니다. 8주 동안 먼저 레벨2에서 함께 다뤘던 컬러와 체형 진단을 각각 별도 주차로 나누어 16타입 컬러 세분화와 예외 체형 케이스까지 깊이 파고들고, 얼굴·헤어·메이크업 통합 진단과 패션 이미지·스타일링을 마스터 레벨 코디네이션으로 확장하는 주차까지 거친 뒤, 취향침식·취향동결·복식사회화·역할복 등 협회 고유 개념과 상담 윤리를 함께 학습합니다. 모의 고객 컨설팅과 분석 리포트 작성까지 포함하는 만큼, 레벨1·레벨2 전 과정을 총괄할 수 있는 협회 자격체계의 유일한 등급입니다." `
-Features @(
    "레벨1·레벨2에서 배운 진단·스타일링 전체를 마스터 레벨로 심화하고 총괄하는 유일한 과정",
    "퍼스널컬러 진단을 16타입 세분화 수준으로 심화, 웜/쿨 경계 사례까지 판별",
    "비대칭 체형 등 표준 진단을 벗어나는 예외 케이스를 심층 분석",
    "레벨2에서 가볍게 다룬 헤어를 얼굴형과 통합해 전문 영역으로 보완",
    "패션 이미지·스타일링을 마스터 레벨 코디네이션으로 확장",
    "협회 4축 분석 프레임워크를 실제 사례로 통합 학습",
    "취향침식·취향동결·복식사회화·역할복 등 협회 고유 개념과 상담 윤리를 집중 학습",
    "모의 컨설팅과 상담 사례 7선 기반 케이스 스터디로 마무리"
) `
-TableName "레벨3" `
-TableData @(
    @{주차="1주";요소="오리엔테이션 & 총괄 마스터클래스";주제="4축 프레임워크로 재구조화하다"},
    @{주차="2주";요소="심화 컬러 마스터클래스";주제="퍼스널컬러를 16타입으로 세분화하다"},
    @{주차="3주";요소="심화 체형 마스터클래스";주제="체형 진단의 예외 케이스를 분석하다"},
    @{주차="4주";요소="심화 얼굴·헤어·메이크업 마스터클래스";주제="헤어를 통합하고 메이크업을 이론으로 재해석하다"},
    @{주차="5주";요소="패션 이미지 & 스타일링 마스터클래스";주제="스타일링을 고급 코디네이션 이론으로 확장하다"},
    @{주차="6주";요소="협회 고유 개념 & 상담 윤리";주제="고유 개념과 상담 윤리를 통합 분석하다"},
    @{주차="7주";요소="상담 질문 설계 & 모의 컨설팅";주제="질문 설계로 컨설팅 프로세스를 구조화하다"},
    @{주차="8주";요소="케이스 스터디 & 상담 시연";주제="사례를 통합 분석해 상담으로 시연하다"}
) `
-CertName "레벨3 (마스터 프랙티셔너)" -Duration "8주·24시간" -Price "2,500,000원"

# Trainer
BuildCertPage -Filename "cert_trainer.html" `
-SubTitle "패션테라피 강사(트레이너) 교재" `
-MainTitle "교육자 과정 — 전문가 역량과 교수법" `
-Quote "4축 통합의 눈을 다른 사람에게 전하는 언어로 옮기는 시간" `
-Description "강사(트레이너)는 레벨3에서 완성한 4축 통합 역량을 개인 상담을 넘어 조직·기업 단위로 확장하고, 이를 다른 사람에게 가르치는 교수 역량을 갖추는 과정입니다. 5주 동안 성인학습 이론에 기반한 강의 설계법과 레벨1·레벨2 커리큘럼을 직접 가르치는 교수법을 심화하고, 조직·기업 상황에 4축을 적용하는 심화 프로그램과 상담 사례 수퍼비전 기법까지 함께 익힙니다. 협회를 대표해 교육하고 상담하는 자격인 만큼, 윤리 서약을 통해 책임 있는 교육자·상담자로서의 기준을 함께 갖춥니다." `
-Features @(
    "4축 분석 프레임워크를 조직·기업 단위로 확장 적용하는 심화 역량 습득",
    "성인학습 이론에 기반한 강의 설계와 레벨1·레벨2 교수법 심화 훈련",
    "조직·기업 상황에 4축을 적용하는 심화 프로그램(드레스코드·조직문화·태도·TPO) 실전 훈련",
    "모의 강의와 동료 피드백을 통한 실전 교수 역량 강화",
    "상담 사례 수퍼비전 기법과 위기 상황 대응 심화 학습",
    "협회 윤리 서약을 통한 책임 있는 교육자·상담자 기준 확립",
    "수료 후 마스터트레이너 승급 조건 안내로 이어지는 성장 경로 제시"
) `
-TableName "강사(트레이너)" `
-TableData @(
    @{주차="1주";요소="교육자의 책임과 전문 윤리";주제="교육자·상담자로서의 기준을 세우다"},
    @{주차="2주";요소="4축 프레임워크 심화 적용";주제="4축을 조직·기업 상황에 적용하다"},
    @{주차="3주";요소="레벨1 교수법 실습";주제="레벨1을 가르치는 법을 심화하다"},
    @{주차="4주";요소="레벨2 교수법 실습";주제="4축 진단을 가르치는 법을 심화하다"},
    @{주차="5주";요소="사례 수퍼비전 & 수료";주제="수퍼비전으로 전문성을 완성하다"}
) `
-CertName "강사(트레이너)" -Duration "5주·15시간" -Price "안내 예정"

# Master Trainer
BuildCertPage -Filename "cert_master.html" `
-SubTitle "패션테라피 마스터트레이너 교재" `
-MainTitle "교육 리더십 과정 — 인증 교육원 설립·운영" `
-Quote "협회의 교육 철학을 온전히 전수받아 다음 세대에게 열어주는 시간" `
-Description "마스터트레이너는 협회 자격체계의 최상위 등급으로, 강사(트레이너)로서 쌓은 심화된 4축 역량과 교육 경험을 바탕으로 협회 인증 교육원을 설립·운영할 수 있는 교육 리더십 과정입니다. 4주 동안 협회의 교육 철학과 표준 커리큘럼을 온전히 전수하는 법, 교육원 운영과 수강생 관리, 교육 품질을 지속적으로 관리하는 슈퍼비전 체계를 집중적으로 학습하며, 수료 후에는 협회를 대표해 레벨1·레벨2 과정을 가르치는 인증 교육원을 열 수 있습니다." `
-Features @(
    "협회 자격체계 최상위 등급 — 협회 인증 교육원 설립·운영 자격 부여",
    "협회의 교육 철학과 표준 커리큘럼을 온전히 전수받는 교육자 양성 과정",
    "교육원 운영 기준(운영 협약, 품질관리 분담금, 협회 명칭·교재 사용 기준) 학습",
    "표준 커리큘럼·교구 공급 체계 전수",
    "교육원 운영·상담·수강생 관리 노하우 특별교육",
    "정기 슈퍼비전을 통한 교육 품질 관리 체계 학습",
    "강사(트레이너) 취득 후 1년 이상 활동 + 수료생 15명 이상 배출자만 도전 가능한 엄격한 자격 요건"
) `
-TableName "마스터트레이너" `
-TableData @(
    @{주차="1주";요소="인증 교육원 운영 기준";주제="교육원 운영의 기준을 확인하다"},
    @{주차="2주";요소="표준 커리큘럼 전수";주제="레벨1·레벨2 교육 노하우를 전수받다"},
    @{주차="3주";요소="교육원 운영·상담·수강생 관리";주제="교육원 운영의 실무를 익히다"},
    @{주차="4주";요소="품질관리 & 교육 철학 확장";주제="교육원 개원을 준비하고 완성하다"}
) `
-CertName "마스터트레이너" -Duration "4주·16시간" -Price "안내 예정"
