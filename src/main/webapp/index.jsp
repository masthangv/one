<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · colorful & friendly</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,700;9..144,900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #f7f4f9;
      font-family: 'Space Grotesk', sans-serif;
      color: #1e1726;
      line-height: 1.5;
    }

    h1, h2, h3, h4 {
      font-family: 'Fraunces', serif;
      font-weight: 700;
      letter-spacing: -0.01em;
    }

    /* ----- colorful variables ----- */
    :root {
      --bg-soft: #f7f4f9;
      --card-bg: #ffffff;
      --ink: #1e1726;
      --pink: #ff4d8f;
      --purple: #8b5cf6;
      --yellow: #fcd34d;
      --teal: #34d399;
      --orange: #fb923c;
      --rose: #f472b6;
      --indigo: #818cf8;
      --line: rgba(30, 23, 38, 0.08);
      --shadow: 0 12px 30px -10px rgba(0, 0, 0, 0.12);
      --radius: 20px;
    }

    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- buttons & pills ----- */
    .pill {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 14px;
      padding: 10px 22px;
      border: none;
      cursor: pointer;
      transition: 0.2s ease;
      background: white;
      color: var(--ink);
      box-shadow: 0 2px 6px rgba(0,0,0,0.03);
    }

    .pill i { font-size: 15px; }

    .btn-solid {
      background: var(--ink);
      color: white;
      box-shadow: 0 8px 18px -8px rgba(30, 23, 38, 0.25);
    }
    .btn-solid:hover { background: var(--purple); transform: scale(1.02); }

    .btn-outline {
      border: 2px solid var(--ink);
      background: transparent;
      color: var(--ink);
    }
    .btn-outline:hover { background: var(--yellow); border-color: var(--yellow); }

    .btn-soft {
      background: var(--bg-soft);
      color: var(--ink);
    }
    .btn-soft:hover { background: var(--teal); color: #0b2b1f; }

    /* ----- header (sticky, colorful accent) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 60;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(8px);
      border-bottom: 3px solid var(--purple);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Fraunces', serif;
      font-weight: 900;
      font-size: 26px;
      background: linear-gradient(135deg, var(--pink), var(--purple));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: inline-flex;
      align-items: center;
      gap: 2px;
    }
    .brand .dot { color: var(--yellow); -webkit-text-fill-color: var(--yellow); }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    nav.main-nav li a {
      padding: 8px 16px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 14px;
      transition: 0.15s;
      color: var(--ink);
    }
    nav.main-nav li a:hover {
      background: var(--purple);
      color: white;
    }

    .search {
      display: flex;
      align-items: center;
      gap: 10px;
      background: white;
      border: 2px solid var(--purple);
      padding: 6px 16px 6px 18px;
      border-radius: 999px;
      min-width: 210px;
      box-shadow: 0 2px 8px rgba(139, 92, 246, 0.10);
    }
    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font: inherit;
      font-size: 14px;
    }
    .search i { color: var(--purple); }

    .icon-btn {
      background: transparent;
      border: 2px solid transparent;
      color: var(--ink);
      cursor: pointer;
      font-size: 18px;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
      transition: 0.15s;
    }
    .icon-btn:hover { border-color: var(--purple); background: rgba(139, 92, 246, 0.05); }

    .cart {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--pink);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      background: white;
      border: 2px solid var(--purple);
      border-radius: 12px;
      width: 44px;
      height: 44px;
      font-size: 18px;
      cursor: pointer;
      color: var(--purple);
    }

    #mobileMenu ul {
      list-style: none;
      padding: 12px 0;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu li a {
      display: block;
      padding: 12px 8px;
      font-weight: 600;
      border-bottom: 1px solid var(--line);
      color: var(--ink);
    }

    /* ----- hero : rainbow gradient + playful ----- */
    .hero {
      position: relative;
      overflow: hidden;
      padding: 60px 0 80px;
      background: linear-gradient(145deg, #fcd34d 0%, #f472b6 40%, #818cf8 80%);
      border-radius: 0 0 50px 50px;
      margin: 0 12px 20px 12px;
      box-shadow: var(--shadow);
    }

    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 10% 30%, rgba(255,255,255,0.3) 0%, transparent 60%);
      pointer-events: none;
    }

    .hero-inner {
      position: relative;
      display: grid;
      grid-template-columns: 1.2fr 1fr;
      gap: 40px;
      align-items: center;
    }

    .hero-tag {
      display: inline-block;
      background: var(--ink);
      color: white;
      padding: 6px 18px;
      border-radius: 999px;
      font-weight: 700;
      font-size: 13px;
      margin-bottom: 16px;
    }

    .hero h1 {
      font-size: 50px;
      line-height: 1.05;
      color: var(--ink);
    }
    .hero h1 em {
      font-style: normal;
      background: white;
      padding: 0 10px;
      border-radius: 30px;
      display: inline-block;
      color: var(--purple);
    }

    .hero p {
      margin: 18px 0 28px;
      max-width: 440px;
      font-size: 17px;
      color: #1e1726;
      opacity: 0.85;
    }

    .hero-actions { display: flex; gap: 14px; flex-wrap: wrap; }

    .hero-visual {
      background: white;
      border-radius: var(--radius);
      padding: 20px;
      border: 4px solid var(--ink);
      transform: rotate(1.5deg);
      box-shadow: 12px 12px 0 var(--purple);
    }
    .hero-visual img {
      border-radius: 14px;
      width: 100%;
      height: auto;
    }
    .hero-visual .tag-float {
      position: absolute;
      top: -12px;
      left: -12px;
      background: var(--pink);
      color: white;
      font-weight: 700;
      padding: 8px 18px;
      border-radius: 999px;
      border: 3px solid var(--ink);
      transform: rotate(-6deg);
    }

    /* ----- sections ----- */
    .section { padding: 48px 0; }
    .section-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 28px;
      flex-wrap: wrap;
    }
    .section-head h2 {
      font-size: 32px;
      background: linear-gradient(135deg, var(--purple), var(--pink));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      display: inline-block;
    }
    .section-head p {
      margin: 4px 0 0;
      color: rgba(30, 23, 38, 0.6);
      font-size: 15px;
    }

    /* categories chips : colourful */
    .cat-row {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
    .cat-chip {
      display: flex;
      align-items: center;
      gap: 10px;
      background: white;
      border: 2px solid var(--ink);
      padding: 12px 22px;
      border-radius: 999px;
      cursor: pointer;
      font-weight: 600;
      transition: 0.2s;
      box-shadow: 0 4px 0 var(--ink);
    }
    .cat-chip:hover {
      transform: translateY(-4px) scale(1.02);
      box-shadow: 0 8px 0 var(--purple);
      background: var(--yellow);
    }
    .cat-chip .icon {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      display: inline-grid;
      place-items: center;
      font-size: 14px;
      color: white;
    }
    .cat-chip:nth-child(1) .icon { background: var(--pink); }
    .cat-chip:nth-child(2) .icon { background: var(--purple); }
    .cat-chip:nth-child(3) .icon { background: var(--teal); color: var(--ink); }
    .cat-chip:nth-child(4) .icon { background: var(--orange); }
    .cat-chip:nth-child(5) .icon { background: var(--rose); }
    .cat-chip:nth-child(6) .icon { background: var(--indigo); }

    /* product grid : playful */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }

    .product {
      background: white;
      border: 3px solid var(--ink);
      border-radius: var(--radius);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: 0.2s;
      box-shadow: 6px 6px 0 var(--purple);
    }
    .product:hover {
      transform: translateY(-8px) scale(1.01);
      box-shadow: 12px 12px 0 var(--pink);
    }
    .product .thumb {
      position: relative;
      background: #f0edf2;
    }
    .product img {
      height: 190px;
      width: 100%;
      object-fit: cover;
    }
    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      padding: 4px 14px;
      border-radius: 999px;
      font-size: 12px;
      font-weight: 700;
      color: var(--ink);
    }
    .badge.new { background: var(--teal); }
    .badge.off { background: var(--yellow); }

    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product h5 {
      font-size: 16px;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
    }
    .cat-label {
      font-size: 12px;
      text-transform: lowercase;
      color: rgba(30, 23, 38, 0.5);
      font-weight: 600;
      margin-top: 4px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 12px;
    }
    .price { font-weight: 700; font-size: 18px; }
    .old-price {
      color: rgba(30, 23, 38, 0.4);
      text-decoration: line-through;
      font-size: 13px;
      margin-left: 6px;
    }
    .rating {
      color: var(--orange);
      font-size: 13px;
    }
    .rating span { color: rgba(30, 23, 38, 0.5); font-family: 'Space Grotesk', sans-serif; }

    .product-footer {
      display: flex;
      gap: 10px;
      padding: 0 16px 16px;
    }
    .add-btn {
      flex: 1;
      background: var(--purple);
      color: white;
      border: 2px solid var(--ink);
      padding: 11px;
      border-radius: 999px;
      cursor: pointer;
      font-weight: 700;
      font-size: 14px;
      transition: 0.15s;
    }
    .add-btn:hover { background: var(--pink); transform: scale(0.97); }
    .wish-btn {
      background: white;
      border: 2px solid var(--ink);
      width: 44px;
      border-radius: 50%;
      cursor: pointer;
      display: grid;
      place-items: center;
      transition: 0.15s;
    }
    .wish-btn:hover { background: var(--rose); color: white; border-color: var(--rose); }

    /* deal card : vibrant */
    .deal-wrap {
      background: var(--purple);
      border-radius: var(--radius);
      overflow: hidden;
      color: white;
      border: 4px solid var(--ink);
      box-shadow: 10px 10px 0 var(--yellow);
    }
    .deal {
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: stretch;
    }
    .deal img {
      height: 100%;
      min-height: 300px;
      object-fit: cover;
    }
    .deal .content { padding: 40px; background: #1e1726; }
    .deal-kicker {
      color: var(--yellow);
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 8px;
    }
    .deal h3 { font-size: 32px; color: white; }
    .deal p.muted { color: rgba(255,255,255,0.7); margin-top: 8px; }

    .timer {
      display: flex;
      gap: 12px;
      margin: 22px 0;
    }
    .time-box {
      background: rgba(255,255,255,0.08);
      border: 1px solid rgba(255,255,255,0.2);
      padding: 8px 12px;
      border-radius: 16px;
      min-width: 60px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 22px;
      font-weight: 700;
      font-family: 'Fraunces', serif;
    }
    .time-box div:last-child { font-size: 11px; opacity: 0.7; }

    .deal .price-line {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .deal .price { font-size: 28px; color: var(--yellow); }
    .deal .old-price { color: rgba(255,255,255,0.5); }
    .stock-note { margin-top: 10px; color: rgba(255,255,255,0.8); font-size: 14px; }
    .stock-note strong { color: var(--teal); }

    /* testimonials : colourful cards */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 6px 4px 16px;
    }
    .testimonial {
      min-width: 300px;
      background: white;
      border: 3px solid var(--ink);
      border-radius: var(--radius);
      padding: 24px;
      box-shadow: 6px 6px 0 var(--purple);
    }
    .testimonial:nth-child(odd) { background: #fef3c7; }
    .testimonial:nth-child(2) { background: #e0e7ff; }
    .testimonial:nth-child(3) { background: #d1fae5; }

    .testimonial .rating { color: var(--orange); }
    .testimonial p { font-size: 15px; margin: 14px 0; }
    .avatar-row {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .avatar-row img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      border: 3px solid var(--ink);
    }
    .muted { color: rgba(30, 23, 38, 0.6); }

    /* newsletter : fun */
    .newsletter {
      background: linear-gradient(145deg, var(--yellow), var(--orange));
      border-radius: var(--radius);
      padding: 48px;
      text-align: center;
      border: 4px solid var(--ink);
      box-shadow: 8px 8px 0 var(--purple);
    }
    .newsletter h3 { font-size: 30px; color: var(--ink); }
    .newsletter p { margin: 8px 0 24px; color: #1e1726; }
    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter input {
      padding: 12px 20px;
      border-radius: 999px;
      border: 3px solid var(--ink);
      width: 300px;
      max-width: 100%;
      font: inherit;
      background: white;
    }
    .newsletter .btn-solid { background: var(--purple); color: white; border: 3px solid var(--ink); }
    .newsletter .btn-solid:hover { background: var(--pink); }

    /* footer */
    footer {
      margin-top: 32px;
      padding: 40px 0 28px;
      border-top: 4px solid var(--purple);
      background: white;
    }
    .footer-top {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }
    .footer-brand {
      font-family: 'Fraunces', serif;
      font-weight: 900;
      font-size: 24px;
      background: linear-gradient(135deg, var(--pink), var(--purple));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .footer-social { display: flex; gap: 10px; margin-top: 16px; }
    .footer-social .icon-btn { border: 2px solid var(--purple); }
    .footer-social .icon-btn:hover { background: var(--purple); color: white; }
    .footer-links {
      display: flex;
      gap: 50px;
      flex-wrap: wrap;
    }
    .footer-links h4 { font-size: 16px; margin-bottom: 10px; }
    .footer-links .muted { line-height: 2; font-size: 14px; }
    .footer-bottom { text-align: center; margin-top: 30px; font-size: 13px; color: rgba(30, 23, 38, 0.5); }

    /* responsive */
    @media (max-width: 980px) {
      .hero-inner { grid-template-columns: 1fr; }
      .hero-visual { order: -1; transform: none; }
      .products { grid-template-columns: repeat(2, 1fr); }
      .deal { grid-template-columns: 1fr; }
      .deal img { min-height: 200px; }
    }
    @media (max-width: 760px) {
      nav.main-nav { display: none; }
      .search { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero h1 { font-size: 34px; }
      .hero { margin: 0 0 12px; border-radius: 0 0 30px 30px; }
    }
    @media (max-width: 520px) {
      .products { grid-template-columns: 1fr; }
      .newsletter { padding: 28px 16px; }
    }
    @media (prefers-reduced-motion: reduce) { * { transition: none !important; } }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span class="dot">Shop</span></a>
    </div>

    <nav class="main-nav" aria-label="Primary">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#cat-title">Categories</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">About</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px">
      <div class="search" role="search">
        <i class="fas fa-search"></i>
        <input type="search" id="searchInput" placeholder="Find something..." aria-label="Search">
      </div>
      <a class="icon-btn" href="#" title="Account"><i class="far fa-user"></i></a>
      <a class="icon-btn cart" href="#" id="cartBtn" title="Cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-count" id="cartCount">0</span>
      </a>
    </div>
  </div>

  <div id="mobileMenu" class="container" style="display:none">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#cat-title">Categories</a></li>
      <li><a href="#">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="hero">
    <div class="container hero-inner">
      <div>
        <span class="hero-tag">✨ fresh drops every friday</span>
        <h1>Shop the stuff <br>that makes you <em>smile</em></h1>
        <p>Tech, sneakers, fragrance & gear — curated by real people, shipped with love.</p>
        <div class="hero-actions">
          <button class="pill btn-solid" id="shopNow">Browse the drop <i class="fas fa-arrow-right"></i></button>
          <button class="pill btn-outline" id="exploreDeals">🔥 today's deals</button>
        </div>
      </div>
      <div class="hero-visual" style="position:relative">
        <span class="tag-float">-25% today</span>
        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80" alt="camera">
      </div>
    </div>
  </section>

  <!-- Categories -->
  <section class="section container" id="cat-title">
    <div class="section-head">
      <div><h2>Pick a lane</h2><p>jump straight to what you love</p></div>
    </div>
    <div class="cat-row" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section class="section container">
    <div class="section-head" id="prod-title">
      <div><h2>Trending now</h2><p>what people are actually buying</p></div>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <!-- Deal -->
  <section id="deals" class="section container">
    <div class="section-head">
      <div><h2>⚡ flash sale</h2><p>gone when the clock hits zero</p></div>
    </div>
    <div class="deal-wrap">
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air">
        <div class="content">
          <div class="deal-kicker">⭐ deal of the day</div>
          <h3>MacBook Air M2</h3>
          <p class="muted">thin, light, and incredibly fast. your next favorite.</p>
          <div class="timer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>
          <div class="price-line">
            <div class="price">$999 <span class="old-price">$1,199</span></div>
          </div>
          <p class="stock-note">only <strong>12</strong> left at this price</p>
          <button class="pill btn-solid" id="buyDeal" style="margin-top:16px;background:var(--yellow);color:var(--ink)"><i class="fas fa-bolt"></i> grab it now</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-head">
      <div><h2>💬 people love us</h2><p>real reviews from real customers</p></div>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>fast shipping, gorgeous packaging — exceeded every expectation.</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar">
          <div><div style="font-weight:700">Ava Martin</div><div class="muted">verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p>great selection and seamless checkout. i'm definitely coming back.</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar">
          <div><div style="font-weight:700">Michael Lee</div><div class="muted">frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>felt premium from the moment i opened the box. two days early!</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=80&q=80" alt="avatar">
          <div><div style="font-weight:700">Priya Nair</div><div class="muted">verified buyer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter">
      <h3>📬 get the good stuff first</h3>
      <p>new arrivals, real discounts — no spam, ever.</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input id="newsletterEmail" type="email" placeholder="you@email.com" aria-label="Email" required>
        <button class="pill btn-solid" id="subscribeBtn"><i class="fas fa-paper-plane"></i> subscribe</button>
      </form>
      <div id="newsletterMsg" style="display:none;margin-top:14px;font-weight:600;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-top">
    <div style="max-width:320px">
      <div class="footer-brand">NexusShop</div>
      <p class="muted" style="margin-top:8px">a shop built for people who like their gear picked well.</p>
      <div class="footer-social">
        <a class="icon-btn" href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
        <a class="icon-btn" href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
        <a class="icon-btn" href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><h4>Company</h4><div class="muted">About<br>Careers<br>Press</div></div>
      <div><h4>Support</h4><div class="muted">Help center<br>Shipping & returns<br>Contact</div></div>
    </div>
  </div>
  <div class="container footer-bottom">© <span id="year"></span> NexusShop. all rights reserved.</div>
</footer>

<script>
  // ---- data ----
  const CATEGORIES = [
    { id:'phones', name:'Smartphones', icon:'fa-mobile-alt' },
    { id:'laptops', name:'Laptops', icon:'fa-laptop' },
    { id:'clothing', name:'Clothing', icon:'fa-tshirt' },
    { id:'gadgets', name:'Gadgets', icon:'fa-headphones' },
    { id:'footwear', name:'Footwear', icon:'fa-shoe-prints' },
    { id:'accessories', name:'Accessories', icon:'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Chanel No. 5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];

  // ---- DOM refs ----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

  function escapeHtml(text){ return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s])); }

  // render categories
  function renderCategories(){
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const el = document.createElement('button');
      el.className = 'cat-chip';
      el.innerHTML = `<span class="icon"><i class="fas ${cat.icon}"></i></span> ${cat.name}`;
      el.addEventListener('click', () => {
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('prod-title').scrollIntoView({ behavior:'smooth', block:'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  // render products
  function renderProducts(list){
    productsGrid.innerHTML = '';
    if (!list.length){
      productsGrid.innerHTML = `<p class="muted" style="padding:20px;">no products match that search.</p>`;
      return;
    }
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product';
      el.innerHTML = `
        <div class="thumb">
          ${p.badge ? `<span class="badge ${p.badge.startsWith('-') ? 'off' : 'new'}">${p.badge}</span>` : ''}
          <img src="${p.img}" alt="${escapeHtml(p.title)}">
        </div>
        <div class="product-body">
          <h5>${escapeHtml(p.title)}</h5>
          <div class="cat-label">${p.category}</div>
          <div class="price-row">
            <div>
              <span class="price">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))}<span> (${p.reviews})</span></div>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(el);
    });

    productsGrid.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
    });
  }

  function addToCart(productId){
    const p = PRODUCTS.find(x => x.id === productId);
    if (!p) return;
    cartCount++;
    cartCountEl.textContent = cartCount;
    const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
    if (btn){
      const original = btn.innerHTML;
      btn.innerHTML = '✅ added';
      btn.disabled = true;
      setTimeout(() => { btn.innerHTML = original; btn.disabled = false; }, 1200);
    }
  }

  function filterProducts(query){
    const q = String(query || '').trim().toLowerCase();
    if (!q){ renderProducts(PRODUCTS); return; }
    renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
  }

  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });
  searchInput.addEventListener('input', e => { if (e.target.value === '') filterProducts(''); });

  // mobile toggle
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  mobileToggle.addEventListener('click', () => {
    mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
  });

  // newsletter
  document.getElementById('newsletterForm').addEventListener('submit', e => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    msg.style.display = 'block';
    if (!email || !email.includes('@')){
      msg.textContent = 'please enter a valid email.';
      msg.style.color = '#b00030';
      return;
    }
    msg.textContent = '🎉 you\'re subscribed! welcome aboard.';
    msg.style.color = 'var(--ink)';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 3000);
  });

  // deal timer
  (function setupDealTimer(){
    const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
    function tick(){
      const diff = target - new Date();
      const days = Math.max(0, Math.floor(diff / 86400000));
      const hours = Math.max(0, Math.floor((diff % 86400000) / 3600000));
      const mins = Math.max(0, Math.floor((diff % 3600000) / 60000));
      const secs = Math.max(0, Math.floor((diff % 60000) / 1000));
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      if (diff <= 0) clearInterval(timer);
    }
    tick();
    const timer = setInterval(tick, 1000);
  })();

  // buttons
  document.getElementById('shopNow').addEventListener('click', () => {
    document.getElementById('prod-title').scrollIntoView({ behavior:'smooth', block:'start' });
  });
  document.getElementById('exploreDeals').addEventListener('click', () => {
    document.getElementById('deals').scrollIntoView({ behavior:'smooth', block:'start' });
  });
  document.getElementById('buyDeal').addEventListener('click', () => {
    cartCount += 1;
    cartCountEl.textContent = cartCount;
  });

  renderCategories();
  renderProducts(PRODUCTS);
  document.getElementById('year').textContent = new Date().getFullYear();
</script>
</body>
</html>
