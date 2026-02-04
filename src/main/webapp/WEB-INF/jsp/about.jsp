<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us | Royal Events</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <style>
            .reveal {
                opacity: 0;
                transform: translateY(30px);
                transition: all 0.8s ease-out;
            }

            .reveal.active {
                opacity: 1;
                transform: translateY(0);
            }

            /* Ensure content is visible immediately if JS fails or for static rendering */
            .reveal.active {
                opacity: 1;
            }
        </style>
    </head>

    <body>

        <!-- Navigation -->
        <%@ include file="common/navbar.jsp" %>

            <!-- Header for About Page -->
            <header class="py-5 bg-dark text-white text-center"
                style="margin-top: 56px; background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('https://images.unsplash.com/photo-1519167758481-83f550bb49b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80'); background-size: cover; background-position: center; padding: 180px 0 !important;">
                <div class="container custom-header-content">
                    <h1 class="display-3 fw-bold reveal"
                        style="color: var(--accent-gold); text-shadow: 2px 2px 4px rgba(0,0,0,0.5);">About Royal Events
                    </h1>
                    <p class="lead mb-0 reveal" style="font-size: 1.5rem; letter-spacing: 3px;">Exquisiteness Redefined
                    </p>
                </div>
            </header>

            <!-- Main Content -->
            <section id="about-content" style="padding: 100px 0;">
                <div class="container">
                    <!-- Who We Are -->
                    <div class="row align-items-center mb-5">
                        <div class="col-lg-6 mb-4 reveal">
                            <div class="about-img-container position-relative">
                                <img src="https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
                                    class="img-fluid" alt="Team Planning"
                                    style="border: 2px solid var(--accent-gold); box-shadow: 15px 15px 0px rgba(212, 175, 55, 0.2);">
                            </div>
                        </div>
                        <div class="col-lg-6 reveal" style="padding-left: 50px;">
                            <h2 class="section-title text-start mb-4">Who We Are</h2>
                            <p class="lead" style="color: var(--primary-maroon); font-weight: 700;">Creativity.
                                Precision. Heart.</p>
                            <p>We are a passionate event management team that turns ideas into unforgettable
                                experiences. From intimate celebrations to large-scale corporate gatherings, we plan,
                                design, and execute events with creativity, precision, and heart. Every event we handle
                                is treated as a unique story waiting to be beautifully told.</p>
                        </div>
                    </div>

                    <!-- What We Do -->
                    <div class="row mt-5 mb-5 reveal">
                        <div class="col-12 text-center mb-5">
                            <h2 class="section-title">What We Do</h2>
                            <p class="mb-5 text-muted">Specializing in End-to-End Execution</p>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="p-4 h-100"
                                style="background: #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); border-left: 4px solid var(--accent-gold);">
                                <ul class="list-unstyled mb-0">
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-ring me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Weddings &
                                            Engagements</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-glass-cheers me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Birthday
                                            Parties & Private Celebrations</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-briefcase me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Corporate
                                            Events</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-users me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Conferences &
                                            Seminars</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 mb-4">
                            <div class="p-4 h-100"
                                style="background: #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); border-left: 4px solid var(--accent-gold);">
                                <ul class="list-unstyled mb-0">
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-bullhorn me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Product
                                            Launches & Brand Promotions</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-palette me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Themed Décor
                                            & Stage Design</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i class="fas fa-music me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Audio-Visual,
                                            Lighting & Sound</span></li>
                                    <li class="mb-3 d-flex align-items-center"><i
                                            class="fas fa-clipboard-check me-3 fa-lg"
                                            style="color: var(--accent-gold);"></i> <span class="fw-bold">Vendor
                                            Coordination, Logistics & On-site Management</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Our Approach & Why Choose Us -->
                    <div class="row mt-5 pt-5 align-items-center">
                        <div class="col-lg-6 reveal order-lg-2 mb-4">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
                                    class="img-fluid" alt="Our Approach"
                                    style="border: 2px solid var(--accent-gold); box-shadow: -15px 15px 0px rgba(212, 175, 55, 0.2);">
                            </div>
                        </div>
                        <div class="col-lg-6 reveal order-lg-1 mb-4" style="padding-right: 40px;">
                            <h3 class="mb-4 section-title text-start">Our Approach</h3>
                            <p class="mb-5">We believe great events don’t happen by chance—they are crafted with careful
                                planning and flawless coordination. We listen first, understand your vision, and then
                                bring it to life with thoughtful design, trusted vendors, and seamless management.</p>

                            <h3 class="mb-4 section-title text-start">Why Choose Us</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list-unstyled">
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Creative concepts tailored to
                                            your theme and budget</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Professional planning with
                                            attention to every detail</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Reliable vendor network and
                                            quality assurance</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Experienced & Dedicated Team
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="list-unstyled">
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Transparent communication from
                                            start to finish</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Stress-free experience for you
                                            and your guests</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> Award-Winning Experience &
                                            Design</li>
                                        <li class="mb-3"><i class="fas fa-check-circle me-3"
                                                style="color: var(--accent-gold);"></i> 24/7 Support & Crisis Management
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Our Mission & Promise -->
                    <div class="row mt-5 mb-5 align-items-center">
                        <div class="col-lg-6 reveal mb-4">
                            <div class="p-5 h-100 d-flex flex-column justify-content-center text-center"
                                style="background-color: var(--bg-light); border: 1px solid var(--accent-gold);">
                                <h3 class="mb-4" style="color: var(--primary-maroon);">Our Mission</h3>
                                <p class="fst-italic mb-5">"To create meaningful, memorable events that leave lasting
                                    impressions and joyful moments for every client."</p>

                                <h3 class="mb-4" style="color: var(--primary-maroon);">Our Promise</h3>
                                <p class="fst-italic">"You enjoy the celebration. We handle everything else."</p>
                            </div>
                        </div>
                        <div class="col-lg-6 reveal mb-4">
                            <div class="position-relative">
                                <img src="${pageContext.request.contextPath}/images/mission_image.jpg" class="img-fluid"
                                    alt="Party Celebration"
                                    style="border: 2px solid var(--accent-gold); box-shadow: 15px 15px 0px rgba(212, 175, 55, 0.2);">
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- Scripts -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <script>
                function reveal() {
                    var reveals = document.querySelectorAll('.reveal');
                    for (var i = 0; i < reveals.length; i++) {
                        var windowHeight = window.innerHeight;
                        var revealTop = reveals[i].getBoundingClientRect().top;
                        if (revealTop < windowHeight - 100) {
                            reveals[i].classList.add('active');
                        }
                    }
                }
                window.addEventListener('scroll', reveal);
                window.onload = reveal;
            </script>
    </body>

    </html>