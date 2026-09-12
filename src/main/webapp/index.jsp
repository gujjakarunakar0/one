
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NovaStore — Modern E-commerce</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #111827;
      --accent: #f97316;
      --bg: #f8fafc;
      --card: #ffffff;
      --text: #111827;
      --muted: #6b7280;
      --border: #e5e7eb;
    }

    body {
      font-family: Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.5;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button, input {
      font: inherit;
    }

    button {
      cursor: pointer;
      border: none;
    }

    header {
      background: white;
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .navbar {
      max-width: 1200px;
      margin: auto;
      padding: 18px 24px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }

    .logo {
      font-size: 25px;
      font-weight: 800;
    }

    .logo span {
      color: var(--accent);
    }

    nav {
      display: flex;
      gap: 24px;
      color: #4b5563;
      font-size: 14px;
    }

    nav a:hover {
      color: var(--accent);
    }

    .cart-btn {
      background: var(--primary);
      color: white;
      padding: 10px 16px;
      border-radius: 999px;
      font-weight: 600;
    }

    .cart-count {
      background: var(--accent);
      color: white;
      border-radius: 50%;
      font-size: 11px;
      min-width: 20px;
      height: 20px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      margin-left: 6px;
    }

    .hero {
      max-width: 1200px;
      margin: 28px auto 0;
      padding: 70px 40px;
      border-radius: 28px;
      background: linear-gradient(135deg, #111827, #374151);
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
    }

    .hero-content {
      max-width: 580px;
    }

    .hero-label {
      color: #fdba74;
      font-weight: 700;
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: 2px;
      margin-bottom: 16px;
    }

    .hero h1 {
      font-size: clamp(36px, 5vw, 64px);
      line-height: 1.05;
      letter-spacing: -3px;
      margin-bottom: 20px;
    }

    .hero p {
      color: #d1d5db;
      font-size: 17px;
      margin-bottom: 30px;
      max-width: 450px;
    }

    .hero-btn {
      display: inline-block;
      background: var(--accent);
      color: white;
      padding: 14px 24px;
      border-radius: 10px;
      font-weight: 700;
    }

    .hero-shape {
      width: 250px;
      height: 250px;
      border-radius: 50%;
      background: linear-gradient(135deg, #fb923c, #ea580c);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 110px;
      flex-shrink: 0;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 55px 24px;
    }

    .section-heading {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      margin-bottom: 24px;
    }

    .section-heading h2 {
      font-size: 28px;
    }

    .section-heading p {
      color: var(--muted);
      font-size: 14px;
    }

    .controls {
      display: flex;
      gap: 12px;
      margin-bottom: 30px;
      flex-wrap: wrap;
    }

    .search-box {
      flex: 1;
      min-width: 220px;
    }

    .search-box input {
      width: 100%;
      padding: 13px 18px;
      border: 1px solid var(--border);
      border-radius: 10px;
      outline: none;
      background: white;
    }

    .category-btn {
      background: white;
      border: 1px solid var(--border);
      padding: 12px 18px;
      border-radius: 10px;
      color: #4b5563;
    }

    .category-btn.active,
    .category-btn:hover {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
    }

    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }

    .product-card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 16px;
      overflow: hidden;
      transition: 0.25s;
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.07);
    }

    .product-image {
      height: 220px;
      background: #f3f4f6;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 85px;
      position: relative;
    }

    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #111827;
      color: white;
      font-size: 11px;
      padding: 5px 9px;
      border-radius: 5px;
      font-weight: 700;
    }

    .product-info {
      padding: 18px;
    }

    .product-category {
      color: var(--muted);
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    .product-name {
      font-size: 16px;
      font-weight: 700;
      margin: 6px 0;
    }

    .rating {
      color: #f59e0b;
      font-size: 13px;
      margin-bottom: 14px;
    }

    .product-bottom {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
    }

    .price {
      font-size: 19px;
      font-weight: 800;
    }

    .add-btn {
      background: var(--accent);
      color: white;
      padding: 9px 13px;
      border-radius: 8px;
      font-size: 13px;
      font-weight: 700;
    }

    .no-products {
      grid-column: 1 / -1;
      text-align: center;
      padding: 50px;
      color: var(--muted);
    }

    .features {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
      margin-top: 70px;
    }

    .feature {
      background: white;
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 24px;
    }

    .feature-icon {
      font-size: 28px;
      margin-bottom: 12px;
    }

    .feature h3 {
      font-size: 16px;
      margin-bottom: 5px;
    }

    .feature p {
      font-size: 14px;
      color: var(--muted);
    }

    .overlay {
      position: fixed;
      inset: 0;
      background: rgba(0, 0, 0, 0.4);
      z-index: 200;
      opacity: 0;
      visibility: hidden;
      transition: 0.3s;
    }

    .overlay.open {
      opacity: 1;
      visibility: visible;
    }

    .cart-sidebar {
      position: absolute;
      right: 0;
      top: 0;
      height: 100%;
      width: min(420px, 100%);
      background: white;
      padding: 25px;
      display: flex;
      flex-direction: column;
      transform: translateX(100%);
      transition: 0.3s;
    }

    .overlay.open .cart-sidebar {
      transform: translateX(0);
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 25px;
    }

    .cart-header h2 {
      font-size: 22px;
    }

    .close-btn {
      background: #f3f4f6;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      font-size: 18px;
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
    }

    .cart-item {
      display: flex;
      gap: 12px;
      padding: 15px 0;
      border-bottom: 1px solid var(--border);
    }

    .cart-item-image {
      width: 65px;
      height: 65px;
      background: #f3f4f6;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 30px;
      flex-shrink: 0;
    }

    .cart-item-info {
      flex: 1;
    }

    .cart-item-info h4 {
      font-size: 14px;
      margin-bottom: 5px;
    }

    .cart-item-info p {
      font-size: 14px;
      font-weight: 700;
    }

    .quantity-controls {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 8px;
    }

    .quantity-controls button {
      width: 24px;
      height: 24px;
      border-radius: 5px;
      background: #f3f4f6;
    }

    .remove-btn {
      color: #ef4444;
      font-size: 12px;
      background: none;
      margin-top: 5px;
    }

    .cart-footer {
      border-top: 1px solid var(--border);
      padding-top: 20px;
      margin-top: 20px;
    }

    .subtotal {
      display: flex;
      justify-content: space-between;
      font-size: 20px;
      font-weight: 800;
      margin-bottom: 18px;
    }

    .checkout-btn {
      width: 100%;
      background: var(--primary);
      color: white;
      padding: 15px;
      border-radius: 10px;
      font-weight: 700;
      font-size: 15px;
    }

    .empty-cart {
      text-align: center;
      color: var(--muted);
      padding: 60px 20px;
    }

    .empty-cart div {
      font-size: 50px;
      margin-bottom: 15px;
    }

    footer {
      background: var(--primary);
      color: white;
      padding: 35px 24px;
      text-align: center;
      margin-top: 40px;
    }

    footer p {
      color: #9ca3af;
      font-size: 14px;
    }

    @media (max-width: 1000px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      nav {
        display: none;
      }
    }

    @media (max-width: 700px) {
      .hero {
        margin: 15px;
        padding: 40px 25px;
        text-align: center;
        justify-content: center;
      }

      .hero p {
        margin-left: auto;
        margin-right: auto;
      }

      .hero-shape {
        display: none;
      }

      .container {
        padding: 40px 15px;
      }

      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }

      .product-image {
        height: 160px;
        font-size: 60px;
      }

      .product-info {
        padding: 12px;
      }

      .product-bottom {
        align-items: flex-start;
        flex-direction: column;
      }

      .add-btn {
        width: 100%;
      }

      .features {
        grid-template-columns: 1fr;
      }

      .section-heading {
        align-items: flex-start;
        flex-direction: column;
      }

      .navbar {
        padding: 15px;
      }

      .logo {
        font-size: 21px;
      }
    }
  </style>
