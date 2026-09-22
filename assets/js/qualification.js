// assets/js/qualification.js
// ─────────────────────────────────────────────────────────────────────────
//  민간자격 등록 상태를 한 곳에서 관리한다.
//  등록증을 받으시면 아래 KFTA_QUAL 의 세 줄만 고치면 6개 자격 페이지가
//  한꺼번에 「등록민간자격 안내」로 바뀐다. HTML 은 손대지 않아도 된다.
//
//    registered : false → true
//    number     : 등록증에 적힌 등록번호 그대로   (예: '제2027-000000호')
//    since      : 등록일                          (예: '2027.01.15')
// ─────────────────────────────────────────────────────────────────────────

var KFTA_QUAL = {

    registered: false,
    number:     '',
    since:      '',

    // ── 자격 정보 (등록신청서 기재안과 동일하게 유지) ──
    name:   '패션심리분석사',
    nameEn: 'Fashion Psychology Analyst',
    org:    '캄온(calm:on)',
    bizNo:  '395-44-01406',
    ceo:    '남미화',
    tel:    '010-9692-0410',
    email:  'nxxon@naver.com',
    addr:   '경기도 용인시 처인구 포곡읍 성산로 667, 102동 2층 203호 A구역',

    // ── 등급별 비용 (등록 후 기준: 교육비 + 응시료 + 자격증 발급비) ──
    grades: {
        level1: { grade: '3급', course: 'Level 1 Foundation',           tuition: 2000000, exam: 50000, issue: 50000 },
        level2: { grade: '2급', course: 'Level 2 Practitioner',         tuition: 2300000, exam: 50000, issue: 50000 },
        level3: { grade: '1급', course: 'Level 3 Master Practitioner',  tuition: 2500000, exam: 50000, issue: 50000 }
    },

    // ── 등록 대상이 아닌 협회 내부 인증 과정 ──
    internal: {
        trainer: { course: 'Trainer',        tuition: 2700000 },
        master:  { course: 'Master Trainer', tuition: 3000000 }
    },

    reissueFee: 20000,          // 재교부 수수료
    certFeeBeforeReg: 100000    // 등록 전 수료증 발급비
};

