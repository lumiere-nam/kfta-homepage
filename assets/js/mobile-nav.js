// assets/js/mobile-nav.js
// 모바일(768px 미만) 전용 네비게이션.
// 데스크톱 헤더/메뉴는 건드리지 않고, 햄버거 버튼과 전체화면 패널만 추가한다.

(function () {
    const MENU = [
        { label: 'ABOUT', href: 'index.html', sub: [
            { label: 'Philosophy',   href: 'index.html#vision' },
            { label: 'Methodology',  href: 'index.html#methodology' },
            { label: 'Location',     href: 'index.html#location' },
        ]},
        { label: 'ACADEMY', href: 'academy.html?v=2', sub: [
            { label: 'One Day Class',       href: 'academy.html?v=2#oneday' },
            { label: 'Kids & Family Class', href: 'academy.html?v=2#kids' },
            { label: 'Weekly Talks',        href: 'academy.html?v=2#weekly' },
            { label: 'Fashion in K-POP',    href: 'academy.html?v=2#kpop' },
        ]},
        { label: 'CERTIFICATION', href: 'certification.html', sub: [
            { label: 'Overview (개요)',            href: 'certification.html' },
            { label: 'Level 1 Foundation',         href: 'cert_level1.html' },
            { label: 'Level 2 Practitioner',       href: 'cert_level2.html' },
            { label: 'Level 3 Master Practitioner', href: 'cert_level3.html' },
            { label: 'Trainer',                    href: 'cert_trainer.html' },
            { label: 'Master Trainer',             href: 'cert_master.html' },
        ]},
        { label: 'CONSULTING', href: 'consulting.html' },
        { label: 'CORPORATE',  href: 'corporate.html' },
        { label: 'SHOP', href: 'shop.html', sub: [
            { label: 'Books',         href: 'shop.html' },
            { label: 'Therapy Tools', href: 'shop.html' },
        ]},
        { label: 'COMMUNITY', href: 'community.html', sub: [
            { label: 'Notice',   href: 'community.html' },
            { label: 'Schedule', href: 'schedule.html' },
            { label: 'Contact',  href: 'community.html#contact' },
            { label: 'Gallery',  href: 'community.html#gallery' },
            { label: 'Reviews',  href: 'community.html#reviews' },
            { label: 'F&Q',      href: 'community.html#faq' },
        ]},
    ];

    const esc = s => String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;');

    function build() {
        const header = document.querySelector('header');
        if (!header || document.getElementById('mNavBtn')) return;
        const bar = header.firstElementChild;
        if (!bar) return;

        // 1) 햄버거 버튼 (모바일에서만 노출)
        const btn = document.createElement('button');
        btn.id = 'mNavBtn';
        btn.type = 'button';
        btn.setAttribute('aria-label', '메뉴 열기');
        btn.setAttribute('aria-expanded', 'false');
        btn.className = 'md:hidden flex flex-col justify-center items-center gap-[5px] w-11 h-11 -mr-2 shrink-0';
        btn.innerHTML =
            '<span class="block w-6 h-0.5 bg-kftaGreen transition-transform duration-300"></span>' +
            '<span class="block w-6 h-0.5 bg-kftaGreen transition-opacity duration-300"></span>' +
            '<span class="block w-6 h-0.5 bg-kftaGreen transition-transform duration-300"></span>';
        bar.appendChild(btn);

        // 2) 전체화면 패널
        const panel = document.createElement('div');
        panel.id = 'mNavPanel';
        panel.className = 'md:hidden fixed inset-0 top-20 z-40 bg-kftaLight overflow-y-auto overscroll-contain hidden';

        let html = '<nav class="px-6 py-6 pb-28">';
        MENU.forEach((m, i) => {
            if (m.sub) {
                html +=
                '<div class="border-b border-kftaBorder/60">' +
                  '<button type="button" data-acc="' + i + '" aria-expanded="false" ' +
                          'class="w-full flex justify-between items-center py-4 text-left">' +
                    '<span class="text-base font-bold text-kftaGreen uppercase tracking-wide">' + esc(m.label) + '</span>' +
                    '<span data-icon="' + i + '" class="text-kftaRed text-xl leading-none transition-transform duration-200">+</span>' +
                  '</button>' +
                  '<div data-panel="' + i + '" class="hidden pb-3">' +
                    '<a href="' + m.href + '" class="block py-2.5 pl-3 text-sm font-bold text-kftaRed">' + esc(m.label) + ' 전체보기</a>' +
                    m.sub.map(s =>
                      '<a href="' + s.href + '" class="block py-2.5 pl-3 text-sm text-gray-700">' + esc(s.label) + '</a>'
                    ).join('') +
                  '</div>' +
                '</div>';
            } else {
                html +=
                '<a href="' + m.href + '" class="block py-4 border-b border-kftaBorder/60 ' +
                   'text-base font-bold text-kftaGreen uppercase tracking-wide">' + esc(m.label) + '</a>';
            }
        });
        html +=
            '<a href="login.html" id="mNavAuth" class="mt-7 block text-center bg-kftaGreen text-white ' +
               'font-bold py-4 rounded-full text-base">로그인</a>' +
        '</nav>';
        panel.innerHTML = html;
        document.body.appendChild(panel);

        // 3) 동작
        const bars = btn.querySelectorAll('span');
        let open = false;

        function setOpen(v) {
            open = v;
            panel.classList.toggle('hidden', !v);
            document.body.style.overflow = v ? 'hidden' : '';
            btn.setAttribute('aria-expanded', String(v));
            btn.setAttribute('aria-label', v ? '메뉴 닫기' : '메뉴 열기');
            bars[0].style.transform = v ? 'translateY(7px) rotate(45deg)'  : '';
            bars[1].style.opacity   = v ? '0' : '';
            bars[2].style.transform = v ? 'translateY(-7px) rotate(-45deg)' : '';
        }

        btn.addEventListener('click', () => setOpen(!open));

        panel.addEventListener('click', e => {
            const acc = e.target.closest('[data-acc]');
            if (acc) {
                const i = acc.getAttribute('data-acc');
                const box = panel.querySelector('[data-panel="' + i + '"]');
                const ic  = panel.querySelector('[data-icon="' + i + '"]');
                const willOpen = box.classList.contains('hidden');

                // 다른 섹션은 닫아 목록이 밀려 잘못 눌리는 것을 막는다

                panel.querySelectorAll('[data-panel]').forEach(function (d) {

                    if (d === box) return;

                    d.classList.add('hidden');

                    const j = d.getAttribute('data-panel');

                    const ob = panel.querySelector('[data-acc="' + j + '"]');

                    const oi = panel.querySelector('[data-icon="' + j + '"]');

                    if (ob) ob.setAttribute('aria-expanded', 'false');

                    if (oi) oi.textContent = '+';

                });
                box.classList.toggle('hidden', !willOpen);
                acc.setAttribute('aria-expanded', String(willOpen));
                ic.textContent = willOpen ? '−' : '+';
                return;
            }
            if (e.target.closest('a')) setOpen(false);
        });

        // 데스크톱으로 넓어지면 자동으로 닫는다
        window.addEventListener('resize', () => {
            if (window.innerWidth >= 768 && open) setOpen(false);
        });
        document.addEventListener('keydown', e => {
            if (e.key === 'Escape' && open) setOpen(false);
        });

        // 로그인 상태 반영 (auth.js가 있을 때)
        if (typeof Auth !== 'undefined' && Auth.isLoggedIn && Auth.isLoggedIn()) {
            const a = document.getElementById('mNavAuth');
            if (a) {
                a.textContent = '마이 페이지';
                a.setAttribute('href', 'mypage.html');
                a.className = a.className.replace('bg-kftaGreen', 'bg-kftaRed');
            }
        }
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', build);
    } else {
        build();
    }
})();
