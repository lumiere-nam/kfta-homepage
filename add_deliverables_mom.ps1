$momHtml = [System.IO.File]::ReadAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", [System.Text.Encoding]::UTF8)

$deliverables = @"
    <!-- Deliverables -->
    <section class="py-24 px-6 bg-kftaBeige/20 border-t border-kftaBorder">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-3xl font-bold text-center text-gray-800 mb-12">그래서, <span class="text-kftaGreen">무엇을 얻어갈 수 있나요?</span> (제공 내역)</h2>
            <div class="bg-white p-10 rounded-3xl shadow-xl border border-gray-100">
                <ul class="space-y-6">
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">퍼스널 컬러 및 체형 분석 결과지</h4>
                            <p class="text-gray-600">나의 베스트 컬러 & 체형 보완 팁이 상세히 적힌 결과지를 실물로 제공합니다.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">1:1 맞춤형 뷰티 가이드</h4>
                            <p class="text-gray-600">전문가가 직접 알려주는 나에게 딱 맞는 데일리 메이크업과 헤어 스타일링 노하우.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">스튜디오 셀프 화보 A컷 보정본</h4>
                            <p class="text-gray-600">가장 나다운, 반짝이는 순간을 담은 인생 프로필 사진 원본 및 전문가 보정본 파일 제공.</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-4">
                        <div class="mt-1 bg-kftaRed/10 p-2 rounded-lg text-kftaRed">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                        </div>
                        <div>
                            <h4 class="font-bold text-xl text-gray-800 mb-1">마인드 테라피 코칭</h4>
                            <p class="text-gray-600">단순한 미용을 넘어, 자신감과 자존감을 불어넣어 주는 내면 코칭 세션.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
"@

$momHtml = $momHtml.Replace('</section>

    <!-- Sticky Bottom Apply Action -->', "</section>`n`n$deliverables`n`n    <!-- Sticky Bottom Apply Action -->")

[System.IO.File]::WriteAllText("c:\lumi\kfta\kfta-homepage\academy_oneday_mom.html", $momHtml, [System.Text.Encoding]::UTF8)
