$momHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", [System.Text.Encoding]::UTF8)

$hook = @"
        <div class="border-t border-gray-100 pt-16 mt-16">
            <h4 class="font-bold text-2xl text-kftaGreen mb-8 text-center">프로그램 상세 안내</h4>
            <div class="bg-gray-50 rounded-2xl p-8 lg:p-12">
                <div class="space-y-6 text-gray-700 leading-relaxed text-justify max-w-3xl mx-auto">
                    <p>혹시 <strong>카카오톡 프로필 사진이 아이 사진이거나, 예쁜 풍경 사진뿐</strong>인가요?</p>
                    <p>어느새 거울 속 내 모습보다 아이와 가족을 먼저 챙기느라 나를 꾸미는 법조차 잊어버렸다고 느끼시진 않나요? '엄마프사 프로젝트'는 누군가의 엄마나 아내라는 이름 뒤에 가려져 있던 <strong>'온전한 나'를 되찾아주는 특별한 힐링 프로젝트</strong>입니다.</p>
                    <p>나를 사랑하는 마음은 작은 외모의 변화에서부터 시작됩니다. 퍼스널 컬러 진단을 통해 나를 가장 빛나게 하는 색을 찾고, 잃어버렸던 나의 고유한 매력과 아름다움을 화보 사진으로 남겨보세요. 스스로를 돌보는 시간이 당신의 자존감을 크게 끌어올려 줄 것입니다.</p>
                    
                    <p class="font-bold text-kftaGreen mt-8 border-l-4 border-kftaRed pl-4">이런 분들께 추천합니다!</p>
                    <ul class="list-disc list-inside space-y-2 text-gray-600 pl-2">
                        <li>나를 위해 꾸미는 방법조차 잊어버린 육아맘, 워킹맘</li>
                        <li>거울을 볼 때마다 예전 같지 않은 모습에 우울감을 느끼시는 분</li>
                        <li>잃어버린 자존감을 되찾고, 나만의 아름다운 인생 프로필 사진을 남기고 싶으신 분</li>
                    </ul>

                    <h5 class="font-bold text-kftaGreen mt-10 border-b border-gray-200 pb-2 text-lg">무엇을 얻어갈 수 있나요? (제공 내역)</h5>
                    <ul class="list-disc list-inside space-y-3 text-gray-700 pl-2 mt-4 bg-white p-6 rounded-xl border border-gray-100 shadow-sm">
                        <li><strong>퍼스널 컬러 및 체형 진단서:</strong> 나만의 베스트 톤과 체형 결점 보완 솔루션 페이퍼 제공</li>
                        <li><strong>맞춤형 뷰티 코칭:</strong> 화장대 점검 및 가장 예뻐 보이는 데일리 헤어/메이크업 가이드</li>
                        <li><strong>내면 자존감 코칭:</strong> 패션 심리 전문가와 함께하는 마인드 테라피 세션</li>
                        <li><strong>인생 프사 컷:</strong> 전문가의 디렉팅이 들어간 스튜디오 셀프 화보 촬영 및 A컷 보정본 파일 제공</li>
                    </ul>
                </div>
            </div>
        </div>
"@

$momHtml = $momHtml.Replace('</ul>
                </div>
            </div>', "</ul>
                </div>
            </div>`n$hook")

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", $momHtml, [System.Text.Encoding]::UTF8)

# Now Let's wire up the VOD Flow for Weekly Talks & K-POP
$weeklyHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", [System.Text.Encoding]::UTF8)
$weeklyHtml = $weeklyHtml.Replace('<a href="community.html#contact" class="inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-xl text-lg text-center mx-auto">', '<a href="checkout_vod.html?id=weekly_talks&title=Weekly Talks 패키지 (VOD)&price=150,000" class="inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-4 px-12 rounded-full transition-all duration-300 shadow-xl text-lg text-center mx-auto">')
$weeklyHtml = $weeklyHtml.Replace('대기자 등록 및 수강 문의하기', '온라인 VOD 수강 신청하기 (바로 시청)')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_weekly.html", $weeklyHtml, [System.Text.Encoding]::UTF8)

$kpopHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_kpop.html", [System.Text.Encoding]::UTF8)
$kpopHtml = $kpopHtml.Replace('href="checkout.html?item=', 'href="checkout_vod.html?id=fashion_kpop&title=Fashion in K-POP (VOD)&price=120,000&item=')
$kpopHtml = $kpopHtml.Replace('신청 및 결제하기', '온라인 VOD 수강 신청하기 (바로 시청)')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kpop.html", $kpopHtml, [System.Text.Encoding]::UTF8)

