$template = @"
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title} - 한국패션테라피협회</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        kftaRed: '#A6212E',
                        kftaGreen: '#3C4D3C',
                        kftaLight: '#F5F5F0',
                        kftaSand: '#DCD4C4'
                    }
                }
            }
        }
    </script>
</head>
<body class="font-sans text-gray-800 bg-white leading-relaxed">

    <!-- Header -->
    <header class="bg-white/90 backdrop-blur-md sticky top-0 z-50 border-b border-gray-100 shadow-sm">
        <div class="max-w-6xl mx-auto px-6 h-20 flex items-center justify-between">
            <a href="index.html" class="flex items-center gap-3 group">
                <div class="w-10 h-10 bg-kftaRed text-white flex items-center justify-center font-serif font-bold text-xl rounded-sm group-hover:bg-red-800 transition-colors shadow-sm">K</div>
                <div class="flex flex-col">
                    <span class="font-serif font-bold text-lg tracking-wider text-gray-900">한국패션테라피협회</span>
                    <span class="text-xs text-gray-500 font-medium tracking-widest">KOREA FASHION THERAPY ASSOCIATION</span>
                </div>
            </a>
            <a href="shop.html" class="text-gray-600 hover:text-kftaRed font-medium transition-colors">SHOP으로 돌아가기</a>
        </div>
    </header>

    <main class="max-w-6xl mx-auto px-6 py-12">
        <!-- Product Header -->
        <div class="flex flex-col md:flex-row gap-12 mb-16">
            <div class="w-full md:w-1/2">
                <div class="bg-gray-100 aspect-square rounded-2xl overflow-hidden shadow-md">
                    <img src="{img}" class="w-full h-full object-cover" alt="{title}" {img_style}>
                </div>
            </div>
            
            <div class="w-full md:w-1/2 flex flex-col justify-center">
                <span class="text-kftaRed font-bold mb-2">스타일링 필수 교구</span>
                <h1 class="text-4xl font-bold text-gray-900 mb-4 leading-tight">{title}</h1>
                <p class="text-2xl font-medium text-gray-700 mb-6 border-b border-gray-200 pb-6">{price}원</p>
                
                <p class="text-lg text-gray-600 mb-8 leading-relaxed">
                    {short_desc}
                </p>
                
                <div class="bg-kftaLight p-6 rounded-xl mb-8">
                    <h3 class="font-bold text-gray-900 mb-2">제품 구성</h3>
                    <ul class="text-gray-700 space-y-2">
                        {config}
                    </ul>
                </div>
                
                <a href="checkout.html?item={title}" class="block w-full bg-kftaRed hover:bg-red-900 text-white text-center font-bold text-lg py-4 rounded-xl transition-colors shadow-md">
                    구입하기
                </a>
            </div>
        </div>

        <!-- Hooking Story -->
        <section class="bg-gray-50 py-16 px-6 border-t border-gray-200 rounded-3xl mb-16">
            <div class="max-w-4xl mx-auto text-center">
                <h3 class="text-kftaRed font-bold text-xl mb-4">{hook_sub}</h3>
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-8 leading-tight">{hook_main}</h2>
                <div class="bg-white p-8 rounded-2xl shadow-sm text-left max-w-2xl mx-auto mb-10 border border-gray-100">
                    <ul class="space-y-4 text-gray-700 font-medium">
                        {hook_bullets}
                    </ul>
                </div>
            </div>
        </section>

        <!-- Product Detail Content -->
        <div class="max-w-4xl mx-auto">
            <div class="prose prose-lg max-w-none text-gray-700">
                <h2 class="text-2xl font-bold text-gray-900 mb-6 border-b border-gray-200 pb-2">{detail_title}</h2>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12">
                    {detail_boxes}
                </div>

                <p class="mb-8">
                    {detail_footer}
                </p>
            </div>
        </div>

        <!-- Global Notice Block -->
        <div class="max-w-4xl mx-auto mt-16 bg-gray-50 border border-gray-200 p-8 rounded-2xl">
            <h3 class="text-xl font-bold text-gray-900 mb-6 border-b border-gray-200 pb-2">안내 및 주의사항 (Notice)</h3>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 text-sm text-gray-600">
                <div>
                    <h4 class="font-bold text-gray-900 mb-2">배송 안내</h4>
                    <ul class="space-y-1">
                        <li>• 배송료: <strong>4,500원</strong> (도서산간 지역 추가 운임 발생)</li>
                        <li>• 결제 완료 후 2~3 영업일 이내 출고됩니다.</li>
                        <li>• 로젠택배를 통해 안전하게 배송됩니다.</li>
                    </ul>
                </div>
                <div>
                    <h4 class="font-bold text-gray-900 mb-2">교환 및 반품 안내</h4>
                    <ul class="space-y-1">
                        <li>• 상품 수령 후 7일 이내에 고객센터로 접수해주셔야 합니다.</li>
                        <li>• 교구 및 서적의 특성상 포장이 훼손되거나 사용 흔적이 있는 경우 교환/반품이 불가합니다.</li>
                        <li>• 단순 변심으로 인한 교환/반품 시 왕복 배송비는 고객님 부담입니다.</li>
                    </ul>
                </div>
            </div>
            
            <div class="mt-8 pt-6 border-t border-gray-200 flex flex-col md:flex-row items-center justify-between">
                <div>
                    <h4 class="font-bold text-gray-900 mb-1">고객센터 (카카오톡 채널)</h4>
                    <p class="text-sm text-gray-600">궁금하신 점이나 대량 구매 문의는 카카오톡으로 남겨주세요.</p>
                </div>
                <a href="https://pf.kakao.com/_vxitxaX" target="_blank" class="mt-4 md:mt-0 bg-[#FEE500] hover:bg-[#F4DC00] text-black font-bold py-3 px-6 rounded-xl transition-colors shadow-sm flex items-center gap-2">
                    <svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
                        <path d="M12 3c-5.523 0-10 3.491-10 7.8 0 2.723 1.706 5.12 4.303 6.452l-1.127 4.148c-.066.242.203.432.417.291l4.821-3.238c.513.078 1.042.12 1.586.12 5.523 0 10-3.491 10-7.8s-4.477-7.8-10-7.8z"/>
                    </svg>
                    카카오톡 문의하기
                </a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white pt-16 pb-8 border-t-4 border-kftaRed">
        <div class="max-w-6xl mx-auto px-6 flex flex-col md:flex-row justify-between items-center gap-6">
            <div class="text-center md:text-left">
                <h2 class="font-serif text-2xl font-bold tracking-widest mb-2">한국패션테라피협회</h2>
                <p class="opacity-80 text-sm">KOREA FASHION THERAPY ASSOCIATION</p>
            </div>
            <div class="text-center md:text-right opacity-80 text-sm space-y-1">
                <p>경기도 용인시 처인구 성산로 667, 102동 1F 203호 A구역 (1F 주차가능)</p>
                <p>Tel: 010-9692-0410 | Email: nxxon@naver.com</p>
                <p class="mt-4 opacity-60">&copy; 2026 Korea Fashion Therapy Association. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
