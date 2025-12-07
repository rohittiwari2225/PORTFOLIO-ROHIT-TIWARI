// Defines the sequence and timing for the code simulation lines
// Defines the sequence and timing for the code simulation lines
const codeLines = [
    { id: 'line-1', delay: 200 },
    { id: 'line-2', delay: 1000 },
    { id: 'line-3', delay: 1800 },
    { id: 'line-4', delay: 2600 },
    { id: 'line-5', delay: 3200 },
];
// Total time before fade-out starts
const loadingDuration = 3500;

/**
 * Simulates the code being typed by revealing lines sequentially.
 */
function runCodeSimulation() {
    codeLines.forEach(lineConfig => {
        const lineElement = document.getElementById(lineConfig.id);
        if (lineElement) {
            // Set a timeout to reveal the line based on its delay
            setTimeout(() => {
                // CSS transition handles the smooth reveal
                lineElement.style.opacity = '1';
            }, lineConfig.delay);
        }
    });
}

/**
 * Main initialization logic for the preloader.
 */
document.addEventListener('DOMContentLoaded', () => {
    const preloader = document.getElementById('preloader');
    const loadingBar = document.getElementById('loading-bar');

    // 1. Start code simulation immediately
    runCodeSimulation();

    // 2. Start the loading bar animation
    if (loadingBar) {
        // Set the width to 100% after a small delay to trigger the CSS transition
        setTimeout(() => {
            loadingBar.style.width = '100%';
        }, 50);
    }

    // 3. Hide preloader after the total animation duration
    setTimeout(() => {
        if (preloader) {
            // Start the fade-out transition
            preloader.style.opacity = '0';
            setTimeout(() => {
                // Completely remove it from the flow after fade-out completes
                preloader.style.display = 'none';
                console.log("Preloader finished. Main content ready.");
                // In a real application, you would make the main content visible here
            }, 500);
        }
    }, loadingDuration);
});



// Enhanced Portfolio JavaScript with Modern Features

document.addEventListener('DOMContentLoaded', function () {
    // Initialize all features
    initSmoothScrolling();
    initNavbarScroll();
    initTypewriterEffect();
    initScrollAnimations();
    initSkillBars();
    initContactForm();
    initMobileMenu();
    initParticleBackground();
    initProjectCardAnimations();
    initScrollToTop();
    initThemeToggle();
    initCursorEffect();
    initProgressBar();
});


// ===== SMOOTH SCROLLING =====
function initSmoothScrolling() {
    // Select all anchor links that start with #
    const links = document.querySelectorAll('a[href^="#"]');

    links.forEach(link => {
        link.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href').substring(1);
            const targetSection = document.getElementById(targetId);

            if (targetSection) {
                const navbarHeight = document.querySelector('.navbar').offsetHeight;
                const targetPosition = targetSection.offsetTop - navbarHeight;

                window.scrollTo({
                    top: targetPosition,
                    behavior: 'smooth'
                });

                // Update active nav link
                updateActiveNavLink(targetId);
            }
        });
    });
}


// ===== NAVBAR SCROLL EFFECT =====
function initNavbarScroll() {
    const navbar = document.querySelector('.navbar');
    let lastScrollTop = 0;

    window.addEventListener('scroll', function () {
        const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

        // Add scrolled class for background effect
        if (scrollTop > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }

        // Hide/show navbar on scroll
        if (scrollTop > lastScrollTop && scrollTop > 100) {
            navbar.style.transform = 'translateY(-100%)';
        } else {
            navbar.style.transform = 'translateY(0)';
        }

        lastScrollTop = scrollTop;

        // Update active section
        updateActiveSection();
    });
}

