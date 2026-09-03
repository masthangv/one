<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Shop Loud</title>

<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,700;9..144,900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  :root{
    --ink:#181022;
    --cream:#FFF9EE;
    --pink:#FF3E7F;
    --purple:#7B2FF7;
    --yellow:#FFC93C;
    --teal:#00C9A7;
    --line: rgba(24,16,34,0.1);
    --r-sm:10px;
    --r-md:18px;
    --r-lg:28px;
  }
  *{box-sizing:border-box}
  html,body{height:100%}
  body{
    margin:0;
    background:var(--cream);
    color:var(--ink);
    font-family:'Space Grotesk',sans-serif;
    line-height:1.45;
    -webkit-font-smoothing:antialiased;
  }
  h1,h2,h3,h4{
    font-family:'Fraunces',serif;
    font-weight:700;
    margin:0;
    letter-spacing:-0.01em;
  }
  a{color:inherit;text-decoration:none}
  img{max-width:100%;display:block}
  button{font-family:inherit}
  .container{max-width:1240px;margin:0 auto;padding:0 24px}
  .pill{
    display:inline-flex;align-items:center;gap:8px;
    border-radius:999px;font-weight:600;font-size:14px;
    padding:9px 16px;border:none;cursor:pointer;
  }

  /* ===== Header ===== */
  header{
    position:sticky;top:0;z-index:50;
    background:var(--cream);
    border-bottom:3px solid var(--ink);
  }
  .header-inner{
    display:flex;align-items:center;justify-content:space-between;
    gap:20px;padding:16px 0;
  }
  .brand{
    font-family:'Fraunces',serif;font-weight:900;font-size:26px;
    display:flex;align-items:center;gap:2px;
  }
  .brand .dot{color:var(--pink)}
  nav.main-nav ul{
    display:flex;gap:4px;list-style:none;margin:0;padding:0;align-items:center;
  }
  nav.main-nav li a{
    padding:9px 14px;border-radius:999px;font-weight:600;font-size:15px;
    transition:background .15s ease;
  }
  nav.main-nav li a:hover{background:rgba(123,47,247,0.1);color:var(--purple)}
  .search{
    display:flex;align-items:center;gap:10px;
    background:white;border:2px solid var(--ink);
    padding:8px 14px;border-radius:999px;min-width:230px;
  }
  .search input{border:0;background:transparent;outline:none;width:100%;font:inherit;font-size:14px}
  .icon-btn{
    background:transparent;border:2px solid transparent;color:var(--ink);
    cursor:pointer;font-size:16px;width:38px;height:38px;
    border-radius:50%;display:inline-grid;place-items:center;
  }
  .icon-btn:hover{border-color:var(--ink)}
  .cart{position:relative}
  .cart-count{
    position:absolute;top:-4px;right:-4px;background:var(--pink);color:white;
    font-size:11px;font-weight:700;width:19px;height:19px;border-radius:50%;
    display:inline-grid;place-items:center;border:2px solid var(--cream);
  }
  .mobile-toggle{display:none;border:2px solid var(--ink);background:white;border-radius:10px;width:40px;height:40px;font-size:17px;cursor:pointer}
  #mobileMenu ul{list-style:none;margin:0;padding:14px 0;display:flex;flex-direction:column;gap:4px}
  #mobileMenu li a{display:block;padding:10px 4px;font-weight:600;border-bottom:1px solid var(--line)}

  /* ===== Hero ===== */
  .hero{
    position:relative;overflow:hidden;
    background:var(--purple);
    color:white;
    padding:72px 0 96px;
  }
  .hero::before{
    content:"";position:absolute;inset:0;
    background:
      radial-gradient(circle at 85% 20%, var(--yellow) 0%, transparent 42%),
      radial-gradient(circle at 8% 85%, var(--pink) 0%, transparent 38%);
    opacity:0.9;
  }
  .hero-inner{position:relative;display:grid;grid-template-columns:1.2fr 1fr;gap:40px;align-items:center}
  .hero-tag{
    display:inline-block;background:var(--teal);color:var(--ink);
    padding:7px 16px;border-radius:999px;font-weight:700;font-size:14px;margin-bottom:20px;
  }
  .hero h1{font-size:56px;line-height:1.03;color:white}
  .hero h1 em{font-style:normal;color:var(--yellow)}
  .hero p{margin:20px 0 28px;max-width:460px;font-size:17px;opacity:0.92}
  .hero-actions{display:flex;gap:14px;flex-wrap:wrap}
  .btn-solid{background:var(--yellow);color:var(--ink);font-weight:700}
  .btn-solid:hover{background:white}
  .btn-outline{border:2px solid rgba(255,255,255,0.6);color:white;background:transparent;font-weight:700}
  .btn-outline:hover{border-color:white}
  .hero-visual{
    position:relative;background:var(--cream);border-radius:var(--r-lg);
    padding:28px;border:3px solid var(--ink);
    transform:rotate(2deg);
  }
  .hero-visual img{border-radius:var(--r-md)}
  .hero-visual .tag-float{
    position:absolute;top:-16px;left:-16px;background:var(--pink);color:white;
    font-weight:700;font-size:14px;padding:10px 16px;border-radius:999px;
    transform:rotate(-6deg);border:3px solid var(--ink);
  }

  /* ===== Section basics ===== */
  .section{padding:64px 0}
  .section-head{
    display:flex;align-items:flex-end;justify-content:space-between;
    gap:20px;margin-bottom:32px;flex-wrap:wrap;
  }
  .section-head h2{font-size:34px}
  .section-head p{margin:6px 0 0;color:rgba(24,16,34,0.6);font-size:15px}

  /* ===== Categories ===== */
  .cat-row{display:flex;gap:14px;flex-wrap:wrap}
  .cat-chip{
    display:flex;align-items:center;gap:10px;
    background:white;border:2px solid var(--ink);
    padding:14px 20px;border-radius:999px;cursor:pointer;
    font-weight:600;transition:transform .15s ease, background .15s ease;
  }
  .cat-chip:hover{background:var(--yellow);transform:translateY(-3px)}
  .cat-chip .icon{
    width:30px;height:30px;border-radius:50%;background:var(--purple);color:white;
    display:inline-grid;place-items:center;font-size:14px;
  }
  .cat-chip:nth-child(3n+1) .icon{background:var(--pink)}
  .cat-chip:nth-child(3n+2) .icon{background:var(--teal);color:var(--ink)}
  .cat-chip:nth-child(3n) .icon{background:var(--purple)}

  /* ===== Products ===== */
  .products{display:grid;grid-template-columns:repeat(4,1fr);gap:22px}
  .product{
    background:white;border:2px solid var(--ink);border-radius:var(--r-md);
    overflow:hidden;display:flex;flex-direction:column;position:relative;
    transition:transform .15s ease, box-shadow .15s ease;
  }
  .product:hover{transform:translateY(-5px);box-shadow:6px 6px 0 var(--ink)}
  .product .thumb{position:relative;background:var(--cream)}
  .product img{height:190px;width:100%;object-fit:cover}
  .badge{
    position:absolute;top:12px;left:12px;padding:5px 11px;border-radius:999px;
    font-size:12px;font-weight:700;color:var(--ink);
  }
  .badge.new{background:var(--teal)}
  .badge.off{background:var(--pink);color:white}
  .product-body{padding:16px;display:flex;flex-direction:column;gap:8px;flex:1}
  .product h5{font-size:16px;font-weight:700;font-family:'Space Grotesk',sans-serif}
  .cat-label{font-size:12px;text-transform:lowercase;color:rgba(24,16,34,0.5);font-weight:600}
  .price-row{display:flex;align-items:center;justify-content:space-between;margin-top:auto}
  .price{font-weight:700;font-size:17px}
  .old-price{color:rgba(24,16,34,0.4);text-decoration:line-through;font-size:13px;margin-left:6px}
  .rating{color:var(--yellow);font-size:13px}
  .rating span{color:rgba(24,16,34,0.5);font-family:'Space Grotesk',sans-serif}
  .product-footer{display:flex;gap:8px;padding:0 16px 16px}
  .add-btn{
    flex:1;background:var(--ink);color:white;border:0;padding:11px;border-radius:999px;
    cursor:pointer;font-weight:700;font-size:14px;
  }
  .add-btn:hover{background:var(--purple)}
  .wish-btn{
    background:white;border:2px solid var(--ink);width:42px;border-radius:50%;
    cursor:pointer;display:grid;place-items:center;
  }

  /* ===== Deal ===== */
  .deal-wrap{background:var(--ink);border-radius:var(--r-lg);overflow:hidden;color:white}
  .deal{display:grid;grid-template-columns:1fr 1fr;align-items:stretch}
  .deal img{height:100%;min-height:340px;object-fit:cover}
  .deal .content{padding:40px}
  .deal-kicker{color:var(--yellow);font-weight:700;font-size:14px;margin-bottom:10px}
  .deal h3{font-size:32px;color:white}
  .deal p.muted{color:rgba(255,255,255,0.7);margin-top:10px}
  .timer{display:flex;gap:10px;margin:22px 0}
  .time-box{background:rgba(255,255,255,0.08);border:1px solid rgba(255,255,255,0.18);padding:10px 14px;border-radius:12px;min-width:64px;text-align:center}
  .time-box div:first-child{font-size:20px;font-weight:700;font-family:'Fraunces',serif}
  .time-box div:last-child{font-size:11px;opacity:0.7}
  .deal .price-line{display:flex;align-items:center;gap:12px}
  .deal .price{font-size:28px;color:var(--yellow)}
  .deal .old-price{color:rgba(255,255,255,0.5)}
  .stock-note{margin-top:12px;color:rgba(255,255,255,0.75);font-size:14px}
  .stock-note strong{color:var(--teal)}

  /* ===== Testimonials ===== */
  .testimonials{display:flex;gap:18px;overflow-x:auto;padding:6px 4px 16px}
  .testimonial{
    min-width:320px;background:white;border:2px solid var(--ink);border-radius:var(--r-md);
    padding:22px;
  }
  .testimonial:nth-child(odd){background:var(--yellow)}
  .testimonial .rating{color:var(--ink)}
  .testimonial p{font-size:15px;margin:14px 0}
  .avatar-row{display:flex;align-items:center;gap:10px}
  .avatar-row img{width:42px;height:42px;border-radius:50%;object-fit:cover;border:2px solid var(--ink)}
  .avatar-row .muted{font-size:13px;color:rgba(24,16,34,0.55)}

  /* ===== Newsletter ===== */
  .newsletter{
    background:var(--teal);border-radius:var(--r-lg);padding:48px;text-align:center;
    border:3px solid var(--ink);
  }
  .newsletter h3{font-size:30px}
  .newsletter p{margin:10px 0 24px}
  .newsletter form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap}
  .newsletter input{
    padding:13px 18px;border-radius:999px;border:2px solid var(--ink);
    width:320px;max-width:100%;font:inherit;
  }
  .newsletter .btn-solid{background:var(--ink);color:white}
  .newsletter .btn-solid:hover{background:var(--purple)}
  #newsletterMsg{margin-top:14px;font-weight:600}

  /* ===== Footer ===== */
  footer{margin-top:20px;padding:44px 0 30px;border-top:3px solid var(--ink)}
  .footer-top{display:flex;flex-wrap:wrap;gap:32px;justify-content:space-between}
  .footer-brand{font-family:'Fraunces',serif;font-weight:900;font-size:22px}
  .footer-social{display:flex;gap:10px;margin-top:14px}
  .footer-links{display:flex;gap:50px;flex-wrap:wrap}
  .footer-links h4{font-size:15px;margin-bottom:10px}
  .footer-links .muted{line-height:2;color:rgba(24,16,34,0.6);font-size:14px}
  .footer-bottom{text-align:center;margin-top:30px;font-size:13px;color:rgba(24,16,34,0.5)}
  .muted{color:rgba(24,16,34,0.6)}

  /* ===== Responsive ===== */
  @media (max-width:980px){
    .hero-inner{grid-template-columns:1fr}
    .hero-visual{order:-1;transform:none}
    .products{grid-template-columns:repeat(2,1fr)}
    .deal{grid-template-columns:1fr}
    .deal img{min-height:220px}
  }
  @media (max-width:760px){
    nav.main-nav{display:none}
    .search{display:none}
    .mobile-toggle{display:inline-block}
    .hero h1{font-size:38px}
  }
  @media (max-width:520px){
    .products{grid-template-columns:1fr}
    .newsletter{padding:32px 20px}
  }

  @media (prefers-reduced-motion: reduce){
    *{transition:none !important}
  }
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
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

    <div style="display:flex;align-items:center;gap:12px">
      <div class="search" role="search">
        <i class="fas fa-search" style="font-size:13px;color:rgba(24,16,34,0.5)"></i>
        <input type="search" id="searchInput" placeholder="Find something great..." aria-label="Search products">
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
  <section class="hero">
    <div class="container hero-inner">
      <div>
        <span class="hero-tag">New drops every Friday</span>
        <h1>Shop the stuff<br>that gets you <em>hyped.</em></h1>
        <p>Tech, footwear, fragrance and gear picked by people who actually use it — with fast shipping and honest reviews.</p>
        <div class="hero-actions">
          <button class="pill btn-solid" id="shopNow">Browse the drop <i class="fas fa-arrow-right"></i></button>
          <button class="pill btn-outline" id="exploreDeals">See today's deals</button>
        </div>
      </div>
      <div class="hero-visual">
        <span class="tag-float">-25% today</span>
        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80" alt="Featured camera product">
      </div>
    </div>
  </section>

  <section class="section container" id="cat-title">
    <div class="section-head">
      <div>
        <h2>Pick a lane</h2>
        <p>Jump straight to what you're after.</p>
      </div>
    </div>
    <div class="cat-row" id="categoriesGrid"></div>
  </section>

  <section class="section container">
    <div class="section-head" id="prod-title">
      <div>
        <h2>Trending right now</h2>
        <p>What people are actually buying this week.</p>
      </div>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section id="deals" class="section container">
    <div class="section-head">
      <div>
        <h2>Flash sale</h2>
        <p>Gone when the clock hits zero.</p>
      </div>
    </div>

    <div class="deal-wrap">
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air on a desk">
        <div class="content">
          <div class="deal-kicker">Deal of the day</div>
          <h3>MacBook Air M2</h3>
          <p class="muted">Thin, light and fast enough for anything you throw at it.</p>

          <div class="timer">
            <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
            <div class="time-box"><div id="dealHours">00</div><div>Hours</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Mins</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Secs</div></div>
          </div>

          <div class="price-line">
            <div class="price">$999 <span class="old-price">$1,199</span></div>
          </div>
          <p class="stock-note">Only <strong>12</strong> left at this price.</p>
          <button class="pill btn-solid" id="buyDeal" style="margin-top:16px">Buy now</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="section-head">
      <div>
        <h2>People are into it</h2>
        <p>Reviews from actual customers.</p>
      </div>
    </div>
    <div class="testimonials" id="testimonials">
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>Fast shipping and excellent support — the product beat my expectations.</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="">
          <div>
            <div style="font-weight:700">Ava Martin</div>
            <div class="muted">Verified buyer</div>
          </div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★☆</div>
        <p>Great selection and checkout was painless. I'll be back for more.</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="">
          <div>
            <div style="font-weight:700">Michael Lee</div>
            <div class="muted">Frequent buyer</div>
          </div>
        </div>
      </div>
      <div class="testimonial">
        <div class="rating">★★★★★</div>
        <p>Packaging alone felt premium. Everything arrived two days early.</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=80&q=80" alt="">
          <div>
            <div style="font-weight:700">Priya Nair</div>
            <div class="muted">Verified buyer</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="newsletter">
      <h3>Get the good stuff first</h3>
      <p>New arrivals and real discounts — no spam, unsubscribe anytime.</p>
      <form id="newsletterForm" onsubmit="return false;">
        <input id="newsletterEmail" type="email" placeholder="you@email.com" aria-label="Email address" required>
        <button class="pill btn-solid" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="display:none"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-top">
    <div style="max-width:340px">
      <div class="footer-brand">NexusShop</div>
      <p class="muted" style="margin-top:8px">A shop built for people who like their gear picked well.</p>
      <div class="footer-social">
        <a class="icon-btn" href="#" title="Facebook" style="border:2px solid var(--ink)"><i class="fab fa-facebook-f"></i></a>
        <a class="icon-btn" href="#" title="Twitter" style="border:2px solid var(--ink)"><i class="fab fa-twitter"></i></a>
        <a class="icon-btn" href="#" title="Instagram" style="border:2px solid var(--ink)"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div>
        <h4>Company</h4>
        <div class="muted">About<br>Careers<br>Press</div>
      </div>
      <div>
        <h4>Support</h4>
        <div class="muted">Help center<br>Shipping & returns<br>Contact</div>
      </div>
    </div>
  </div>
  <div class="container footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
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

  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  let cartCount = 0;

  function escapeHtml(text){
    return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
  }

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

  function renderProducts(list){
    productsGrid.innerHTML = '';
    if (!list.length){
      productsGrid.innerHTML = `<p class="muted">No products match that search.</p>`;
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
          <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
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
      btn.innerHTML = 'Added ✓';
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

  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  mobileToggle.addEventListener('click', () => {
    mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
  });

  document.getElementById('newsletterForm').addEventListener('submit', e => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    msg.style.display = 'block';
    if (!email || !email.includes('@')){
      msg.textContent = 'Enter a valid email address.';
      msg.style.color = '#B00030';
      return;
    }
    msg.textContent = 'You\'re subscribed. Welcome aboard!';
    msg.style.color = 'var(--ink)';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 3000);
  });

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
