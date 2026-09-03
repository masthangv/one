<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Fresh Drop</title>

<link href="https://fonts.googleapis.com/css2?family=Anton&family=DM+Sans:wght@400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  :root{
    --navy:#0E1B2B;
    --sand:#FFF6E9;
    --lime:#C7F53B;
    --coral:#FF6A4D;
    --grape:#7C5CFF;
    --line: rgba(14,27,43,0.12);
    --r:20px;
  }
  *{box-sizing:border-box}
  html,body{height:100%}
  body{
    margin:0;background:var(--sand);color:var(--navy);
    font-family:'DM Sans',sans-serif;line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  h1,h2,h3,h4{
    font-family:'Anton',sans-serif;font-weight:400;
    margin:0;letter-spacing:0.01em;text-transform:uppercase;
  }
  a{color:inherit;text-decoration:none}
  img{max-width:100%;display:block}
  button{font-family:inherit}
  .container{max-width:1280px;margin:0 auto;padding:0 24px}

  /* ===== Marquee ===== */
  .marquee{
    background:var(--navy);color:var(--sand);overflow:hidden;
    white-space:nowrap;padding:9px 0;font-weight:700;font-size:13px;
    letter-spacing:0.04em;
  }
  .marquee span{display:inline-block;padding-right:48px;animation:scroll 22s linear infinite}
  .marquee span::after{content:"FREE SHIPPING OVER $60  •  NEW DROPS EVERY FRIDAY  •  EASY 30-DAY RETURNS  •  ";padding-left:48px}
  @keyframes scroll{from{transform:translateX(0)}to{transform:translateX(-50%)}}

  /* ===== Header ===== */
  header{position:sticky;top:0;z-index:50;background:var(--sand);border-bottom:1px solid var(--line)}
  .header-inner{display:flex;align-items:center;justify-content:space-between;gap:20px;padding:18px 0}
  .brand{font-family:'Anton',sans-serif;font-size:26px;letter-spacing:0.02em}
  .brand .dot{color:var(--coral)}
  nav.main-nav ul{display:flex;gap:2px;list-style:none;margin:0;padding:0}
  nav.main-nav li a{padding:10px 14px;font-weight:700;font-size:14px;text-transform:uppercase;letter-spacing:0.03em;border-radius:8px}
  nav.main-nav li a:hover{background:var(--navy);color:var(--sand)}
  .search{display:flex;align-items:center;gap:10px;background:white;border:1px solid var(--line);padding:9px 16px;border-radius:999px;min-width:220px}
  .search input{border:0;background:transparent;outline:none;width:100%;font:inherit;font-size:14px}
  .icon-btn{background:transparent;border:0;color:var(--navy);cursor:pointer;font-size:17px;width:38px;height:38px;border-radius:50%;display:inline-grid;place-items:center}
  .icon-btn:hover{background:var(--line)}
  .cart{position:relative}
  .cart-count{position:absolute;top:-2px;right:-2px;background:var(--coral);color:white;font-size:11px;font-weight:700;width:18px;height:18px;border-radius:50%;display:inline-grid;place-items:center}
  .mobile-toggle{display:none;border:1px solid var(--line);background:white;border-radius:10px;width:40px;height:40px;font-size:16px;cursor:pointer}
  #mobileMenu ul{list-style:none;margin:0;padding:14px 0;display:flex;flex-direction:column;gap:2px}
  #mobileMenu li a{display:block;padding:10px 4px;font-weight:700;border-bottom:1px solid var(--line);text-transform:uppercase;font-size:14px}

  /* ===== Hero ===== */
  .hero{padding:64px 0 32px}
  .hero-grid{display:grid;grid-template-columns:0.9fr 1.1fr;gap:32px;align-items:end}
  .hero h1{font-size:76px;line-height:0.92}
  .hero h1 .stroke{-webkit-text-stroke:2px var(--navy);color:var(--sand)}
  .hero p{max-width:380px;margin:20px 0 26px;font-size:16px}
  .hero-actions{display:flex;gap:12px;flex-wrap:wrap}
  .btn{display:inline-flex;align-items:center;gap:9px;padding:13px 22px;border-radius:999px;font-weight:700;font-size:14px;text-transform:uppercase;letter-spacing:0.02em;cursor:pointer;border:0}
  .btn-lime{background:var(--lime);color:var(--navy)}
  .btn-lime:hover{background:var(--navy);color:var(--lime)}
  .btn-line{background:transparent;border:2px solid var(--navy);color:var(--navy)}
  .btn-line:hover{background:var(--navy);color:var(--sand)}
  .hero-photo{position:relative;border-radius:var(--r);overflow:hidden;aspect-ratio:4/3}
  .hero-photo img{width:100%;height:100%;object-fit:cover}
  .hero-photo .chip{
    position:absolute;bottom:16px;left:16px;background:var(--coral);color:white;
    padding:10px 16px;border-radius:999px;font-weight:700;font-size:13px;text-transform:uppercase;
  }

  /* ===== Section basics ===== */
  .section{padding:56px 0}
  .section-head{display:flex;align-items:flex-end;justify-content:space-between;gap:20px;margin-bottom:28px;flex-wrap:wrap}
  .section-head h2{font-size:32px}
  .section-head p{margin:4px 0 0;color:rgba(14,27,43,0.6);font-size:14px}

  /* ===== Categories: horizontal strip ===== */
  .cat-strip{display:flex;gap:14px;overflow-x:auto;padding-bottom:8px}
  .cat-card{
    flex:0 0 150px;background:white;border:1px solid var(--line);border-radius:16px;
    padding:20px 16px;text-align:center;cursor:pointer;transition:transform .15s ease, background .15s ease;
  }
  .cat-card:hover{background:var(--lime);transform:translateY(-4px)}
  .cat-card .icon{font-size:24px;margin-bottom:10px;color:var(--grape)}
  .cat-card:hover .icon{color:var(--navy)}
  .cat-card h4{font-size:13px;font-family:'DM Sans',sans-serif;font-weight:700;text-transform:none;letter-spacing:0}

  /* ===== Products: bento grid ===== */
  .products{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
  .product{
    background:white;border:1px solid var(--line);border-radius:var(--r);
    overflow:hidden;display:flex;flex-direction:column;position:relative;
    transition:box-shadow .15s ease;
  }
  .product:hover{box-shadow:0 14px 30px rgba(14,27,43,0.12)}
  .product .thumb{position:relative;background:var(--sand);aspect-ratio:1/1}
  .product img{width:100%;height:100%;object-fit:cover}
  .badge{position:absolute;top:12px;left:12px;padding:5px 12px;border-radius:999px;font-size:11px;font-weight:700;text-transform:uppercase}
  .badge.new{background:var(--grape);color:white}
  .badge.off{background:var(--coral);color:white}
  .product-body{padding:16px;display:flex;flex-direction:column;gap:6px;flex:1}
  .product h5{font-family:'DM Sans',sans-serif;font-size:15px;font-weight:700;text-transform:none;letter-spacing:0}
  .cat-label{font-size:12px;color:rgba(14,27,43,0.5);font-weight:500}
  .price-row{display:flex;align-items:center;justify-content:space-between;margin-top:auto;padding-top:6px}
  .price{font-weight:900;font-size:16px}
  .old-price{color:rgba(14,27,43,0.4);text-decoration:line-through;font-size:12px;margin-left:6px}
  .rating{color:var(--coral);font-size:12px}
  .rating span{color:rgba(14,27,43,0.5);font-family:'DM Sans',sans-serif}
  .product-footer{display:flex;gap:8px;padding:0 16px 16px}
  .add-btn{flex:1;background:var(--navy);color:var(--sand);border:0;padding:11px;border-radius:999px;cursor:pointer;font-weight:700;font-size:13px;text-transform:uppercase;letter-spacing:0.02em}
  .add-btn:hover{background:var(--grape)}
  .wish-btn{background:white;border:1px solid var(--line);width:40px;border-radius:50%;cursor:pointer;display:grid;place-items:center}

  /* ===== Deal ===== */
  .deal-wrap{background:var(--grape);border-radius:var(--r);overflow:hidden;color:white}
  .deal{display:grid;grid-template-columns:1fr 1fr;align-items:stretch}
  .deal img{height:100%;min-height:320px;object-fit:cover}
  .deal .content{padding:40px}
  .deal-kicker{color:var(--lime);font-weight:700;font-size:13px;text-transform:uppercase;letter-spacing:0.04em;margin-bottom:8px}
  .deal h3{font-size:34px;color:white}
  .deal p.muted{color:rgba(255,255,255,0.75);margin-top:10px}
  .timer{display:flex;gap:10px;margin:22px 0}
  .time-box{background:rgba(255,255,255,0.12);padding:10px 14px;border-radius:12px;min-width:60px;text-align:center}
  .time-box div:first-child{font-family:'Anton',sans-serif;font-size:20px}
  .time-box div:last-child{font-size:10px;opacity:0.75;text-transform:uppercase}
  .deal .price{font-size:26px;color:var(--lime);font-weight:900}
  .deal .old-price{color:rgba(255,255,255,0.55)}
  .stock-note{margin-top:12px;color:rgba(255,255,255,0.8);font-size:14px}
  .stock-note strong{color:var(--lime)}

  /* ===== Testimonials ===== */
  .testimonials{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
  .testimonial{background:white;border:1px solid var(--line);border-radius:var(--r);padding:24px}
  .testimonial .rating{color:var(--coral);font-size:14px}
  .testimonial p{font-size:14px;margin:14px 0}
  .avatar-row{display:flex;align-items:center;gap:10px}
  .avatar-row img{width:40px;height:40px;border-radius:50%;object-fit:cover}
  .avatar-row .muted{font-size:12px;color:rgba(14,27,43,0.55)}

  /* ===== Newsletter ===== */
  .newsletter{background:var(--navy);color:var(--sand);border-radius:var(--r);padding:48px;text-align:center}
  .newsletter h3{font-size:30px;color:var(--sand)}
  .newsletter p{margin:10px 0 24px;color:rgba(255,246,233,0.75)}
  .newsletter form{display:flex;justify-content:center;gap:10px;flex-wrap:wrap}
  .newsletter input{padding:13px 18px;border-radius:999px;border:0;width:320px;max-width:100%;font:inherit}
  #newsletterMsg{margin-top:14px;font-weight:700}

  /* ===== Footer ===== */
  footer{margin-top:16px;padding:44px 0 30px;border-top:1px solid var(--line)}
  .footer-top{display:flex;flex-wrap:wrap;gap:32px;justify-content:space-between}
  .footer-brand{font-family:'Anton',sans-serif;font-size:22px}
  .footer-social{display:flex;gap:8px;margin-top:14px}
  .footer-links{display:flex;gap:50px;flex-wrap:wrap}
  .footer-links h4{font-size:13px;margin-bottom:10px;text-transform:uppercase}
  .footer-links .muted{line-height:2;color:rgba(14,27,43,0.6);font-size:14px}
  .footer-bottom{text-align:center;margin-top:30px;font-size:13px;color:rgba(14,27,43,0.5)}
  .muted{color:rgba(14,27,43,0.6)}

  /* ===== Responsive ===== */
  @media (max-width:980px){
    .hero-grid{grid-template-columns:1fr}
    .hero h1{font-size:52px}
    .products{grid-template-columns:repeat(2,1fr)}
    .deal{grid-template-columns:1fr}
    .deal img{min-height:200px}
    .testimonials{grid-template-columns:1fr}
  }
  @media (max-width:760px){
    nav.main-nav{display:none}
    .search{display:none}
    .mobile-toggle{display:inline-block}
  }
  @media (max-width:520px){
    .products{grid-template-columns:1fr}
    .newsletter{padding:32px 20px}
    .hero h1{font-size:40px}
  }
  @media (prefers-reduced-motion: reduce){
    .marquee span{animation:none}
  }
</style>
</head>
<body>

<div class="marquee"><span></span></div>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">NEXUS<span class="dot">.</span>SHOP</a>
    </div>

    <nav class="main-nav" aria-label="Primary">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#cat-title">Shop</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">About</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px">
      <div class="search" role="search">
        <i class="fas fa-search" style="font-size:12px;color:rgba(14,27,43,0.5)"></i>
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search products">
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
      <li><a href="#cat-title">Shop</a></li>
      <li><a href="#">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#">About</a></li>
    </ul>
  </div>
</header>

<main>
  <section class="hero container">
    <div class="hero-grid">
      <div>
        <h1>SHOP<br>THE<br><span class="stroke">DROP</span></h1>
        <p>Tech, footwear and gear picked by people who actually use it. Fast shipping, honest reviews, no filler.</p>
        <div class="hero-actions">
          <button class="btn btn-lime" id="shopNow">Browse now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-line" id="exploreDeals">Today's deals</button>
        </div>
      </div>
      <div class="hero-photo">
        <span class="chip">-25% today</span>
        <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=900&q=80" alt="Featured camera product">
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
    <div class="cat-strip" id="categoriesGrid"></div>
  </section>

  <section class="section container">
    <div class="section-head" id="prod-title">
      <div>
        <h2>Trending now</h2>
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
            <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
            <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
            <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
          </div>

          <div class="price">$999 <span class="old-price">$1,199</span></div>
          <p class="stock-note">Only <strong>12</strong> left at this price.</p>
          <button class="btn btn-lime" id="buyDeal" style="margin-top:18px">Buy now</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="section-head">
      <div>
        <h2>Word on the street</h2>
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
        <button class="btn btn-lime" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="display:none"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-top">
    <div style="max-width:340px">
      <div class="footer-brand">NEXUS.SHOP</div>
      <p class="muted" style="margin-top:8px">A shop built for people who like their gear picked well.</p>
      <div class="footer-social">
        <a class="icon-btn" href="#" title="Facebook" style="border:1px solid var(--line)"><i class="fab fa-facebook-f"></i></a>
        <a class="icon-btn" href="#" title="Twitter" style="border:1px solid var(--line)"><i class="fab fa-twitter"></i></a>
        <a class="icon-btn" href="#" title="Instagram" style="border:1px solid var(--line)"><i class="fab fa-instagram"></i></a>
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
  <div class="container footer-bottom">© <span id="year"></span> NEXUS.SHOP. All rights reserved.</div>
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
      el.className = 'cat-card';
      el.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
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
      msg.style.color = '#FF6A4D';
      return;
    }
    msg.textContent = "You're subscribed. Welcome aboard!";
    msg.style.color = '#C7F53B';
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
