<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Royal Events | Gallery</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <style>
            .gallery-item {
                position: relative;
                overflow: hidden;
                margin-bottom: 30px;
                border-radius: 4px;
                box-shadow: var(--luxury-shadow);
            }

            .gallery-item img {
                width: 100%;
                height: 300px;
                object-fit: cover;
                transition: transform 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
            }

            .gallery-overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(74, 2, 36, 0.7);
                /* Deep Maroon Overlay */
                opacity: 0;
                transition: opacity 0.4s ease;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
            }

            .gallery-item:hover img {
                transform: scale(1.05);
            }

            .gallery-item:hover .gallery-overlay {
                opacity: 1;
            }

            .gallery-text h5 {
                color: var(--accent-gold);
                font-family: 'Playfair Display', serif;
                transform: translateY(20px);
                transition: transform 0.4s ease;
            }

            .gallery-item:hover .gallery-text h5 {
                transform: translateY(0);
            }

            /* Compact Header for Gallery */
            .gallery-header .section-title {
                font-size: 2.5rem;
                margin-bottom: 20px;
            }

            /* Lightbox Styles */
            .lightbox {
                display: none;
                position: fixed;
                z-index: 9999;
                padding-top: 60px;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgba(5, 5, 5, 0.95);
                backdrop-filter: blur(5px);
            }

            .lightbox-content {
                margin: auto;
                display: block;
                width: auto;
                max-width: 90%;
                max-height: 85vh;
                border: 2px solid var(--accent-gold);
                box-shadow: 0 0 50px rgba(212, 175, 55, 0.2);
            }

            .close {
                position: absolute;
                top: 20px;
                right: 35px;
                color: #f1f1f1;
                font-size: 40px;
                font-weight: 300;
                transition: 0.3s;
                cursor: pointer;
                z-index: 10001;
            }

            .close:hover {
                color: var(--accent-gold);
            }

            .prev,
            .next {
                cursor: pointer;
                position: absolute;
                top: 50%;
                width: auto;
                padding: 20px;
                margin-top: -50px;
                color: white;
                font-weight: bold;
                font-size: 30px;
                transition: 0.3s;
                border-radius: 0 3px 3px 0;
                user-select: none;
                z-index: 10000;
            }

            .next {
                right: 0;
                border-radius: 3px 0 0 3px;
            }

            .prev:hover,
            .next:hover {
                background-color: rgba(212, 175, 55, 0.2);
                color: var(--accent-gold);
            }

            #caption {
                margin: auto;
                display: block;
                width: 80%;
                max-width: 700px;
                text-align: center;
                color: var(--accent-gold);
                padding: 10px 0;
                height: 150px;
                font-family: 'Playfair Display', serif;
                font-size: 1.5rem;
                letter-spacing: 1px;
            }
        </style>
    </head>

    <body style="padding-top: 100px;"> <!-- Padding for fixed navbar -->

        <!-- Navigation -->
        <%@ include file="common/navbar.jsp" %>

            <!-- Page Header -->
            <section class="gallery-header text-center" style="padding: 40px 0 20px;">
                <div class="container">
                    <h1 class="section-title">Exclusive Portfolio</h1>
                    <p class="lead text-muted" style="max-width: 700px; margin: 0 auto; font-size: 1rem;">A curated
                        visual journey
                        through our most exquisite celebrations.</p>
                </div>
            </section>

            <!-- Gallery Grid -->
            <section style="padding-top: 10px; padding-bottom: 100px;">
                <div class="container">
                    <div class="gallery-carousel-wrapper">
                        <button class="nav-btn prev-slide"><i class="fas fa-chevron-left"></i></button>
                        <div class="gallery-track-container">
                            <div class="gallery-track">
                                <!-- Weddings -->
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://cdn.shopify.com/s/files/1/0553/6422/3136/files/emotional-wedding-moments_infiniteloopphoto.jpg?v=1684231967"
                                            alt="Wedding">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Emotional Moments</h5>
                                                <p class="text-white small text-uppercase">Wedding</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/xXls9_idxstQpU-MHo8EftVRUP1UVtP2S64hQTAcy0rzuGetXQ5CMZMrwrOv8S_9Lykcl1Ho3f8rjTdDW2xnONZgHrYkFJJ6XwPoU9ONHd4?purpose=fullsize&v=1"
                                            alt="Wedding">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Timeless Vows</h5>
                                                <p class="text-white small text-uppercase">Wedding</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/-GDfxX0RR4NRkY4YNt9erzdYPtrQn5tI2k_9mXIZEp2GPZ34GXqRuBObfOL2zH_K-l8bIMCWLAyLejqPYJCPNFQnH2WPYWPpUFAbqsDFhCE?purpose=fullsize&v=1"
                                            alt="Wedding">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Bridal Elegance</h5>
                                                <p class="text-white small text-uppercase">Wedding</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://media-api.xogrp.com/images/974dbc53-1b62-4e34-bb4f-ee8b6bb9f453~rs_768.h-cr_81.0.1377.972"
                                            alt="Wedding">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Ceremonial Bliss</h5>
                                                <p class="text-white small text-uppercase">Wedding</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://www.brides.com/thmb/GZtQZa4JV-6bvR8oDwdhYlkBSVo%3D/1500x0/filters%3Ano_upscale%28%29%3Amax_bytes%28150000%29%3Astrip_icc%28%29/FamilyGroupShot_PHOTOBYCHRISANDRUTHPHOTOGRAPHY-7c6014b0ab6443d1a86bb0773183efbc.jpg"
                                            alt="Wedding">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Family Legacy</h5>
                                                <p class="text-white small text-uppercase">Wedding</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Birthdays -->
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://mrtsbakery.com.au/cdn/shop/articles/why-do-we-blow-candles-on-birthday-cake_1456x.png?v=1715490856"
                                            alt="Birthday">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Golden Wishes</h5>
                                                <p class="text-white small text-uppercase">Birthday</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://cdn.prod.website-files.com/660da7b1ad767a155d52e195/69429dbffab1a6a2a4e4af9d_surprise-birthday-party-dubai-reaction-friends.jpg"
                                            alt="Birthday">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Surprise Soirée</h5>
                                                <p class="text-white small text-uppercase">Birthday</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://img.partyslate.com/companies-cover-image/57510/image-6c63d39c-a342-49b1-91ac-4de70f80d092.jpg"
                                            alt="Birthday">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Luxury Jubilee</h5>
                                                <p class="text-white small text-uppercase">Birthday</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Corporate -->
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.squarespace-cdn.com/content/v1/5e2f9e7539df801c9548a5a1/1589142595810-ORMAW5NW2IOGVC55BTZL/Dallas-Corporate-Event-Photographer-3308.JPG?format=1000w"
                                            alt="Corporate">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Executive Summit</h5>
                                                <p class="text-white small text-uppercase">Corporate</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.assetsdelivery.com/compings_v2/kasto/kasto1709/kasto170900105.jpg"
                                            alt="Corporate">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Global Gala</h5>
                                                <p class="text-white small text-uppercase">Corporate</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://imageio.forbes.com/specials-images/dam/imageserve/954610162/960x0.jpg?fit=bounds&height=473&width=711"
                                            alt="Corporate">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Business Elite</h5>
                                                <p class="text-white small text-uppercase">Corporate</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Intimate / Proposal -->
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/5VdEIog_C3vG_jnSdLMEQTjEzOSCKMM-lGFJYvECoFK2qS_xYNFRXUnx_F8A8DJ54EZT-FBEsmTIfQMUIbLU8j7GcIAsX7zy5ODm8W5_Ccg?purpose=fullsize&v=1"
                                            alt="Proposal">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Perfect Question</h5>
                                                <p class="text-white small text-uppercase">Proposal</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://pictime7eus1public-pub-hdf3hecqdpaqeuev.a02.azurefd.net/pictures/32/315/32315737/slideshows/64fbaa0f59f99c09985424ba/images/_pt%28-100%29.jpg?rev=15"
                                            alt="Date Night">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Candlelight Dinner</h5>
                                                <p class="text-white small text-uppercase">Date Night</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/cDZLdDfKPzwwoOcN416jrH4nPtaP1eNPe9QlzfdBxYfqTEheXMNectWG6PknfrUzRSqJopqXK06G3YdbF8gPBvNXIP00EKce-AHsVnEhKNM?purpose=fullsize&v=1"
                                            alt="Date Night">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Evening Elegance</h5>
                                                <p class="text-white small text-uppercase">Date Night</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/3jDvsvCps2cVMUmySxT_UQ4aVfWL7WWpHSl2G1HbvhjV7ZBCNDEqtaRIcbWmVTMTXEKO-4QtT_-Rpm0aAsaKoio3OsusPcwoJ9X3C5dIaQA?purpose=fullsize&v=1"
                                            alt="Proposal">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Intimate Moment</h5>
                                                <p class="text-white small text-uppercase">Proposal</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/RymXEp-PFN_fanecpCOkGKsy6OPItxj1mkET99drMX6ztrZzN2YWD381yac-w18AuIgc5RsU-oWU1L6YDcNE-dADfXluaxTANyn0_siewWU?purpose=fullsize&v=1"
                                            alt="Proposal">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Seaside Romance</h5>
                                                <p class="text-white small text-uppercase">Proposal</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://thevillagerooftop.com/blog/admin/uploads/blogs/1755792580_The%20village%20rooftop.jpg"
                                            alt="Date Night">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Rooftop Views</h5>
                                                <p class="text-white small text-uppercase">Date Night</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://i.pinimg.com/736x/28/69/0e/28690e5748acf635f0fd43c70f5dfbcd.jpg"
                                            alt="Date Night">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Private Celebration</h5>
                                                <p class="text-white small text-uppercase">Date Night</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://info.vincarta.com/hubfs/Imported_Blog_Media/AdobeStock_101081563.jpg"
                                            alt="Date Night">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Love & Laughter</h5>
                                                <p class="text-white small text-uppercase">Date Night</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Promotion -->
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.prismic.io/hubs-main/Z1mXsZbqstJ98U9O_how-to-celebrate-a-promotion.jpg?auto=format%2Ccompress"
                                            alt="Promotion">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Career Milestone</h5>
                                                <p class="text-white small text-uppercase">Promotion</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.squarespace-cdn.com/content/v1/51004763e4b054dfaf04f08d/1534791656559-8N69PH1T1LYMS1H7TM8F/2-28-18-DJH_5531.JPG"
                                            alt="Promotion">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Success Toast</h5>
                                                <p class="text-white small text-uppercase">Promotion</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.squarespace-cdn.com/content/v1/61a53396baa6ba287e6b84fb/16299116-e0fa-4f58-9b35-99e8214c8d98/CandidMoments_3%2B%281%29.jpg"
                                            alt="Promotion">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>New Horizons</h5>
                                                <p class="text-white small text-uppercase">Promotion</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gallery-slide">
                                    <div class="gallery-item"><img
                                            src="https://images.openai.com/static-rsc-3/khShrD_3mslD5XXImJvOdyKh60ZeLrAeHZrfVdE4pHeI1csoEkGYtANU8TQn80hhy9trRU9rHmMIPQ9pvWw93bBi7N14bSQsXkYzGwT-qO4?purpose=fullsize&v=1"
                                            alt="Promotion">
                                        <div class="gallery-overlay">
                                            <div class="gallery-text">
                                                <h5>Grand Achievement</h5>
                                                <p class="text-white small text-uppercase">Promotion</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="nav-btn next-slide"><i class="fas fa-chevron-right"></i></button>
                    </div>

                    <div class="text-center mt-5">
                        <a href="${pageContext.request.contextPath}/#contact" class="btn btn-primary-custom">Book Your
                            Event</a>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <%@ include file="common/footer.jsp" %>




                <!-- ... body content ... -->

                <!-- Lightbox Modal -->
                <div id="galleryLightbox" class="lightbox">
                    <span class="close" onclick="closeLightbox()">&times;</span>
                    <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
                    <a class="next" onclick="changeSlide(1)">&#10095;</a>
                    <img class="lightbox-content" id="lightboxImg">
                    <div id="caption"></div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                <script>
                    let currentSlideIndex = 0;
                    const images = document.querySelectorAll('.gallery-item img');

                    images.forEach((img, index) => {
                        img.style.cursor = "zoom-in";
                        img.addEventListener('click', () => {
                            openLightbox(index);
                        });
                    });

                    function openLightbox(index) {
                        currentSlideIndex = index;
                        const lightbox = document.getElementById('galleryLightbox');
                        const lightboxImg = document.getElementById('lightboxImg');

                        lightbox.updateContent();
                        lightbox.style.display = "block";
                        document.body.style.overflow = "hidden"; // Prevent scrolling
                    }

                    function closeLightbox() {
                        document.getElementById('galleryLightbox').style.display = "none";
                        document.body.style.overflow = "auto";
                    }

                    function changeSlide(n) {
                        currentSlideIndex += n;
                        if (currentSlideIndex >= images.length) { currentSlideIndex = 0; }
                        if (currentSlideIndex < 0) { currentSlideIndex = images.length - 1; }

                        document.getElementById('galleryLightbox').updateContent();
                    }

                    // Helper to update image and caption
                    HTMLElement.prototype.updateContent = function () {
                        const lightboxImg = document.getElementById('lightboxImg');
                        const captionText = document.getElementById('caption');
                        const currentImg = images[currentSlideIndex];

                        lightboxImg.src = currentImg.src;

                        // Try to find the h5 title
                        try {
                            const title = currentImg.nextElementSibling.querySelector('h5').innerText;
                            const type = currentImg.nextElementSibling.querySelector('p').innerText;
                            captionText.innerHTML = title + "<br><span style='font-size:0.9rem; font-family:sans-serif; letter-spacing:2px; color:#fff;'>" + type + "</span>";
                        } catch (e) {
                            captionText.innerHTML = "Royal Events";
                        }
                    }

                    // Key navigation
                    document.addEventListener('keydown', function (event) {
                        if (document.getElementById('galleryLightbox').style.display === "block") {
                            if (event.key === "ArrowLeft") {
                                changeSlide(-1);
                            } else if (event.key === "ArrowRight") {
                                changeSlide(1);
                            } else if (event.key === "Escape") {
                                closeLightbox();
                            }
                        }
                    });

                    // Carousel Navigation
                    const trackContainer = document.querySelector('.gallery-track-container');
                    const prevBtn = document.querySelector('.prev-slide');
                    const nextBtn = document.querySelector('.next-slide');
                    const itemWidth = 350 + 30; // Width + gap

                    prevBtn.addEventListener('click', () => {
                        trackContainer.scrollBy({ left: -itemWidth, behavior: 'smooth' });
                    });

                    nextBtn.addEventListener('click', () => {
                        trackContainer.scrollBy({ left: itemWidth, behavior: 'smooth' });
                    });
                </script>
    </body>

    </html>