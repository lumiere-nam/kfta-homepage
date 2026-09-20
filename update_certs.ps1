function Replace-HtmlContent {
    param([string]$path, [string]$desc, [string]$tableHtml)
    $html = Get-Content $path -Raw -Encoding UTF8
    $html = $html -replace '(?s)<p class="text-xl text-gray-700 leading-relaxed mb-10">.*?</p>', ("<p class=`"text-xl text-gray-700 leading-relaxed mb-10`">" + $desc + "</p>")
    $html = $html -replace '(?s)<table class="w-full text-left border-collapse">.*?</table>', $tableHtml
    Set-Content $path -Value $html -Encoding UTF8
}
$t1 = @"
<table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">한줄 소개</th></tr></thead><tbody class="text-gray-600">
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">1주</td><td class="p-4">패션 (+오리엔테이션)</td><td class="p-4">나를 그려보다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">2주</td><td class="p-4">컬러</td><td class="p-4">색과 감정의 연결을 발견하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">3주</td><td class="p-4">체형</td><td class="p-4">인식속의 나와 실제의 나를 마주하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">4주</td><td class="p-4">얼굴</td><td class="p-4">얼굴과 소품의 관계를 탐색하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">5주</td><td class="p-4">자세</td><td class="p-4">거울 속 나의 태도를 관찰하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">6주</td><td class="p-4">헤어·메이크업</td><td class="p-4">나만의 고유한 매력을 탐구하다</td></tr>
</tbody></table>
"@
Replace-HtmlContent -path "cert_level1.html" -desc "레벨1의 주제는 '나는 누구인가'입니다.<br>기술적인 진단 없이, 패션·컬러·체형·얼굴·자세·헤어·메이크업이라는 7가지 요소를 통해 지금까지의 나를 스스로 관찰하고 정리합니다. 협회의 4축 분석 프레임워크(외적 표현·내면 심리·행동 표현·상황 맥락)로 이어지는 여정의 첫걸음이며, 콜라주·컬러카드·실루엣 그리기 등 감각적이고 투사적인 활동을 통해 '평가'가 아닌 '관찰'의 태도를 몸에 익히는 6주 과정입니다." -tableHtml $t1
$t2 = @"
<table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">한줄 소개</th></tr></thead><tbody class="text-gray-600">
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">1주</td><td class="p-4">오리엔테이션</td><td class="p-4">4축 진단, 전체 지도를 만나다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">2주</td><td class="p-4">컬러</td><td class="p-4">퍼스널컬러, 색채 선택 속 심리를 읽다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">3주</td><td class="p-4">체형</td><td class="p-4">인식과 실제를 정식으로 비교 진단하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">4주</td><td class="p-4">얼굴</td><td class="p-4">얼굴형과 인상의 관계를 정밀 분석하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">5주</td><td class="p-4">헤어·메이크업(통합)</td><td class="p-4">콤플렉스를 메이크업으로 살펴보다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">6주</td><td class="p-4">스타일링Ⅰ</td><td class="p-4">진단을 스타일링으로 연결하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">7주</td><td class="p-4">스타일링Ⅱ&포트폴리오</td><td class="p-4">나만의 스타일링을 완성하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">8주</td><td class="p-4">종합&수료</td><td class="p-4">레벨2 과정을 완성하다</td></tr>
</tbody></table>
"@
Replace-HtmlContent -path "cert_level2.html" -desc "레벨2 프랙티셔너는 레벨1에서 감각으로만 스쳐 지나간 이미지분석 요소 ? 컬러·체형·얼굴·헤어·메이크업 ? 을 협회 고유의 객관적 진단체계로 정식으로 다루고, 그 진단 결과를 실제 스타일링으로 완성하는 실무 중심 과정입니다.<br>8주 동안 심리상담학·미술치료학적 접근을 결합한 '4축 진단'으로 퍼스널컬러 진단을 포함한 진단법을 익히고, 사람마다 다른 콤플렉스를 메이크업으로 살펴보는 법과, 진단 결과를 실제 옷차림·코디네이션으로 연결하는 협회 스타일링 기법을 배웁니다." -tableHtml $t2
$t3 = @"
<table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">한줄 소개</th></tr></thead><tbody class="text-gray-600">
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">1주</td><td class="p-4">오리엔테이션 & 총괄 마스터클래스</td><td class="p-4">4축 프레임워크로 재구조화하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">2주</td><td class="p-4">심화 컬러 마스터클래스</td><td class="p-4">퍼스널컬러를 16타입으로 세분화하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">3주</td><td class="p-4">심화 체형 마스터클래스</td><td class="p-4">체형 진단의 예외 케이스를 분석하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">4주</td><td class="p-4">심화 얼굴·헤어·메이크업</td><td class="p-4">헤어를 통합하고 메이크업을 이론으로 재해석하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">5주</td><td class="p-4">패션 이미지 & 스타일링 마스터클래스</td><td class="p-4">스타일링을 고급 코디네이션 이론으로 확장하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">6주</td><td class="p-4">협회 고유 개념 & 상담 윤리</td><td class="p-4">고유 개념과 상담 윤리를 통합 분석하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">7주</td><td class="p-4">상담 질문 설계 & 모의 컨설팅</td><td class="p-4">질문 설계로 컨설팅 프로세스를 구조화하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">8주</td><td class="p-4">케이스 스터디 & 상담 시연</td><td class="p-4">사례를 통합 분석해 상담으로 시연하다</td></tr>
</tbody></table>
"@
Replace-HtmlContent -path "cert_level3.html" -desc "레벨3 마스터 프랙티셔너는 레벨1·레벨2에서 배운 진단·스타일링 전체를 마스터 레벨로 심화하고 총괄하며, 협회의 4축 분석 프레임워크(외적·내면심리·행동표현·상황맥락)로 한 사람을 통합적으로 읽는 마스터클래스 과정입니다.<br>8주 동안 16타입 컬러 세분화, 예외 체형 케이스 분석, 얼굴·헤어·메이크업 통합 진단, 마스터 레벨 코디네이션을 거쳐 취향침식·복식사회화 등 협회 고유 개념과 상담 윤리를 학습합니다. 모의 고객 컨설팅과 분석 리포트 작성을 포함하는 협회 자격체계의 유일한 최고등급입니다." -tableHtml $t3
$t4 = @"
<table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">한줄 소개</th></tr></thead><tbody class="text-gray-600">
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">1주</td><td class="p-4">교육자의 책임과 전문 윤리</td><td class="p-4">교육자·상담자로서의 기준을 세우다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">2주</td><td class="p-4">4축 프레임워크 심화 적용</td><td class="p-4">4축을 조직·기업 상황에 적용하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">3주</td><td class="p-4">레벨1 교수법 실습</td><td class="p-4">레벨1을 가르치는 법을 심화하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">4주</td><td class="p-4">레벨2 교수법 실습</td><td class="p-4">4축 진단을 가르치는 법을 심화하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">5주</td><td class="p-4">사례 수퍼비전 & 수료</td><td class="p-4">수퍼비전으로 전문성을 완성하다</td></tr>
</tbody></table>
"@
Replace-HtmlContent -path "cert_trainer.html" -desc "강사(트레이너) 과정은 레벨3에서 완성한 4축 통합 역량을 개인 상담을 넘어 조직·기업 단위로 확장하고, 이를 다른 사람에게 가르치는 교수 역량을 갖추는 과정입니다.<br>5주 동안 성인학습 이론에 기반한 강의 설계법과 레벨1·레벨2 커리큘럼 직접 교수법을 훈련하며, 조직·기업 상황(드레스코드·조직문화·태도·TPO)에 4축을 적용하는 심화 프로그램과 상담 사례 수퍼비전 기법을 익힙니다. 윤리 서약을 통해 책임 있는 교육자의 기준을 세웁니다." -tableHtml $t4
$t5 = @"
<table class="w-full text-left border-collapse"><thead><tr class="bg-gray-100 text-gray-700"><th class="p-4 border-b border-gray-200">주차</th><th class="p-4 border-b border-gray-200">요소</th><th class="p-4 border-b border-gray-200">한줄 소개</th></tr></thead><tbody class="text-gray-600">
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">1주</td><td class="p-4">인증 교육원 운영 기준</td><td class="p-4">교육원 운영의 기준을 확인하다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">2주</td><td class="p-4">표준 커리큘럼 전수</td><td class="p-4">레벨1·레벨2 교육 노하우를 전수받다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">3주</td><td class="p-4">교육원 운영·상담·수강생 관리</td><td class="p-4">교육원 운영의 실무를 익히다</td></tr>
<tr class="border-b border-gray-100 hover:bg-gray-50"><td class="p-4 font-bold">4주</td><td class="p-4">품질관리 & 교육 철학 확장</td><td class="p-4">교육원 개원을 준비하고 완성하다</td></tr>
</tbody></table>
"@
Replace-HtmlContent -path "cert_master.html" -desc "마스터트레이너는 협회 자격체계의 최상위 등급으로, 강사(트레이너)로서 쌓은 심화된 4축 역량과 교육 경험을 바탕으로 협회 인증 교육원을 설립·운영할 수 있는 교육 리더십 과정입니다.<br>4주 동안 협회의 교육 철학과 표준 커리큘럼을 온전히 전수하는 법, 교육원 운영과 수강생 관리, 교육 품질을 지속적으로 관리하는 슈퍼비전 체계를 집중적으로 학습하며, 수료 후 협회를 대표하는 레벨1·레벨2 인증 교육원을 개설할 수 있습니다." -tableHtml $t5