"@

function Generate-Page {
    param($filename, $title, $price, $img, $img_style, $short_desc, $config, $hook_sub, $hook_main, $hook_bullets, $detail_title, $detail_boxes, $detail_footer)
    
    $content = $template `
        -replace '\{title\}', $title `
        -replace '\{price\}', $price `
        -replace '\{img\}', $img `
        -replace '\{img_style\}', $img_style `
        -replace '\{short_desc\}', $short_desc `
        -replace '\{config\}', $config `
        -replace '\{hook_sub\}', $hook_sub `
        -replace '\{hook_main\}', $hook_main `
        -replace '\{hook_bullets\}', $hook_bullets `
        -replace '\{detail_title\}', $detail_title `
        -replace '\{detail_boxes\}', $detail_boxes `
        -replace '\{detail_footer\}', $detail_footer

    Set-Content -Path $filename -Value $content -Encoding UTF8
}

Generate-Page -filename "shop_fashion_image_card.html" -title "패션이미지 카드" -price "35,000" -img "assets/shop_fashion_image.jpg" -img_style "" -short_desc "고객이 원하는 스타일을 말로 설명하지 못할 때 답답하셨나요?<br>시각화된 카드로 숨겨진 진짜 워너비 스타일을 단숨에 끌어내는 마법 같은 상담 도구입니다." -config "<li>• <strong>사이즈:</strong> 가로 100mm x 세로 150mm (크고 선명한 엽서 사이즈)</li><li>• <strong>구성품:</strong> 패션이미지 카드 세트 + 활용 가이드북</li>" -hook_sub "말로 표현하기 힘든 나의 진짜 취향, 그림으로 찾다" -hook_main "원하는 스타일을 말로 묻지 마세요.<br>고객이 직접 카드를 고르게 하세요." -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>언어의 한계 극복:</strong> `'깔끔하게 입고 싶어요`'라는 모호한 말 대신, 이미지를 통해 고객과 컨설턴트의 시각적 주파수를 정확히 맞춥니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>내면의 욕구 발견:</strong> 자신도 몰랐던 내면의 패션 로망과 워너비 이미지를 카드로 투사하여 심도 깊은 상담을 이끌어냅니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>아이스브레이킹:</strong> 상담 초반, 긴장한 고객의 마음을 열고 재미있게 컨설팅을 시작할 수 있는 완벽한 오프닝 도구입니다.</li>" -detail_title "패션이미지 카드 200% 활용법" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 워너비 스타일 매칭</h4><p class=`"text-sm`">수십 장의 카드 중 가장 끌리는 스타일 3장을 고르게 하세요. 고객이 무의식중에 갈망하는 이상적인 자아(Ideal Self) 이미지를 즉각적으로 파악할 수 있습니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 기피 스타일 탐색</h4><p class=`"text-sm`">절대 입고 싶지 않은 카드를 고르게 하여, 고객이 가진 과거의 트라우마나 패션에 대한 부정적 인식을 찾아내고 이를 치유하는 방향으로 상담을 이끌어갑니다.</p></div>" -detail_footer "패션이미지 카드는 단순한 그림이 아닙니다. 고객의 무의식과 취향을 비추는 거울이자, 성공적인 이미지 컨설팅의 방향을 잡아주는 확실한 나침반입니다."

