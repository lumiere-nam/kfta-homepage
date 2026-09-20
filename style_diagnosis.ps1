$content = [System.IO.File]::ReadAllText('index.html', [System.Text.Encoding]::UTF8)

$newDiagnosis = @'
    <!-- Diagnosis Section -->
    <section class="bg-kftaGreen py-24 px-6 relative overflow-hidden">
        <!-- Background Pattern -->
        <div class="absolute inset-0 opacity-10 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')]"></div>
        <div class="max-w-6xl mx-auto relative z-10">
            <div class="text-center mb-16">
                <span class="text-kftaBeige font-bold tracking-widest text-sm uppercase mb-3 block">Fashion Therapy Assessment</span>
                <h2 class="font-serif text-4xl md:text-5xl mb-6 text-white font-bold animate__animated animate__fadeInUp">우리가 해결하는 20가지 상처</h2>
                <p class="text-lg text-kftaLight max-w-2xl mx-auto animate__animated animate__fadeInUp animate__delay-1s leading-relaxed">거울 앞에서 망설이는 당신의 고민,<br>이제 패션테라피의 과학적이고 체계적인 접근으로 치유할 시간입니다.</p>
                <div class="w-24 h-1 bg-kftaRed mx-auto mt-8"></div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 justify-center">
                <!-- Shape -->
                <div class="bg-white/5 backdrop-blur-md p-8 rounded-3xl border border-white/20 hover:bg-white/10 transition-all duration-300 animate__animated animate__fadeInUp group">
                    <div class="flex items-center gap-4 mb-6 border-b border-white/20 pb-4">
                        <div class="w-12 h-12 bg-kftaRed rounded-full flex items-center justify-center text-white font-bold shadow-sm group-hover:scale-110 transition-transform">S</div>
                        <h3 class="text-2xl font-bold text-white">몸 <span class="text-sm text-kftaBeige font-normal ml-1">Shape</span></h3>
                    </div>
                    <ul class="space-y-3 text-white/90">
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 변한 몸이 낯설 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 키가 작아 고민일 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 배가 나와 걱정일 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 내 단점만 보일 때</li>
                    </ul>
                </div>
                <!-- Color -->
                <div class="bg-white/5 backdrop-blur-md p-8 rounded-3xl border border-white/20 hover:bg-white/10 transition-all duration-300 animate__animated animate__fadeInUp animate__delay-1s group">
                    <div class="flex items-center gap-4 mb-6 border-b border-white/20 pb-4">
                        <div class="w-12 h-12 bg-kftaRed rounded-full flex items-center justify-center text-white font-bold shadow-sm group-hover:scale-110 transition-transform">C</div>
                        <h3 class="text-2xl font-bold text-white">색 <span class="text-sm text-kftaBeige font-normal ml-1">Color</span></h3>
                    </div>
                    <ul class="space-y-3 text-white/90">
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 검정 옷 뒤로 숨을 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 안색이 어두울 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 색 선택이 막막할 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 정서적 활력이 필요할 때</li>
                    </ul>
                </div>
                <!-- Impression -->
                <div class="bg-white/5 backdrop-blur-md p-8 rounded-3xl border border-white/20 hover:bg-white/10 transition-all duration-300 animate__animated animate__fadeInUp animate__delay-2s group">
                    <div class="flex items-center gap-4 mb-6 border-b border-white/20 pb-4">
                        <div class="w-12 h-12 bg-kftaRed rounded-full flex items-center justify-center text-white font-bold shadow-sm group-hover:scale-110 transition-transform">I</div>
                        <h3 class="text-2xl font-bold text-white">인상 <span class="text-sm text-kftaBeige font-normal ml-1">Impression</span></h3>
                    </div>
                    <ul class="space-y-3 text-white/90">
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 실물보다 사진이 나을 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 신뢰가 필요할 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 인상이 강해 보일 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 소통이 어려울 때</li>
                    </ul>
                </div>
                <!-- Style -->
                <div class="bg-white/5 backdrop-blur-md p-8 rounded-3xl border border-white/20 hover:bg-white/10 transition-all duration-300 animate__animated animate__fadeInUp group">
                    <div class="flex items-center gap-4 mb-6 border-b border-white/20 pb-4">
                        <div class="w-12 h-12 bg-kftaRed rounded-full flex items-center justify-center text-white font-bold shadow-sm group-hover:scale-110 transition-transform">S</div>
                        <h3 class="text-2xl font-bold text-white">감각 <span class="text-sm text-kftaBeige font-normal ml-1">Style</span></h3>
                    </div>
                    <ul class="space-y-3 text-white/90">
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 코디가 막막할 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 유행만 따라갈 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 실력보다 어려 보일 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 나를 표현하고 싶을 때</li>
                    </ul>
                </div>
                <!-- Memory -->
                <div class="bg-white/5 backdrop-blur-md p-8 rounded-3xl border border-white/20 hover:bg-white/10 transition-all duration-300 animate__animated animate__fadeInUp animate__delay-1s group">
                    <div class="flex items-center gap-4 mb-6 border-b border-white/20 pb-4">
                        <div class="w-12 h-12 bg-kftaRed rounded-full flex items-center justify-center text-white font-bold shadow-sm group-hover:scale-110 transition-transform">M</div>
                        <h3 class="text-2xl font-bold text-white">역할 <span class="text-sm text-kftaBeige font-normal ml-1">Memory</span></h3>
                    </div>
                    <ul class="space-y-3 text-white/90">
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 옛날 옷만 가득할 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 새 출발이 떨릴 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 꾸미는 게 사치 같을 때</li>
                        <li class="flex items-start gap-3"><span class="text-kftaRed mt-1">✔</span> 아침마다 고민될 때</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
'@

$regex = [regex]::new('(?s)    <!-- Diagnosis Section -->.*?    <!-- History Timetable -->')
$content = $regex.Replace($content, ($newDiagnosis + "`n    <!-- History Timetable -->"))

[System.IO.File]::WriteAllText('index.html', $content, [System.Text.Encoding]::UTF8)
