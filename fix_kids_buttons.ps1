$kidsHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", [System.Text.Encoding]::UTF8)

# Add buttons to each section
$kidsHtml = $kidsHtml.Replace('감성을 깨우는 체험형 촉감 놀이 시간입니다.</p>
                </div>', '감성을 깨우는 체험형 촉감 놀이 시간입니다.</p>
                    <a href="checkout.html?item=오감 테라피" class="mt-6 inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-3 px-8 rounded-full transition-all duration-300 shadow-md">신청 및 결제하기</a>
                </div>')

$kidsHtml = $kidsHtml.Replace('감정을 표현하는 창의 미술 테라피입니다.</p>
                </div>', '감정을 표현하는 창의 미술 테라피입니다.</p>
                    <a href="checkout.html?item=꼬마 디자이너의 안목" class="mt-6 inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-3 px-8 rounded-full transition-all duration-300 shadow-md">신청 및 결제하기</a>
                </div>')

$kidsHtml = $kidsHtml.Replace('자율성을 기르는 프로그램입니다.</p>
                </div>', '자율성을 기르는 프로그램입니다.</p>
                    <a href="checkout.html?item=마음을 칠하는 시간" class="mt-6 inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-3 px-8 rounded-full transition-all duration-300 shadow-md">신청 및 결제하기</a>
                </div>')

$kidsHtml = $kidsHtml.Replace('나누는 가족 소통 프로그램입니다.</p>
                </div>', '나누는 가족 소통 프로그램입니다.</p>
                    <a href="checkout.html?item=서로를 비추는 거울" class="mt-6 inline-block bg-kftaRed hover:bg-red-900 text-white font-bold py-3 px-8 rounded-full transition-all duration-300 shadow-md">신청 및 결제하기</a>
                </div>')

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_kids.html", $kidsHtml, [System.Text.Encoding]::UTF8)

# Change "더보기" to "상세보기" in academy.html
$academyHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy.html", [System.Text.Encoding]::UTF8)
$academyHtml = $academyHtml.Replace('">더보기</a>', '">상세보기</a>')
[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy.html", $academyHtml, [System.Text.Encoding]::UTF8)