Generate-Page -filename "shop_nagging_card.html" -title "패션 부정어 카드" -price "25,000" -img "assets/shop_nagging_card.jpg" -img_style "style=`"filter: brightness(1.25) saturate(1.3) contrast(1.1);`"" -short_desc "외모 콤플렉스와 남의 시선에 갇힌 사람들을 위한 마음 처방전.<br>나를 옭아매는 부정적인 말들을 눈앞에 꺼내놓고, 스스로 끊어내게 만드는 강력한 패션 심리상담 교구입니다." -config "<li>• <strong>사이즈:</strong> 가로 70mm x 세로 120mm (타로카드 사이즈)</li><li>• <strong>구성품:</strong> 패션 부정어 카드 1세트 + 활용 가이드북</li>" -hook_sub "옷장을 열 때마다 들리는 부정적인 목소리를 잠재우세요" -hook_main "`"뚱뚱해서 못 입어, 나이 들어 보여`"<br>그 말, 진짜 당신의 생각인가요?" -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>콤플렉스 직면:</strong> 무의식중에 자신을 깎아내리던 부정적인 단어들을 시각적 카드로 꺼내어 마주하게 합니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>타인의 시선 분리:</strong> 그 부정어가 내가 만든 것인지, 가족이나 사회가 주입한 것인지 분석하여 심리적 압박감에서 벗어나게 돕습니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>깊은 카타르시스:</strong> 부정어 카드를 찢거나 버리는 심리적 퍼포먼스를 통해 억눌렸던 감정을 해소하고 자존감을 회복합니다.</li>" -detail_title "패션 부정어 카드 심리상담 활용법" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 내면의 족쇄 찾기</h4><p class=`"text-sm`">고객에게 옷을 고를 때 방해가 되는 부정어 카드들을 고르게 합니다. `'팔뚝이 굵어`', `'촌스러워`' 등의 단어를 직접 보며, 자신을 제한하던 진짜 원인을 찾아냅니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 긍정어로의 전환 훈련</h4><p class=`"text-sm`">선택된 부정어 카드를 어떻게 긍정적으로 바라볼 수 있을지 대화하며, 단점을 장점으로 승화시키는 패션테라피적 마인드 리셋을 경험하게 합니다.</p></div>" -detail_footer "옷을 바꾸기 전, 마음을 먼저 바꿔야 합니다. 패션 부정어 카드는 상처 입은 자존감을 안아주고 치유하는 따뜻하고 단단한 솔루션입니다."

Generate-Page -filename "shop_neckline_drape.html" -title "네크라인 진단천" -price "40,000" -img "assets/shop_neckline.png" -img_style "" -short_desc "라운드넥과 V넥 중 어느 쪽이 얼굴형을 더 예뻐 보이게 할까요?<br>옷을 갈아입지 않아도 거울 앞에서 단 1초 만에 네크라인의 얼굴형 보정 효과를 증명하는 마법의 교구입니다." -config "<li>• <strong>구성품:</strong> 다양한 형태의 네크라인이 재단된 전용 진단천 세트</li><li>• <strong>특징:</strong> 인체공학적으로 재단되어 어깨에 걸치기만 하면 즉시 피팅 효과 구현</li>" -hook_sub "말로 설명하는 대신, 직접 보여주세요" -hook_main "얼굴의 단점을 완벽하게 커버하는<br>1인치의 기적, 네크라인" -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>즉각적인 시각 효과:</strong> 둥근 얼굴이 V넥을 만났을 때 갸름해지는 마법을 고객의 눈으로 직접 확인시켜 줍니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>다양한 얼굴형 보정:</strong> 각진 얼굴, 긴 얼굴 등 체형과 얼굴형의 단점을 보완하는 최적의 상의 파임 정도를 찾아냅니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>컨설팅 전문성 강화:</strong> 컬러 진단에만 머물지 않고, 형태(Shape)와 디자인까지 잡아주는 상위 1% 컨설턴트로 거듭납니다.</li>" -detail_title "네크라인 진단천 활용 가이드" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 얼굴형 단점 보완 실습</h4><p class=`"text-sm`">고객의 어깨에 진단천을 얹고 라운드, V, 보트넥 등으로 형태를 바꿔가며 턱선의 변화와 목 길이의 시각적 변화를 함께 관찰합니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 체형 밸런스 점검</h4><p class=`"text-sm`">어깨가 좁은 체형, 상체가 발달한 체형 등 바디 실루엣과 네크라인의 상관관계를 설명하며, 실패 없는 상의 구매 가이드를 제공할 수 있습니다.</p></div>" -detail_footer "퍼스널컬러만큼 중요한 것이 옷의 `'형태`'입니다. 네크라인 진단천 하나로 고객의 인생 핏을 찾아주세요."

