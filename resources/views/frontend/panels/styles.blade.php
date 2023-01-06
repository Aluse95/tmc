<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/font-awesome.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/fonts/flaticon.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/bootstrap.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/owl.carousel.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/owl.theme.default.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/animate.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/main.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/inner-pages.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('themes/frontend/xkld/css/tobii.min.css') }}" type="text/css" />
<link rel="stylesheet" href="{{ asset('../cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css') }}" />

<style>
  .services .service .service-icon img {
    background: gold;
    display: inline-block;
    width: 70px;
    height: 70px;
    color: #fff;
    line-height: 70px;
    text-align: center;
    border-radius: 50%;
    -webkit-transition: all 0.2s cubic-bezier(0.47, 0, 0.745, 0.715);
    transition: all 0.2s cubic-bezier(0.47, 0, 0.745, 0.715);
    -webkit-animation: pulse 2s infinite cubic-bezier(0.66, 0, 0, 1);
    animation: pulse 2s infinite cubic-bezier(0.66, 0, 0, 1);
    -webkit-box-shadow: 0 0 0 0 rgba(123, 108, 213, 0.6);
    box-shadow: 0 0 0 0 rgba(123, 108, 213, 0.6);
  }

  @media  screen and (max-width: 991px) {
    .home .owl-carousel {
      height: 100vw;
    }

    .home {
      height: 100vw;
    }

    .display-table-cell {
      height: 100vw;
    }

    .about-us .info {
      order: -1;
    }
  }

  html {
    scroll-behavior: smooth;
  }

  :target:before {
    content: "";
    display: block;
    margin: 25px 0 0;
  }

  .blog .blog-sidebar .sidebar-posts .post-info h5 a:hover,
  .blog .blog-sidebar .tags-list li a:hover {
    color: goldenrod;
  }

  .blog .post .post-content .post-text p {
    padding: 0 !important;
    margin-bottom: 10px;
    color: #000000;
  }

  @media (max-width: 767.98px) {
    .header-inner.active-nav {
      width: 100%;
    }
  }

  .header-inner .my-logo {
    display: inline-grid;
  }

  .logo-img {
    width: auto !important;
    max-width: 100%;
  }

  .main-title h2 {
    text-transform: none;
  }

  .about-us .about-info h4 {
    text-transform: none;
  }

  .about-us .about-image img {
    width: 100%;
    border-radius: 30px;
  }

  .services .service {
    border: 1px solid antiquewhite;
  }

  .testimonials .testimonial-box {
    border: 1px solid #FFF;
  }

  .header-inner .navbar .nav li.active a,
  .header-inner .navbar .nav li:hover a {
    color: #FFFFFF;
  }

  .upper-bar .inner-bar {
    background-color: transparent !important;
  }

  .scroll-top {
    left: 25px;
  }

  #content-detail {
    /* font-family: 'Asap', sans-serif; */
    text-align: justify;
  }

  #content-detail h2 {
    font-size: 30px;
  }

  #content-detail h3 {
    font-size: 24px;
  }

  #content-detail h4 {
    font-size: 18px;
  }

  #content-detail h5,
  #content-detail h6 {
    font-size: 16px;
  }

  #content-detail p {
    margin-top: 0;
    margin-bottom: 0;
  }

  #content-detail h1,
  #content-detail h2,
  #content-detail h3,
  #content-detail h4,
  #content-detail h5,
  #content-detail h6 {
    margin-top: 0;
    margin-bottom: .5rem;
  }

  #content-detail p+h2,
  #content-detail p+.h2 {
    margin-top: 1rem;
  }

  #content-detail h2+p,
  #content-detail .h2+p {
    margin-top: 1rem;
  }

  #content-detail p+h3,
  #content-detail p+.h3 {
    margin-top: 0.5rem;
  }

  #content-detail h3+p,
  #content-detail .h3+p {
    margin-top: 0.5rem;
  }

  #content-detail ul,
  #content-detail ol {
    list-style: inherit;
    padding: 0 0 0 50px;

  }

  #content-detail ul li {
    display: list-item;
    list-style: initial;
  }

  #content-detail ol li {
    display: list-item;
    list-style: decimal;
  }

  .posts-sm .entry-image {
    width: 75px;
  }

  #content-detail img {
    max-width: 100%;
    width: auto !important;
  }

  #content-detail iframe {
    width: 100% !important;
  }

  .tobii-zoom__icon {
    display: none;
  }
</style>

<meta name="google-site-verification" content="Xr6yb1OxcJtOlWdMgzQBC2EzH7PlctYTrXMXngXhp80" />

@isset($web_information->source_code->header)
  {!! $web_information->source_code->header !!}
@endisset
