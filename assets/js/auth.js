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
        const authContainer = document.getElementById('auth-nav-item');
        if (!authContainer) return;

        if (this.isLoggedIn()) {
            authContainer.innerHTML = `
                <a href="mypage.html" class="text-sm font-bold text-kftaRed uppercase tracking-wide hover:opacity-80 flex items-center gap-1">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path></svg>
                    MY CLASS
                </a>
            `;
        } else {
            authContainer.innerHTML = `
                <a href="login.html" class="text-sm font-bold text-kftaGreen uppercase tracking-wide hover:text-kftaRed">LOGIN</a>
            `;
        }
    }
};

// Automatically update navbar on page load
document.addEventListener('DOMContentLoaded', () => {
    Auth.updateNavbar();
});