// ===== TYPEWRITER EFFECT =====
function initTypewriterEffect() {
    const texts = [
        'Java Developer',
        'Full-Stack Engineer',
        'Problem Solver',
        'Tech Enthusiast',
        'AIML Developer'
    ];

    const typingElement = document.getElementById('typing-text');
    if (!typingElement) return;

    let textIndex = 0;
    let charIndex = 0;
    let isDeleting = false;
    let typingSpeed = 100;

    function typeWriter() {
        const currentText = texts[textIndex];

        if (isDeleting) {
            typingElement.textContent = currentText.substring(0, charIndex - 1);
            charIndex--;
            typingSpeed = 50;
        } else {
            typingElement.textContent = currentText.substring(0, charIndex + 1);
            charIndex++;
            typingSpeed = 100;
        }

        if (!isDeleting && charIndex === currentText.length) {
            setTimeout(() => {
                isDeleting = true;
            }, 2000);
        } else if (isDeleting && charIndex === 0) {
            isDeleting = false;
            textIndex = (textIndex + 1) % texts.length;
        }

        setTimeout(typeWriter, typingSpeed);
    }

    typeWriter();
}

// ===== SCROLL ANIMATIONS =====
function initScrollAnimations() {
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function (entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');

                // Trigger skill bars animation
                if (entry.target.classList.contains('skills')) {
                    animateSkillBars();
                }

                // Trigger counter animation
                if (entry.target.classList.contains('stats')) {
                    animateCounters();
                }
            }
        });
    }, observerOptions);

    // Observe elements for animation
    const animateElements = document.querySelectorAll('.about, .skills, .education, .projects, .contact, .timeline-item, .project-card, .stat');
    animateElements.forEach(el => {
        el.classList.add('animate-on-scroll');
        observer.observe(el);
    });
}

// ===== SKILL BARS ANIMATION =====
function initSkillBars() {
    // This will be triggered by scroll animation
}

function animateSkillBars() {
    const skillBars = document.querySelectorAll('.skill-progress');

    skillBars.forEach(bar => {
        const width = bar.getAttribute('data-width');
        setTimeout(() => {
            bar.style.width = width;
        }, 500);
    });
}

// ===== COUNTER ANIMATION =====
function animateCounters() {
    const counters = document.querySelectorAll('.stat h3');

    counters.forEach(counter => {
        const target = parseInt(counter.textContent.replace('+', ''));
        const increment = target / 50;
        let current = 0;

        const timer = setInterval(() => {
            current += increment;
            counter.textContent = Math.ceil(current) + '+';

            if (current >= target) {
                counter.textContent = target + '+';
                clearInterval(timer);
            }
        }, 40);
    });
}

// ===== CONTACT FORM =====
function initContactForm() {
    const form = document.getElementById('contact-form');
    if (!form) return;

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        // Get form data
        const formData = new FormData(form);
        const name = formData.get('name');
        const email = formData.get('email');
        const message = formData.get('message');

        // Simple validation
        if (!name || !email || !message) {
            showNotification('Please fill in all fields', 'error');
            return;
        }

        if (!isValidEmail(email)) {
            showNotification('Please enter a valid email address', 'error');
            return;
        }

        // Simulate form submission
        const submitBtn = form.querySelector('button[type="submit"]');
        const originalText = submitBtn.innerHTML;

        submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Sending...';
        submitBtn.disabled = true;

        setTimeout(() => {
            submitBtn.innerHTML = originalText;
            submitBtn.disabled = false;
            form.reset();
            showNotification('Message sent successfully!', 'success');
        }, 2000);
    });
}

// ===== MOBILE MENU =====
function initMobileMenu() {
    const mobileToggle = document.querySelector('.mobile-menu-toggle');
    const navLinks = document.querySelector('.navbar ul');

    if (!mobileToggle || !navLinks) return;

    mobileToggle.addEventListener('click', function () {
        navLinks.classList.toggle('mobile-menu-open');
        this.classList.toggle('active');
    });

    // Close menu when clicking on a link
    const navLinkItems = document.querySelectorAll('.navbar ul li a');
    navLinkItems.forEach(link => {
        link.addEventListener('click', () => {
            navLinks.classList.remove('mobile-menu-open');
            mobileToggle.classList.remove('active');
        });
    });
}

// ===== PARTICLE BACKGROUND =====
function initParticleBackground() {
    // Create floating particles
    const particleContainer = document.createElement('div');
    particleContainer.className = 'particle-container';
    particleContainer.style.cssText = `
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        pointer-events: none;
        z-index: -1;
        overflow: hidden;
    `;

    document.body.appendChild(particleContainer);

    // Create particles
    for (let i = 0; i < 50; i++) {
        createParticle(particleContainer);
    }
}