Generate-Page -filename "shop_kit_1.html" -title "체험키트 No.1 (패션 콜라주 종이인형)" -price "35,000" -img "assets/shop_kit_1.jpg" -img_style "" -short_desc "어린 시절의 아날로그 종이인형 놀이를 통해, 무거웠던 내면의 상처를 부드럽게 치유하고 나만의 스타일을 발견하는 패션테라피 입문 키트입니다." -config "<li>• <strong>구성품:</strong> 종이인형 베이스, 다양한 의상 및 소품 콜라주 시트, 가위, 풀, 가이드북</li><li>• <strong>특징:</strong> 누구나 쉽게 오리고 붙이며 마음을 열 수 있는 아트 테라피 교구</li>" -hook_sub "마음을 치유하는 아날로그 패션 놀이" -hook_main "오리고 붙이는 순간,<br>잊고 있던 어린 시절의 순수한 나와 마주합니다." -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>이너차일드(내면아이) 치유:</strong> 종이인형에 옷을 입히는 행위를 통해 억눌렸던 유년기의 감정을 해소하고 마음의 안정을 찾습니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>스트레스 해소:</strong> 디지털 매체에서 벗어나 손으로 직접 종이를 자르고 풀칠하는 과정 자체가 훌륭한 힐링 퍼포먼스가 됩니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>나만의 스타일 발견:</strong> 제약 없이 마음껏 옷을 입혀보며, 현실에서 시도하지 못했던 나만의 로망을 안전하게 실현해 볼 수 있습니다.</li>" -detail_title "체험키트 No.1 활용법" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 셀프 패션테라피</h4><p class=`"text-sm`">혼자만의 조용한 시간을 가지며 마음이 이끄는 대로 인형의 옷을 코디해 보세요. 완성된 모습을 보며 현재 내 감정 상태와 취향을 돌아볼 수 있습니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 소그룹 힐링 클래스</h4><p class=`"text-sm`">친구들, 혹은 원데이 클래스 수강생들과 함께 진행하기 좋습니다. 각자가 꾸민 인형을 소개하며 서로의 이야기를 나누는 훌륭한 아이스브레이킹 도구가 됩니다.</p></div>" -detail_footer "완벽하지 않아도 괜찮습니다. 체험키트 No.1은 잘 꾸미는 것이 목적이 아니라, 과정 자체에서 마음의 위안을 얻는 진정한 패션테라피 도구입니다."

