// assets/js/auth.js
// A simple localStorage-based mock authentication & VOD entitlement system

const Auth = {
    // Check if user is logged in
    isLoggedIn: function() {
        return localStorage.getItem('kfta_user') !== null;
    },

    // Get current user info
    getUser: function() {
        const user = localStorage.getItem('kfta_user');
        return user ? JSON.parse(user) : null;
    },

    // Sign up (연동 전 임시 — 비밀번호는 저장하지 않습니다)
    signup: function(profile) {
        const user = {
            name: profile.name,
            email: profile.email,
            phone: profile.phone || '',
            marketing: !!profile.marketing,
            provider: profile.provider || 'email',
            joinedAt: new Date().toISOString()
        };
        localStorage.setItem('kfta_user', JSON.stringify(user));
        if (!localStorage.getItem('kfta_purchases')) {
            localStorage.setItem('kfta_purchases', JSON.stringify([]));
        }
        return true;
    },

    // Login user
    login: function(email, password) {
        // Mock validation: accept any email/password for demo purposes
        const user = {
            email: email,
            name: email.split('@')[0],
            joinedAt: new Date().toISOString()
        };
        localStorage.setItem('kfta_user', JSON.stringify(user));
        
        // Initialize empty purchases if not exists
        if (!localStorage.getItem('kfta_purchases')) {
            localStorage.setItem('kfta_purchases', JSON.stringify([]));
        }
        return true;
    },

    // Logout
    logout: function() {
        localStorage.removeItem('kfta_user');
        window.location.href = 'index.html';
    },

    // Purchase a VOD class
    purchaseClass: function(classId, className) {
        if (!this.isLoggedIn()) return false;
        
        let purchases = JSON.parse(localStorage.getItem('kfta_purchases') || '[]');
        
        // Add if not already purchased
        if (!purchases.find(p => p.id === classId)) {
            purchases.push({
                id: classId,
                name: className,
                purchasedAt: new Date().toISOString()
            });
            localStorage.setItem('kfta_purchases', JSON.stringify(purchases));
        }
        return true;
    },

    // Check if user owns a specific class
    hasPurchased: function(classId) {
        if (!this.isLoggedIn()) return false;
        const purchases = JSON.parse(localStorage.getItem('kfta_purchases') || '[]');
        return purchases.some(p => p.id === classId);
    },

    // Get all purchased classes
    getPurchases: function() {
        if (!this.isLoggedIn()) return [];
        return JSON.parse(localStorage.getItem('kfta_purchases') || '[]');
    },

    // Update Navbar UI based on login status
    updateNavbar: function() {
        const btn = document.getElementById('navAuth');
        if (btn) {
            if (this.isLoggedIn()) {
                btn.textContent = '마이 클래스';
                btn.setAttribute('href', 'mypage.html');
                btn.className = 'self-center shrink-0 ml-4 text-xs font-bold text-white bg-kftaRed hover:bg-red-900 px-4 py-1.5 rounded-full transition-colors whitespace-nowrap';
            } else {
                btn.textContent = '로그인';
                btn.setAttribute('href', 'login.html');
                btn.className = 'self-center shrink-0 ml-4 text-xs font-bold text-white bg-kftaGreen hover:bg-green-900 px-4 py-1.5 rounded-full transition-colors whitespace-nowrap';
            }
        }
        const authContainer = document.getElementById('auth-nav-item');
        if (!authContainer) return;
        authContainer.innerHTML = this.isLoggedIn()
            ? '<a href="mypage.html" class="text-sm font-bold text-kftaRed uppercase tracking-wide hover:opacity-80">MY CLASS</a>'
            : '<a href="login.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">LOGIN</a>';
    }
};


// Automatically update navbar on page load
document.addEventListener('DOMContentLoaded', () => {
    Auth.updateNavbar();
});