function createParticle(container) {
    const particle = document.createElement('div');
    particle.style.cssText = `
        position: absolute;
        width: 2px;
        height: 2px;
        background: rgba(0, 115, 150, 0.3);
        border-radius: 50%;
        animation: float-particle ${Math.random() * 20 + 10}s linear infinite;
        left: ${Math.random() * 100}%;
        top: ${Math.random() * 100}%;
    `;

    container.appendChild(particle);

    // Remove particle after animation
    setTimeout(() => {
        if (particle.parentNode) {
            particle.parentNode.removeChild(particle);
            createParticle(container); // Create new particle
        }
    }, (Math.random() * 20 + 10) * 1000);
}

// ===== PROJECT CARD ANIMATIONS =====
function initProjectCardAnimations() {
    const projectCards = document.querySelectorAll('.project-card');

    projectCards.forEach(card => {
        card.addEventListener('mouseenter', function () {
            this.style.transform = 'translateY(-15px) rotateX(5deg)';
        });

        card.addEventListener('mouseleave', function () {
            this.style.transform = 'translateY(0) rotateX(0)';
        });

        // 3D tilt effect
        card.addEventListener('mousemove', function (e) {
            const rect = this.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;

            const centerX = rect.width / 2;
            const centerY = rect.height / 2;

            const rotateX = (y - centerY) / 10;
            const rotateY = (centerX - x) / 10;

            this.style.transform = `translateY(-15px) rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
        });
    });
}

// ===== SCROLL TO TOP BUTTON =====
function initScrollToTop() {
    // Create scroll to top button
    const scrollTopBtn = document.createElement('button');
    scrollTopBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
    scrollTopBtn.className = 'scroll-top-btn';
    scrollTopBtn.style.cssText = `
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 50px;
        height: 50px;
        background: var(--gradient-primary);
        color: white;
        border: none;
        border-radius: 50%;
        cursor: pointer;
        opacity: 0;
        transform: translateY(100px);
        transition: all 0.3s ease;
        z-index: 1000;
        box-shadow: var(--shadow-primary);
    `;

    document.body.appendChild(scrollTopBtn);

    // Show/hide button on scroll
    window.addEventListener('scroll', function () {
        if (window.pageYOffset > 300) {
            scrollTopBtn.style.opacity = '1';
            scrollTopBtn.style.transform = 'translateY(0)';
        } else {
            scrollTopBtn.style.opacity = '0';
            scrollTopBtn.style.transform = 'translateY(100px)';
        }
    });

    // Scroll to top on click
    scrollTopBtn.addEventListener('click', function () {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// ===== THEME TOGGLE =====
function initThemeToggle() {
    // This can be expanded for light/dark theme switching
    // For now, we'll add a subtle theme variation
}

// ===== CURSOR EFFECT =====
function initCursorEffect() {
    // Create custom cursor for desktop
    if (window.innerWidth > 768) {
        const cursor = document.createElement('div');
        cursor.className = 'custom-cursor';
        cursor.style.cssText = `
            position: fixed;
            width: 20px;
            height: 20px;
            background: rgba(0, 115, 150, 0.5);
            border-radius: 50%;
            pointer-events: none;
            z-index: 9999;
            transition: transform 0.1s ease;
        `;

        document.body.appendChild(cursor);

        document.addEventListener('mousemove', (e) => {
            cursor.style.left = e.clientX - 10 + 'px';
            cursor.style.top = e.clientY - 10 + 'px';
        });

        // Scale cursor on hover over interactive elements
        const interactiveElements = document.querySelectorAll('a, button, .project-card, .contact-item');
        interactiveElements.forEach(el => {
            el.addEventListener('mouseenter', () => {
                cursor.style.transform = 'scale(2)';
            });
            el.addEventListener('mouseleave', () => {
                cursor.style.transform = 'scale(1)';
            });
        });
    }
}

// ===== PROGRESS BAR =====
function initProgressBar() {
    // Create reading progress bar
    const progressBar = document.createElement('div');
    progressBar.style.cssText = `
        position: fixed;
        top: 0;
        left: 0;
        width: 0%;
        height: 3px;
        background: var(--gradient-primary);
        z-index: 1001;
        transition: width 0.1s ease;
    `;

    document.body.appendChild(progressBar);

    window.addEventListener('scroll', function () {
        const scrollTop = window.pageYOffset;
        const docHeight = document.documentElement.scrollHeight - window.innerHeight;
        const scrollPercent = (scrollTop / docHeight) * 100;

        progressBar.style.width = scrollPercent + '%';
    });
}

// ===== UTILITY FUNCTIONS =====

function updateActiveNavLink(targetId) {
    const navLinks = document.querySelectorAll('.navbar a[href^="#"]');
    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href') === '#' + targetId) {
            link.classList.add('active');
        }
    });
}

function updateActiveSection() {
    const sections = document.querySelectorAll('section, .home, .about, .skills, .education, .projects, .contact');
    const navbarHeight = document.querySelector('.navbar').offsetHeight;

    sections.forEach(section => {
        const rect = section.getBoundingClientRect();
        const sectionId = section.id;

        if (rect.top <= navbarHeight && rect.bottom >= navbarHeight) {
            updateActiveNavLink(sectionId);
        }
    });
}

function isValidEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function showNotification(message, type) {
    // Create notification element
    const notification = document.createElement('div');
    notification.textContent = message;
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 1rem 2rem;
        border-radius: 8px;
        color: white;
        font-weight: 500;
        z-index: 10000;
        opacity: 0;
        transform: translateY(-20px);
        transition: all 0.3s ease;
        ${type === 'success' ? 'background: #10b981;' : 'background: #ef4444;'}
    `;

    document.body.appendChild(notification);

    // Show notification
    setTimeout(() => {
        notification.style.opacity = '1';
        notification.style.transform = 'translateY(0)';
    }, 100);

    // Hide notification
    setTimeout(() => {
        notification.style.opacity = '0';
        notification.style.transform = 'translateY(-20px)';
        setTimeout(() => {
            document.body.removeChild(notification);
        }, 300);
    }, 3000);
}

// ===== KEYBOARD NAVIGATION =====
document.addEventListener('keydown', function (e) {
    // Press 'H' to go to home
    if (e.key.toLowerCase() === 'h' && !e.ctrlKey && !e.altKey) {
        const homeSection = document.getElementById('home');
        if (homeSection) {
            homeSection.scrollIntoView({ behavior: 'smooth' });
        }
    }

    // Press 'C' to go to contact
    if (e.key.toLowerCase() === 'c' && !e.ctrlKey && !e.altKey) {
        const contactSection = document.getElementById('contact');
        if (contactSection) {
            contactSection.scrollIntoView({ behavior: 'smooth' });
        }
    }
});

// ===== PERFORMANCE OPTIMIZATION =====
// Throttle scroll events
function throttle(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Apply throttling to scroll events
const throttledScrollHandler = throttle(function () {
    updateActiveSection();
}, 100);

window.addEventListener('scroll', throttledScrollHandler);

// ===== CSS ANIMATIONS (Added via JavaScript) =====
const style = document.createElement('style');
style.textContent = `
    @keyframes float-particle {
        0% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
        10% { opacity: 1; }
        90% { opacity: 1; }
        100% { transform: translateY(-100vh) rotate(360deg); opacity: 0; }
    }
    
    .mobile-menu-open {
        display: flex !important;
        flex-direction: column;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        background: rgba(26, 26, 26, 0.98);
        padding: 2rem;
        backdrop-filter: blur(20px);
    }
    
    .scroll-top-btn:hover {
        transform: translateY(-5px) scale(1.1);
        box-shadow: 0 20px 40px rgba(0, 115, 150, 0.4);
    }
    
    .navbar a.active {
        color: var(--primary-color);
    }
    
    .navbar a.active::after {
        width: 100%;
    }
`;

document.head.appendChild(style);

// ===== LAZY LOADING FOR IMAGES =====
function initLazyLoading() {
    const images = document.querySelectorAll('img[data-src]');

    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('lazy');
                observer.unobserve(img);
            }
        });
    });

    images.forEach(img => imageObserver.observe(img));
}

// Initialize lazy loading
initLazyLoading();