Generate-Page -filename "shop_kit_2.html" -title "체험키트 No.2 (스타일링 콜라주 워크북)" -price "45,000" -img "assets/shop_kit_2.jpg" -img_style "" -short_desc "수많은 패션 이미지들을 오리고 조합하며, 내 머릿속에 흩어져 있던 진짜 취향의 조각들을 하나의 완벽한 보드로 완성해내는 시각적 카타르시스 워크북입니다." -config "<li>• <strong>구성품:</strong> 고품질 패션 이미지 소스북, 대형 캔버스 보드, 마커 펜, 접착제</li><li>• <strong>특징:</strong> 잡지를 뒤적일 필요 없이 엄선된 패션 이미지들을 바로 잘라서 사용 가능</li>" -hook_sub "내 취향의 조각들을 모아 완성하는 나만의 무드보드" -hook_main "머릿속의 복잡한 생각들,<br>시각적 콜라주로 명쾌하게 정리하세요." -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>취향의 시각화:</strong> 막연하게 `'이런 스타일이 좋아`'라고 생각했던 것들을 물리적인 보드에 시각적으로 구체화하여 명확한 취향 지도를 만듭니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>시각적 카타르시스:</strong> 어울리는 이미지들을 모아 하나의 조화로운 작품을 완성했을 때 엄청난 심리적 성취감과 만족감을 줍니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>컨설팅 후속 솔루션:</strong> 진단을 받은 고객이 집으로 돌아가 스스로 스타일을 복습하고 다지게 만드는 최고의 애프터케어 도구입니다.</li>" -detail_title "체험키트 No.2 활용 가이드" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 나의 라이프스타일 맵핑</h4><p class=`"text-sm`">출근할 때, 주말에 놀러 갈 때 등 TPO(시간, 장소, 상황)에 맞춰 내가 입고 싶은 룩을 보드에 조합하며 라이프스타일을 점검합니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 미래의 워너비 자아 설정</h4><p class=`"text-sm`">1년 뒤, 3년 뒤 내가 되고 싶은 이상적인 모습(전문적인, 로맨틱한 등)을 콜라주로 표현하며 목표 지향적인 패션 심리 훈련을 진행합니다.</p></div>" -detail_footer "당신의 진짜 취향은 아직 발견되지 않았을 뿐입니다. 콜라주 워크북을 통해 내면 깊은 곳의 패션 DNA를 깨워보세요."

Generate-Page -filename "shop_color_card.html" -title "컬러 카드 18종" -price "20,000" -img "assets/shop_color_cards.png" -img_style "" -short_desc "단순한 색채 카드가 아닙니다. 무의식적으로 끌리는 색을 통해 현재의 심리 상태를 읽어내고 마음을 위로하는 마인드풀니스(Mindfulness) 훈련 도구입니다." -config "<li>• <strong>구성품:</strong> 고채도부터 저채도까지 엄선된 18종 컬러 카드 + 심리 해석 가이드</li><li>• <strong>특징:</strong> 색이 지닌 보편적 상징성과 개인의 감정을 연결하는 심도 깊은 컬러테라피 교구</li>" -hook_sub "색(Color)은 감정의 언어입니다" -hook_main "지금 당신의 눈길이 머무는 그 색이,<br>당신의 마음이 하고 싶은 말입니다." -hook_bullets "<li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>무의식의 시각화:</strong> 말로 꺼내기 힘든 우울감, 스트레스, 혹은 에너지를 카드의 색상 선택을 통해 자연스럽게 도출합니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>마음 챙김(Mindfulness):</strong> 자신을 편안하게 해주는 색을 찾고, 그 색을 일상복이나 소품에 적용하여 에너지를 회복하는 방법을 배웁니다.</li><li class=`"flex items-start gap-3`"><span class=`"text-kftaRed mt-1`">✔</span><strong>공감 컨설팅:</strong> 퍼스널컬러 진단 전, 고객의 심리 상태를 먼저 어루만져 주어 컨설턴트와의 라포(유대감)를 극대화합니다.</li>" -detail_title "컬러 카드 18종 심리상담 실전" -detail_boxes "<div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 감정 일기 작성</h4><p class=`"text-sm`">매일 아침 가장 끌리는 색 하나를 고르고, 왜 그 색이 좋은지 적어보세요. 내 감정의 흐름을 객관적으로 추적하는 훌륭한 테라피가 됩니다.</p></div><div class=`"bg-white p-6 rounded-xl border border-gray-200 shadow-sm`"><h4 class=`"text-lg font-bold text-kftaRed mb-3`"># 힐링 컬러 매칭</h4><p class=`"text-sm`">에너지가 고갈되었을 때 붉은색 계열을, 마음이 불안할 때 푸른색 계열 카드를 가까이 두고 명상하며 패션테라피의 기초를 다집니다.</p></div>" -detail_footer "퍼스널컬러가 `'어울리는 색`'을 찾는 것이라면, 컬러카드는 `'나를 치유하는 색`'을 찾는 여정입니다."