</head>

<body>

<header>
  <div class="navbar">
    <a href="#" class="logo">Nova<span>Store</span></a>

    <nav>
      <a href="#shop">Shop</a>
      <a href="#features">Why Us</a>
      <a href="#footer">Contact</a>
    </nav>

    <button class="cart-btn" onclick="openCart()">
      🛒 Cart <span class="cart-count" id="cartCount">0</span>
    </button>
  </div>
</header>

<section class="hero">
  <div class="hero-content">
    <div class="hero-label">New collection 2026</div>
    <h1>Upgrade your everyday.</h1>
    <p>
      Discover premium products designed for modern living.
      Simple, stylish, and made to last.
    </p>
    <a href="#shop" class="hero-btn">Shop collection →</a>
  </div>

  <div class="hero-shape">🛍️</div>
</section>

<main class="container" id="shop">

  <div class="section-heading">
    <div>
      <h2>Featured products</h2>
      <p>Carefully selected for you</p>
    </div>
    <p id="productCount"></p>
  </div>

  <div class="controls">
    <div class="search-box">
      <input
        type="text"
        id="searchInput"
        placeholder="Search products..."
        oninput="filterProducts()"
      >
    </div>

    <button class="category-btn active" onclick="setCategory('All', this)">All</button>
    <button class="category-btn" onclick="setCategory('Tech', this)">Tech</button>
    <button class="category-btn" onclick="setCategory('Fashion', this)">Fashion</button>
    <button class="category-btn" onclick="setCategory('Home', this)">Home</button>
  </div>

  <div class="products-grid" id="productsGrid"></div>

  <section class="features" id="features">
    <div class="feature">
      <div class="feature-icon">🚚</div>
      <h3>Free shipping</h3>
      <p>Enjoy free delivery on orders over £50.</p>
    </div>

    <div class="feature">
      <div class="feature-icon">🔒</div>
      <h3>Secure payments</h3>
      <p>Your payment details are protected.</p>
    </div>

    <div class="feature">
      <div class="feature-icon">↩️</div>
      <h3>Easy returns</h3>
      <p>Not satisfied? Return within 30 days.</p>
    </div>
  </section>