(function () {
    var Q = KFTA_QUAL;
    var won = function (n) { return Number(n).toLocaleString('ko-KR') + '원'; };

    var BOX   = 'max-w-4xl mx-auto p-6 sm:p-8 border border-gray-300 rounded-xl bg-gray-50 text-sm text-gray-700 leading-relaxed break-keep';
    var TITLE = 'font-bold text-gray-900 mb-3';
    var LIST  = 'list-disc list-inside space-y-2';

    function feeTable(keys) {
        var rows = keys.map(function (k) {
            var g = Q.grades[k];
            if (!g) return '';
            return '<tr>'
                 + '<td class="border border-gray-300 p-2 text-left">' + g.grade + ' · ' + g.course + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right">' + won(g.tuition) + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right">' + won(g.exam) + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right">' + won(g.issue) + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right font-bold text-gray-900">' + won(g.tuition + g.exam + g.issue) + '</td>'
                 + '</tr>';
        }).join('');
        return '<div class="mt-3 overflow-x-auto"><table class="w-full text-xs border-collapse">'
             + '<thead><tr class="bg-gray-200 text-gray-800">'
             +   '<th class="border border-gray-300 p-2 text-left">등급 · 과정</th>'
             +   '<th class="border border-gray-300 p-2 text-right">교육비</th>'
             +   '<th class="border border-gray-300 p-2 text-right">응시료</th>'
             +   '<th class="border border-gray-300 p-2 text-right">자격증 발급비</th>'
             +   '<th class="border border-gray-300 p-2 text-right">총비용</th>'
             + '</tr></thead><tbody class="bg-white">' + rows + '</tbody></table></div>';
    }

    // 등록 전 요금표 — 개요 페이지에만 5개 과정을 한 표로 보여준다
    function feeTableBefore() {
        var all = [
            Q.grades.level1, Q.grades.level2, Q.grades.level3,
            Q.internal.trainer, Q.internal.master
        ];
        var rows = all.map(function (g) {
            return '<tr>'
                 + '<td class="border border-gray-300 p-2">' + g.course + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right">' + won(g.tuition) + '</td>'
                 + '<td class="border border-gray-300 p-2 text-right">' + won(Q.certFeeBeforeReg) + '</td>'
                 + '</tr>';
        }).join('');
        return '<div class="mt-3 overflow-x-auto"><table class="w-full text-xs border-collapse">'
             + '<thead><tr class="bg-gray-200 text-gray-800">'
             +   '<th class="border border-gray-300 p-2 text-left">과정</th>'
             +   '<th class="border border-gray-300 p-2 text-right">교육비</th>'
             +   '<th class="border border-gray-300 p-2 text-right">수료증 발급비</th>'
             + '</tr></thead><tbody class="bg-white">' + rows + '</tbody></table></div>';
    }

    // ── 등록 전 ──────────────────────────────────────────────────────────
    function beforeRegistration(course) {
        var internal = Q.internal[course];
        var overview = !course;
        var fee = '<li>교육비 외에 <strong>수료증 발급비 ' + won(Q.certFeeBeforeReg) + '</strong>이 별도로 발생합니다. '
                + '<a href="refund.html" class="text-kftaRed font-bold underline hover:no-underline">환불 규정</a>은 별도 페이지에서 확인하실 수 있습니다.'
                + (overview ? feeTableBefore() : '')
                + '</li>';

        return '<div class="' + BOX + '">'
             + '<p class="' + TITLE + '">교육과정 안내</p>'
             + '<ul class="' + LIST + '">'
             +   '<li>본 과정은 한국패션테라피협회(KFTA)가 운영하는 <strong>교육과정</strong>이며, 수료 시 <strong>과정 수료증</strong>이 발급됩니다.</li>'
             +   (internal
                   ? '<li>본 과정은 협회 <strong>내부 인증 과정</strong>이며, <strong>등록민간자격에 해당하지 않습니다.</strong></li>'
                   : '<li>민간자격은 「자격기본법」에 따른 <strong>등록 절차를 진행 중</strong>이며, 등록이 완료되면 자격 취득 과정으로 전환될 예정입니다.</li>')
             +   fee
             +   '<li>교육 운영 및 결제 주체: <strong>' + Q.org + '</strong> (사업자등록번호 ' + Q.bizNo + ')</li>'
             +   '<li>문의: ' + Q.tel + ' · ' + Q.email + '</li>'
             + '</ul>'
             + '</div>';
    }

    // ── 등록 후 ──────────────────────────────────────────────────────────
    function afterRegistration(course) {
        var internal = Q.internal[course];

        // 협회 내부 인증 과정(Trainer · Master Trainer)
        if (internal) {
            return '<div class="' + BOX + '">'
                 + '<p class="' + TITLE + '">교육과정 안내</p>'
                 + '<ul class="' + LIST + '">'
                 +   '<li>본 과정은 협회 <strong>내부 인증 과정</strong>이며, <strong>등록민간자격에 해당하지 않습니다.</strong> 수료 시 협회 <strong>수료증</strong>이 발급됩니다.</li>'
                 +   '<li>등록민간자격은 <strong>' + Q.name + ' 1급 · 2급 · 3급</strong>(등록번호 ' + Q.number + ')이며, '
                 +     '<a href="certification.html" class="text-kftaRed font-bold underline hover:no-underline">자격 과정 안내</a>에서 확인하실 수 있습니다.</li>'
                 +   '<li>교육비 외에 <strong>수료증 발급비 ' + won(Q.certFeeBeforeReg) + '</strong>이 별도로 발생합니다. '
                 +     '<a href="refund.html" class="text-kftaRed font-bold underline hover:no-underline">환불 규정</a>은 별도 페이지에서 확인하실 수 있습니다.</li>'
                 +   '<li>교육 운영 및 결제 주체: <strong>' + Q.org + '</strong> (사업자등록번호 ' + Q.bizNo + ')</li>'
                 +   '<li>문의: ' + Q.tel + ' · ' + Q.email + '</li>'
                 + '</ul>'
                 + '</div>';
        }

        // 등록민간자격 (3급 · 2급 · 1급)
        var keys = Q.grades[course] ? [course] : ['level1', 'level2', 'level3'];
        var gradeLabel = Q.grades[course]
            ? Q.name + ' ' + Q.grades[course].grade
            : Q.name + ' 1급 · 2급 · 3급';

        return '<div class="' + BOX + '">'
             + '<p class="' + TITLE + '">등록민간자격 안내</p>'
             + '<dl class="grid grid-cols-1 sm:grid-cols-[7rem_1fr] gap-x-4 gap-y-2 mb-5">'
             +   '<dt class="font-bold text-gray-500">자격명</dt><dd>' + gradeLabel + '</dd>'
             +   '<dt class="font-bold text-gray-500">등록번호</dt><dd class="font-bold text-gray-900">등록민간자격 ' + Q.number + (Q.since ? ' <span class="font-normal text-gray-500">(' + Q.since + ' 등록)</span>' : '') + '</dd>'
             +   '<dt class="font-bold text-gray-500">자격관리기관</dt><dd>' + Q.org + ' · 사업자등록번호 ' + Q.bizNo + ' · 대표 ' + Q.ceo + '</dd>'
             +   '<dt class="font-bold text-gray-500">소재지</dt><dd>' + Q.addr + '</dd>'
             +   '<dt class="font-bold text-gray-500">연락처</dt><dd>Tel. ' + Q.tel + ' · ' + Q.email + '</dd>'
             + '</dl>'
             + '<p class="font-bold text-gray-900 mb-2">등급별 총비용</p>'
             + feeTable(keys)
             + '<p class="text-xs text-gray-500 mt-2">※ 재교부 수수료 ' + won(Q.reissueFee) + '. 위 금액 외 추가 비용은 없습니다.</p>'
             + '<p class="mt-3"><a href="refund.html" class="text-kftaRed font-bold underline hover:no-underline">환불 규정 전문 보기</a></p>'
             + '<div class="mt-5 pt-5 border-t border-gray-300">'
             +   '<p class="font-bold text-gray-900 leading-relaxed">본 자격은 「자격기본법」 제17조 제2항에 따라 등록한 등록민간자격으로, 국가로부터 공인받은 공인자격이 아닙니다.</p>'
             +   '<p class="text-xs text-gray-500 mt-2 leading-relaxed">「자격기본법」에 따라 국가 외의 자가 신설하여 관리·운영하는 민간자격은, 등록을 하였더라도 국가가 그 내용을 보증하는 것이 아닙니다.</p>'
             + '</div>'
             + '</div>';
    }

    function render() {
        var slots = document.querySelectorAll('[data-kfta-qual]');
        for (var i = 0; i < slots.length; i++) {
            var course = slots[i].getAttribute('data-course') || '';
            slots[i].innerHTML = Q.registered ? afterRegistration(course) : beforeRegistration(course);
        }
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', render);
    } else {
        render();
    }
})();
