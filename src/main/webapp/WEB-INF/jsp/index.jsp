<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Royal Events | Luxury Management</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <style>
            html {
                scroll-behavior: smooth;
            }

            .reveal {
                opacity: 0;
                transform: translateY(30px);
                transition: all 0.8s ease-out;
            }

            .reveal.active {
                opacity: 1;
                transform: translateY(0);
            }
        </style>
    </head>

    <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100">

        <!-- Navigation -->
        <%@ include file="common/navbar.jsp" %>

            <!-- Hero Section -->
            <section id="home" class="hero">
                <video autoplay muted loop playsinline id="hero-video"
                    poster="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?auto=format&fit=crop&q=80&w=2070">
                    <!-- Pexels Wedding Video Placeholder -->
                    <source src="https://videos.pexels.com/video-files/3195866/3195866-uhd_2560_1440_25fps.mp4"
                        type="video/mp4">
                    Your browser does not support the video tag.
                </video>
                <div class="hero-overlay"></div>
                <div class="container text-center">
                    <div class="reveal">
                        <div class="d-inline-block border border-gold px-4 py-1 mb-4"
                            style="border-color: var(--accent-gold) !important;">
                            <span class="text-uppercase"
                                style="color: var(--accent-gold); letter-spacing: 5px; font-weight: 700; font-size: 0.8rem;">Established
                                2010</span>
                        </div>
                        <h1>Exquisiteness <br><span style="color: var(--accent-gold);">Redefined</span></h1>
                        <p>Creating atmospheric luxury experiences for the most discerning global clients.</p>
                        <div class="mt-5">
                            <a href="#contact" class="btn btn-primary-custom">Request Consultation</a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- About Section -->
            <section id="about" style="padding: 120px 0;">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 mb-5 reveal">
                            <div class="about-img-container">
                                <img src="https://images.unsplash.com/photo-1519225421980-715cb0215aed?auto=format&fit=crop&q=80&w=1000"
                                    class="img-fluid" alt="Luxury Setup" style="border: 2px solid var(--accent-gold);">
                            </div>
                        </div>
                        <div class="col-lg-6 reveal" style="padding-left: 50px;">
                            <h2 class="section-title text-start mb-4">The Royal Standard</h2>
                            <p class="lead" style="color: var(--primary-maroon); font-weight: 700;">Artistry. Precision.
                                Legacy.</p>
                            <p>At Royal Events, we don't just plan events; we curate atmospheres. Every detail is
                                meticulously chosen to reflect your unique persona, from the thread count of the linens
                                to the cadence of the evening.</p>
                            <div class="row mt-5">
                                <div class="col-4">
                                    <h2 style="color: var(--primary-maroon); font-weight: 900;">15Y</h2>
                                    <p class="small text-uppercase">Heritage</p>
                                </div>
                                <div class="col-4">
                                    <h2 style="color: var(--primary-maroon); font-weight: 900;">500+</h2>
                                    <p class="small text-uppercase">Events</p>
                                </div>
                                <div class="col-4">
                                    <h2 style="color: var(--primary-maroon); font-weight: 900;">100%</h2>
                                    <p class="small text-uppercase">Bespoke</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Services Section -->
            <section id="services" style="background-color: var(--bg-light);">
                <div class="container">
                    <h2 class="section-title">Our Experiences</h2>
                    <div class="row g-4 text-center">
                        <div class="col-md-4 reveal">
                            <div class="custom-card h-100">
                                <i class="fas fa-crown fa-3x"></i>
                                <h3>Signature Weddings</h3>
                                <p class="small">Turning fairytales into atmospheric realities with end-to-end
                                    management.</p>
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="custom-card h-100">
                                <i class="fas fa-landmark fa-3x"></i>
                                <h3>Corporate Galas</h3>
                                <p class="small">Strategic event design for high-profile business gatherings and global
                                    brands.</p>
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="custom-card h-100">
                                <i class="fas fa-glass-cheers fa-3x"></i>
                                <h3>Private Soirées</h3>
                                <p class="small">Intimate, high-exclusive celebrations tailored for the world's most
                                    discerning hosts.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Artistry / Blog Section -->
            <section id="blogs">
                <div class="container">
                    <h2 class="section-title">The Artistry</h2>
                    <div class="row g-4">
                        <div class="col-md-4 reveal">
                            <div class="blog-card">
                                <img src="https://images.unsplash.com/photo-1469334031218-e382a71b716b?auto=format&fit=crop&q=80&w=1000"
                                    class="img-fluid" alt="Blog">
                                <div class="blog-text">
                                    <h4>Design Philosophy</h4>
                                    <p>Exploring the balance between grand minimalism and atmospheric richness.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="blog-card">
                                <img src="https://images.unsplash.com/photo-1544161515-41e73027264a?auto=format&fit=crop&q=80&w=1000"
                                    class="img-fluid" alt="Blog">
                                <div class="blog-text">
                                    <h4>Venue Curation</h4>
                                    <p>A look into the world's most exclusive and moody architectural gems.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="blog-card">
                                <img src="https://images.unsplash.com/photo-1519741497674-611481863552?auto=format&fit=crop&q=80&w=1000"
                                    class="img-fluid" alt="Blog">
                                <div class="blog-text">
                                    <h4>Michelin Standards</h4>
                                    <p>How we collaborate with world-renowned chefs to elevate event gastronomy.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Gallery Preview Section -->
            <section id="gallery" style="background-color: var(--pure-white);">
                <div class="container text-center">
                    <h2 class="section-title">Visual Anthology</h2>
                    <p class="mb-5 lead text-muted">A glimpse into our world of bespoke elegance.</p>
                    <div class="row g-4 mb-5">
                        <div class="col-md-4 reveal">
                            <div class="gallery-preview">
                                <img src="https://images.unsplash.com/photo-1519225421980-715cb0215aed?auto=format&fit=crop&q=80&w=800"
                                    class="img-fluid" alt="Gallery Preview 1"
                                    style="height: 300px; object-fit: cover; width: 100%;">
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="gallery-preview">
                                <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?auto=format&fit=crop&q=80&w=800"
                                    class="img-fluid" alt="Gallery Preview 2"
                                    style="height: 300px; object-fit: cover; width: 100%;">
                            </div>
                        </div>
                        <div class="col-md-4 reveal">
                            <div class="gallery-preview">
                                <img src="https://images.unsplash.com/photo-1519167758481-83f550bb49b3?auto=format&fit=crop&q=80&w=800"
                                    class="img-fluid" alt="Gallery Preview 3"
                                    style="height: 300px; object-fit: cover; width: 100%;">
                            </div>
                        </div>
                    </div>
                    <div class="reveal">
                        <a href="${pageContext.request.contextPath}/gallery" class="btn btn-primary-custom">View Full
                            Gallery</a>
                    </div>
                </div>
            </section>

            <!-- Contact Section -->
            <section id="contact" style="background-color: var(--bg-light);">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-5 reveal">
                            <h2 class="section-title text-start mb-4">The Concierge</h2>
                            <p class="mb-5">Our elite planning team is ready to begin the journey of transforming your
                                vision into reality.</p>
                            <div class="mb-4">
                                <p><i class="fas fa-map-marker-alt me-3" style="color: var(--primary-maroon);"></i> 123
                                    Luxury Lane, London SW1</p>
                                <p><i class="fas fa-phone me-3" style="color: var(--primary-maroon);"></i> +1 (800)
                                    ROYAL-EV</p>
                                <p><i class="fas fa-envelope me-3" style="color: var(--primary-maroon);"></i>
                                    concierge@royal.com</p>
                            </div>
                        </div>
                        <div class="col-lg-7 reveal">
                            <div class="contact-form-container">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" placeholder="Full Name">
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" class="form-control" placeholder="Email Address">
                                        </div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Subject / Event Type">
                                    <textarea class="form-control" rows="4"
                                        placeholder="Share Your Vision..."></textarea>
                                    <button class="btn btn-primary-custom w-100">Send Dossier</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <%@ include file="common/footer.jsp" %>

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