</main>

<div class="overlay" id="cartOverlay" onclick="closeCart(event)">
  <aside class="cart-sidebar" onclick="event.stopPropagation()">

    <div class="cart-header">
      <h2>Your cart</h2>
      <button class="close-btn" onclick="closeCart()">×</button>
    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">
      <div class="subtotal">
        <span>Subtotal</span>
        <span id="subtotal">£0.00</span>
      </div>

      <button class="checkout-btn" onclick="checkout()">
        Proceed to checkout →
      </button>
    </div>

  </aside>
</div>

<footer id="footer">
  <p>© 2026 NovaStore. Built for modern shopping.</p>
</footer>

<script>
  const products = [
    { id: 1, name: "Wireless Headphones", category: "Tech", price: 79.99, emoji: "🎧", rating: "★★★★★", badge: "Popular" },
    { id: 2, name: "Minimal Watch", category: "Fashion", price: 129.99, emoji: "⌚", rating: "★★★★★", badge: "New" },
    { id: 3, name: "Smart Desk Lamp", category: "Home", price: 49.99, emoji: "💡", rating: "★★★★☆", badge: "" },
    { id: 4, name: "Everyday Backpack", category: "Fashion", price: 64.99, emoji: "🎒", rating: "★★★★★", badge: "Best Seller" },
    { id: 5, name: "Portable Speaker", category: "Tech", price: 59.99, emoji: "🔊", rating: "★★★★☆", badge: "" },
    { id: 6, name: "Ceramic Coffee Set", category: "Home", price: 34.99, emoji: "☕", rating: "★★★★★", badge: "New" },
    { id: 7, name: "Classic Sneakers", category: "Fashion", price: 89.99, emoji: "👟", rating: "★★★★☆", badge: "" },
    { id: 8, name: "Mechanical Keyboard", category: "Tech", price: 99.99, emoji: "⌨️", rating: "★★★★★", badge: "Popular" }
  ];

  let cart = [];
  let selectedCategory = "All";

  function renderProducts(list = products) {
    const grid = document.getElementById("productsGrid");

    document.getElementById("productCount").textContent =
      `${list.length} product${list.length !== 1 ? "s" : ""}`;

    if (list.length === 0) {
      grid.innerHTML =
        `<div class="no-products">No products found. Try another search.</div>`;
      return;
    }

    grid.innerHTML = list.map(product => `
      <div class="product-card">
        <div class="product-image">
          ${product.badge ? `<span class="badge">${product.badge}</span>` : ""}
          ${product.emoji}
        </div>

        <div class="product-info">
          <div class="product-category">${product.category}</div>
          <div class="product-name">${product.name}</div>
          <div class="rating">${product.rating}</div>

          <div class="product-bottom">
            <div class="price">£${product.price.toFixed(2)}</div>
            <button class="add-btn" onclick="addToCart(${product.id})">
              Add to cart
            </button>
          </div>
        </div>
      </div>
    `).join("");
  }

  function filterProducts() {
    const search =
      document.getElementById("searchInput").value.toLowerCase();

    const filtered = products.filter(product => {
      const matchesCategory =
        selectedCategory === "All" ||
        product.category === selectedCategory;

      const matchesSearch =
        product.name.toLowerCase().includes(search) ||
        product.category.toLowerCase().includes(search);

      return matchesCategory && matchesSearch;
    });

    renderProducts(filtered);
  }

  function setCategory(category, button) {
    selectedCategory = category;

    document.querySelectorAll(".category-btn").forEach(btn => {
      btn.classList.remove("active");
    });

    button.classList.add("active");
    filterProducts();
  }

  function addToCart(id) {
    const product = products.find(p => p.id === id);
    const existing = cart.find(item => item.id === id);

    if (existing) {
      existing.quantity++;
    } else {
      cart.push({ ...product, quantity: 1 });
    }

    updateCart();
    openCart();
  }

  function changeQuantity(id, amount) {
    const item = cart.find(product => product.id === id);

    if (!item) return;

    item.quantity += amount;

    if (item.quantity <= 0) {
      cart = cart.filter(product => product.id !== id);
    }

    updateCart();
  }

  function removeFromCart(id) {
    cart = cart.filter(product => product.id !== id);
    updateCart();
  }

  function updateCart() {
    const cartItems = document.getElementById("cartItems");
    const cartCount = document.getElementById("cartCount");
    const subtotal = document.getElementById("subtotal");

    const totalItems = cart.reduce(
      (sum, item) => sum + item.quantity, 0
    );

    const totalPrice = cart.reduce(
      (sum, item) => sum + item.price * item.quantity, 0
    );

    cartCount.textContent = totalItems;
    subtotal.textContent = `£${totalPrice.toFixed(2)}`;

    if (cart.length === 0) {
      cartItems.innerHTML = `
        <div class="empty-cart">
          <div>🛒</div>
          <p>Your cart is empty.</p>
        </div>
      `;
      return;
    }

    cartItems.innerHTML = cart.map(item => `
      <div class="cart-item">
        <div class="cart-item-image">${item.emoji}</div>

        <div class="cart-item-info">
          <h4>${item.name}</h4>
          <p>£${(item.price * item.quantity).toFixed(2)}</p>

          <div class="quantity-controls">
            <button onclick="changeQuantity(${item.id}, -1)">−</button>
            <span>${item.quantity}</span>
            <button onclick="changeQuantity(${item.id}, 1)">+</button>
          </div>

          <button class="remove-btn" onclick="removeFromCart(${item.id})">
            Remove
          </button>
        </div>
      </div>
    `).join("");
  }

  function openCart() {
    document.getElementById("cartOverlay").classList.add("open");
    document.body.style.overflow = "hidden";
  }

  function closeCart(event) {
    if (!event || event.target === document.getElementById("cartOverlay")) {
      document.getElementById("cartOverlay").classList.remove("open");
      document.body.style.overflow = "";
    }
  }

  function checkout() {
    if (cart.length === 0) {
      alert("Your cart is empty.");
      return;
    }

    alert("Checkout demo — connect Stripe or PayPal here.");
  }

  renderProducts();
  updateCart();
</script>

</body>
</html>
