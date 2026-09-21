# 1. Update consulting_1.html
$c1 = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", [System.Text.Encoding]::UTF8)

$oldStep1 = '<p class="text-gray-600 leading-relaxed">
                    본격적인 컬러 테라피에 들어가기 앞서, 최첨단 양손 측정 시스템(생체 임피던스)을 보조적으로 활용합니다. 눈에 보이지 않는 현재의 스트레스와 에너지(Aura) 불균형 상태를 잠시 화면을 통해 과학적으로 점검하고 넘어갑니다.
                </p>'
$newSteps = '<p class="text-gray-600 leading-relaxed">
                    본격적인 컬러 테라피에 들어가기 앞서, 최첨단 양손 측정 시스템(생체 임피던스)을 보조적으로 활용합니다. 눈에 보이지 않는 현재의 스트레스와 에너지(Aura) 불균형 상태를 잠시 화면을 통해 과학적으로 점검하고 넘어갑니다.
                </p>
                <div class="pt-6 mt-6 border-t border-gray-200 space-y-6">
                    <div>
                        <p class="text-kftaGreen font-bold text-sm tracking-widest uppercase mb-1">Step 2. 마인드 컬러 진단</p>
                        <h4 class="text-xl font-bold text-gray-800 mb-2">무의식 속 나의 결핍 찾기</h4>
                        <p class="text-gray-600 leading-relaxed text-sm">전문 컬러 테라피스트와 함께 현재 나에게 가장 끌리는 색과 거부감이 드는 색을 분석하여 심리적 결핍과 숨겨진 상처를 마주합니다.</p>
                    </div>
                    <div>
                        <p class="text-kftaGreen font-bold text-sm tracking-widest uppercase mb-1">Step 3. 힐링 컬러 솔루션</p>
                        <h4 class="text-xl font-bold text-gray-800 mb-2">나를 채우는 맞춤형 컬러 처방</h4>
                        <p class="text-gray-600 leading-relaxed text-sm">진단 결과를 바탕으로 에너지를 회복시켜 줄 ''힐링 컬러''를 도출하고, 이를 일상복이나 소품에 자연스럽게 매치하는 구체적인 패션테라피 코디법을 제공합니다.</p>
                    </div>
                </div>'

$c1 = $c1.Replace($oldStep1, $newSteps)
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\consulting_1.html", $c1, [System.Text.Encoding]::UTF8)

# 2. Update academy.html One Day Class section
$a = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)

# Change grid-cols-4 to grid-cols-3 for oneday
$a = $a.Replace('<div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                      <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
      <img src="assets/class_color_palette_new.jpg" class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">', 
'<div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                      <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
      <img src="assets/class_color_palette_new.jpg" class="w-full h-48 object-cover" alt="나의 컬러 팔레트 맵">')

# Add 2 new cards at the end of oneday section
$oldBeautyCardEnd = 'class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">상세보기</a>
                          </div>
                      </div>'

$newCards = 'class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">상세보기</a>
                          </div>
                      </div>
                      <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
                          <div class="w-full h-48 bg-[#E8E3D9] flex items-center justify-center text-[#3B4B38] font-serif text-2xl font-bold">Aromatherapy</div>
                          <div class="p-6 flex-grow flex flex-col">
                              <h4 class="font-bold text-lg text-kftaGreen mb-3">아로마 감정 테라피</h4>
                              <p class="text-sm text-gray-600 mb-6 flex-grow">식물에서 추출한 천연 에센셜 오일의 향기를 통해 지친 마음을 안정시키고 스트레스를 완화하는 힐링 아로마 클래스입니다.</p>
                              <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
                                  <span>가격: 80,000원</span>
                                  <span>시간: 90분</span>
                              </div>
                              <a href="academy_oneday_aroma.html" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">상세보기</a>
                          </div>
                      </div>
                      <div class="bg-white rounded-2xl overflow-hidden shadow-lg flex flex-col hover:-translate-y-2 transition-transform duration-300">
                          <div class="w-full h-48 bg-[#D1C9BB] flex items-center justify-center text-[#3B4B38] font-serif text-2xl font-bold">Cosmetics DIY</div>
                          <div class="p-6 flex-grow flex flex-col">
                              <h4 class="font-bold text-lg text-kftaGreen mb-3">나만의 천연 화장품 DIY</h4>
                              <p class="text-sm text-gray-600 mb-6 flex-grow">내 피부 타입과 마인드에 꼭 맞는 천연 원료를 배합하여 세상에 하나뿐인 건강한 스킨케어 제품을 직접 만들어보는 클래스입니다.</p>
                              <div class="flex justify-between items-center mb-4 text-sm font-bold text-gray-700 border-t border-gray-100 pt-3">
                                  <span>가격: 90,000원</span>
                                  <span>시간: 90분</span>
                              </div>
                              <a href="academy_oneday_diy.html" class="w-full block text-center bg-kftaGreen hover:bg-green-900 text-white font-bold py-3 rounded-xl transition-colors">상세보기</a>
                          </div>
                      </div>'

# Note: since there are multiple oldBeautyCardEnd strings, we must be careful.
# But oldBeautyCardEnd is actually the end of beauty card. Let's just find the exact text of beauty card end.
$a = [regex]::Replace($a, '(?s)<h4 class="font-bold text-lg text-kftaGreen mb-3">4050 뷰티큐레이션</h4>.*?</a>\s*</div>\s*</div>', "`$0" + $newCards.Substring($oldBeautyCardEnd.Length))

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $a, [System.Text.Encoding]::UTF8)

# 3. Create dummy pages for aroma and diy
$dummyAroma = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_color.html", [System.Text.Encoding]::UTF8)
$dummyAroma = $dummyAroma.Replace("나의 컬러 팔레트 맵", "아로마 감정 테라피")
$dummyAroma = $dummyAroma.Replace("가격: 150,000원", "가격: 80,000원")
$dummyAroma = $dummyAroma.Replace("소요 시간: 60분", "소요 시간: 90분")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_aroma.html", $dummyAroma, [System.Text.Encoding]::UTF8)

$dummyDiy = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_color.html", [System.Text.Encoding]::UTF8)
$dummyDiy = $dummyDiy.Replace("나의 컬러 팔레트 맵", "나만의 천연 화장품 DIY")
$dummyDiy = $dummyDiy.Replace("가격: 150,000원", "가격: 90,000원")
$dummyDiy = $dummyDiy.Replace("소요 시간: 60분", "소요 시간: 90분")
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_diy.html", $dummyDiy, [System.Text.Encoding]::UTF8)

