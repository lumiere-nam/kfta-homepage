// ==========================================================================
// KFTA (Korea Fashion Therapy Association) - Interactive Application Script
// ==========================================================================

document.addEventListener('DOMContentLoaded', () => {
  // 1. Mobile Menu Toggle
  const mobileToggle = document.getElementById('mobile-toggle');
  const navMenu = document.getElementById('nav-menu');

  if (mobileToggle && navMenu) {
    mobileToggle.addEventListener('click', () => {
      navMenu.classList.toggle('active');
    });

    // Close menu when clicking nav links
    navMenu.querySelectorAll('.nav-link').forEach(link => {
      link.addEventListener('click', () => {
        navMenu.classList.remove('active');
      });
    });
  }

  // 2. Interactive Fashion Healing Self-Test Quiz
  const quizData = [
    {
      question: "Q1. 최근 아침에 옷을 고를 때 어떤 기분이 가장 많이 드나요?",
      options: [
        { text: "입을 옷은 많은데 막상 손이 가는 옷이 없어 답답하고 스트레스를 받는다.", score: { detox: 2, identity: 1, healing: 0 } },
        { text: "타인의 시선이나 무난함만 의식해 항상 칙칙하고 비슷한 옷만 고른다.", score: { detox: 0, identity: 2, healing: 1 } },
        { text: "옷을 입어도 기분이 나아지지 않고 무기력하거나 지친다.", score: { detox: 0, identity: 0, healing: 3 } },
        { text: "그날의 기분과 개성에 맞춰 즐겁게 스타일링한다.", score: { detox: 0, identity: 0, healing: 0 } }
      ]
    },
    {
      question: "Q2. 현재 당신의 옷장 상태는 어떠한가요?",
      options: [
        { text: "택도 떼지 않은 옷, 작아서 못 입는 옷들이 가득 차 정리가 안 된다.", score: { detox: 3, identity: 0, healing: 0 } },
        { text: "무채색(블랙/그레이/네이비) 위주로 옷장이 단조롭고 차갑다.", score: { detox: 0, identity: 2, healing: 2 } },
        { text: "내 체형이나 이미지에 정말 어울리는 옷이 무엇인지 잘 모르겠다.", score: { detox: 1, identity: 3, healing: 0 } },
        { text: "계절별, 목적별로 체계적으로 정돈되어 있고 활용도가 높다.", score: { detox: 0, identity: 0, healing: 0 } }
      ]
    },
    {
      question: "Q3. 패션을 통해 가장 얻고 싶은 변화는 무엇인가요?",
      options: [
        { text: "복잡한 옷장을 비우고 내 삶의 공간과 마음을 가볍게 정리하고 싶다.", score: { detox: 3, identity: 0, healing: 1 } },
        { text: "나만의 고유한 매력을 찾고 당당한 자존감을 회복하고 싶다.", score: { detox: 0, identity: 3, healing: 1 } },
        { text: "컬러와 따뜻한 소재를 통해 일상의 지친 감정을 치유받고 싶다.", score: { detox: 0, identity: 1, healing: 3 } },
        { text: "전문 패션테라피스트 자격증을 취득해 다른 사람을 돕고 싶다.", score: { detox: 1, identity: 1, healing: 1, pro: 3 } }
      ]
    }
  ];

  let currentStep = 0;
  const userScores = { detox: 0, identity: 0, healing: 0, pro: 0 };
  const quizStepContainer = document.getElementById('quiz-step');

  const renderQuestion = () => {
    if (!quizStepContainer) return;

    if (currentStep >= quizData.length) {
      renderResult();
      return;
    }

    const currentQuiz = quizData[currentStep];
    const progressPercent = Math.round(((currentStep) / quizData.length) * 100);

    quizStepContainer.innerHTML = `
      <div class="quiz-header">
        <div class="quiz-progress">
          <div class="quiz-progress-bar" style="width: ${progressPercent}%;"></div>
        </div>
        <div class="quiz-question-title">${currentQuiz.question}</div>
      </div>
      <div class="quiz-options">
        ${currentQuiz.options.map((opt, idx) => `
          <button class="quiz-option-btn" data-idx="${idx}">
            ${opt.text}
          </button>
        `).join('')}
      </div>
    `;

    quizStepContainer.querySelectorAll('.quiz-option-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const idx = parseInt(e.currentTarget.getAttribute('data-idx'));
        const selected = currentQuiz.options[idx];
        
        Object.keys(selected.score).forEach(key => {
          userScores[key] = (userScores[key] || 0) + selected.score[key];
        });

        currentStep++;
        renderQuestion();
      });
    });
  };

  const renderResult = () => {
    let resultType = 'healing';
    let maxScore = -1;

    Object.keys(userScores).forEach(key => {
      if (userScores[key] > maxScore) {
        maxScore = userScores[key];
        resultType = key;
      }
    });

    const results = {
      detox: {
        icon: "🌿",
        title: "워드로브 디톡스 & 미니멀 힐링 처방",
        desc: "불필요한 의복과 감정의 무게를 덜어내는 옷장 클리닉이 필요합니다. 비움으로써 새로운 에너지를 채우는 패션 테라피 솔루션을 추천합니다.",
        course: "패션테라피스트 2급 입문과정"
      },
      identity: {
        icon: "💎",
        title: "시그니처 스타일 & 자존감 회복 처방",
        desc: "타인의 시선에서 벗어나 본연의 고유한 매력을 찾아야 할 때입니다. 나만의 정체성을 드러내는 컬러 및 실루엣 처방을 추천합니다.",
        course: "패션테라피스트 1급 전문가과정"
      },
      healing: {
        icon: "✨",
        title: "감정 치유 컬러 & 텍스처 테라피 처방",
        desc: "의복의 촉감과 온기, 치유의 컬러 팔레트를 통해 지친 내면을 다독여주는 감정 테라피가 가장 효과적인 상태입니다.",
        course: "1:1 맞춤형 개인 테라피 세션"
      },
      pro: {
        icon: "🎓",
        title: "전문 패션테라피스트 인재형",
        desc: "패션과 심리 치유 분야에 대한 높은 이해와 열정을 가지고 계십니다. 공인 자격증을 통해 전문 상담가 또는 강사로 성장해보세요.",
        course: "공인 패션테라피 강사 과정"
      }
    };

    const res = results[resultType] || results.healing;

    quizStepContainer.innerHTML = `
      <div class="quiz-result-card">
        <div class="quiz-result-icon">${res.icon}</div>
        <h3 class="quiz-result-title">${res.title}</h3>
        <p class="quiz-result-desc">${res.desc}</p>
        <div style="margin-bottom: 24px;">
          <strong style="color: #ffffff; font-size: 0.95rem;">추천 맞춤 프로그램: </strong>
          <span style="color: var(--primary-accent); font-weight: 700;">${res.course}</span>
        </div>
        <div style="display: flex; gap: 14px; justify-content: center; flex-wrap: wrap;">
          <a href="#contact" class="btn btn-primary">맞춤 상담 신청하기</a>
          <button id="btn-quiz-retry" class="btn btn-outline">다시 테스트하기</button>
        </div>
      </div>
    `;

    document.getElementById('btn-quiz-retry')?.addEventListener('click', () => {
      currentStep = 0;
      Object.keys(userScores).forEach(k => userScores[k] = 0);
      renderQuestion();
    });
  };

  // Start Quiz
  renderQuestion();

  // 3. Contact Form Submission Handling
  const contactForm = document.getElementById('contact-form');
  if (contactForm) {
    contactForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const name = document.getElementById('name')?.value || '';
      alert(`[KFTA 접수 완료]\n${name}님, 상담 문의가 정상적으로 접수되었습니다.\n담당자가 24시간 이내에 연락드리겠습니다.`);
      contactForm.reset();
    });
  }
});
