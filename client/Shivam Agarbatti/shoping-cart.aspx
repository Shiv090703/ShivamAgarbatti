<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shoping-cart.aspx.cs" Inherits="client_Shivam_Agarbatti_shoping_cart" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shivam agarabtti</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <form id="form1" runat="server">
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#">
                    <img src="img/logo.png" alt=""></a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li><a href="#"><i class="fa fa-heart"></i><span>1</span></a></li>
                    <li><a href="#"><i class="fa fa-shopping-bag"></i><span>3</span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>$150.00</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__language">
                    <img src="img/language.png" alt="">
                    <div>English</div>
                    <span class="arrow_carrot-down"></span>
                    <ul>
                        <li><a href="#">Spanis</a></li>
                        <li><a href="#">English</a></li>
                    </ul>
                </div>
                <div class="header__top__right__auth">
                    <a href="#"><i class="fa fa-user"></i>Login</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li class="active"><a href="./index.html">Home</a></li>
                    <li><a href="./shop-grid.html">Shop</a></li>
                    <li><a href="#">Pages</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-details.html">Shop Details</a></li>
                            <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                            <li><a href="./checkout.html">Check Out</a></li>
                            <li><a href="./blog-details.html">Blog Details</a></li>
                        </ul>
                    </li>
                    <li><a href="./blog.html">Blog</a></li>
                    <li><a href="./contact.html">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-pinterest-p"></i></a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i>hello@colorlib.com</li>
                    <li>Free Shipping for all Order of $99</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i>shivamagarbatti2512@gamil.com</li>
                                    <li>Free Shipping for all Order of ₹99</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </div>
                                <%--<div class="header__top__right__language">
                                    <img src="img/language.png" alt="">
                                    <div>English</div>
                                    <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li><a href="#">Spanis</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </div>--%>
                                <div class="header__top__right__auth">
                                    <a href="#"><i class="fa fa-user"></i>Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row d-flex align-items-center">
                    <div class="col-lg-3">
                        <div class="header__logo main__header__logo">
                            <a href="index.aspx">
                                <img src="../../ProjectImage/taaft.com-image-generator-by-taaft-1739539825.png" alt="logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="index.aspx">Home</a></li>
                                <li class="active"><a href="shop-grid.aspx">Shop</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="header__menu__dropdown">
                                        <li><a href="shop-details.aspx">Shop Details</a></li>
                                        <li><a href="shoping-cart.aspx">Shoping Cart</a></li>
                                        <li><a href="checkout.aspx">Check Out</a></li>
                                        <li><a href="blog.aspx">Blog Details</a></li>
                                        <li><a href="ZodiacIncense.aspx">Zodiac</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.aspx">Blog</a></li>
                                <li><a href="ContactUs.aspx">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <ul>
                                <li><a href="#"><i class="fa fa-heart"></i><span>1</span></a></li>
                                <li><a href="#"><i class="fa fa-shopping-bag"></i><span>3</span></a></li>
                            </ul>
                            <div class="header__cart__price">item: <span>₹150.00</span></div>
                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->



        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/product/91nPsBKyQnL.jpg">
            <%--<video autoplay loop src="https://video.wixstatic.com/video/d47472_58cce06729c54ccb935886c4b3647274/1080p/mp4/file.mp4" autoplay muted></video>--%>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Shivam Agarbatti Shop</h2>
                            <div class="breadcrumb__option">
                                <a href="#">Home</a>
                                <span>cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Shoping Cart Section Begin -->
        <section class="shoping-cart spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__table">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="shoping__product">Products</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="shoping__cart__item">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_photo") %>' Width="50" Height="50" />
                                                    <h5><%# Eval("product_name") %></h5>
                                                </td>

                                                <td class="shoping__cart__price">₹<span class="price"><%# Eval("price") %></span></td>

                                                <td class="shoping__cart__quantity">
                                                    <%-- <input type="number" class="quantity" data-price='<%# Eval("price") %>' value="1" min="1" onchange="updateTotal(this)" />--%>
                                                    <asp:TextBox ID="txtQuantity" runat="server" data-price='<%# Eval("price") %>' CssClass="quantity"
                                                        Text="1" type="number" min="1" onchange="updateTotal(this)">
                                                    </asp:TextBox>

                                                </td>

                                                <td class="shoping__cart__total"><span class="total">
                                                    <asp:Label ID="lbl_total" Visible="false" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                                </span></td>

                                                <td class="shoping__cart__item__close">
                                                    <span class="icon_close" onclick="removeItem('<%# Eval("cart_id") %>')"></span>
                                                    <asp:Label ID="lbl_CART_id" Visible="false" runat="server" Text='<%# Eval("cart_id") %>'></asp:Label>
                                                    <asp:Label ID="lbl_PROD_id" Visible="false" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:SACON %>"
                                        SelectCommand="SELECT cart_master.cart_id, cart_master.product_id, product_master.product_name, product_master.price, product_master.product_photo, cart_master.ip_address 
                   FROM product_master 
                   INNER JOIN cart_master ON product_master.product_Id = cart_master.product_id 
                   WHERE (cart_master.ip_address = @ip)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lbl_ip" Name="ip" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Label ID="lbl_ip" runat="server" Visible="false" Text="Label"></asp:Label>
                                    <script>
                                        function removeItem(cartId) {
                                            Swal.fire({
                                                title: "Are you sure?",
                                                text: "Do you really want to remove this item from the cart?",
                                                icon: "warning",
                                                showCancelButton: true,
                                                confirmButtonColor: "#d33",
                                                cancelButtonColor: "#3085d6",
                                                confirmButtonText: "Yes, remove it!"
                                            }).then((result) => {
                                                if (result.isConfirmed) {
                                                    fetch(`shoping-cart.aspx?remove_cart_id=${encodeURIComponent(cartId)}`, {
                                                        method: "GET",
                                                        headers: { "Accept": "application/json" }
                                                    })
                                                    .then(response => {
                                                        if (!response.ok) {
                                                            throw new Error(`HTTP error! Status: ${response.status}`);
                                        }
                                        return response.json();
                                        })
            .then(data => {
                Swal.fire({
                    title: data.success ? "Success!" : "Error!",
                    text: data.message,
                    icon: data.success ? "success" : "error",
                    confirmButtonColor: "#3085d6"
                }).then(() => {
                    if (data.success) {
                        location.reload(); // ✅ Reload cart after successful deletion
                                        }
                                        });
                                        })
            .catch(error => {
                console.error("Fetch Error:", error);
                                        Swal.fire("Error!", "Something went wrong. Please try again.", "error");
                                        });
                                        }
                                        });
                                        }


                                    </script>

                                    <script>
                                      
                                        function updateTotal(input) {
                                            console.log(input);
                                            let quantity = parseInt(input.value);
                                            let price = parseFloat(input.getAttribute("data-price"));
                                            let total = quantity * price;

                                            // Update total in UI
                                            input.closest("tr").querySelector(".total").innerText = `₹${total.toFixed(2)}`;

                                            // Store in sessionStorage (for backend)
                                            let productId = input.getAttribute("data-product-id");
                                            sessionStorage.setItem(`cart_${productId}`, JSON.stringify({ quantity, total }));

                                        // Send to backend using AJAX
                                        $.ajax({
                                            type: "POST",
                                            url: "shoping-cart.aspx/SaveCartSession",
                                            data: JSON.stringify({ productId: productId, quantity: quantity, total: total }),
                                            contentType: "application/json; charset=utf-8",
                                            dataType: "json",
                                            success: function (response) {
                                               
                                                console.log("Cart updated in session.");
                                            }
                                        });
                                        }
                                        document.addEventListener("DOMContentLoaded", function () {
                                            document.querySelectorAll(".quantity").forEach(input => {
                                                updateTotal(input);
                                        });
                                        });
                                    </script>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shoping__cart__btns">
                            <a href="shop-grid.aspx" class="primary-btn cart-btn">CONTINUE SHOPPING</a>

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__continue">
                            <div class="shoping__discount">
                                <h5>Discount Codes</h5>

                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>Cart Total</h5>
                            <ul>
                                <li>Subtotal: <span id="subtotalSpan">₹454.98</span></li>
                                <li>Total: <span id="totalSpan">₹454.98</span></li>
                            </ul>

                            <asp:Button ID="checkoutBtn" runat="server" CssClass="primary-btn"
                                Text="PROCEED TO CHECKOUT"
                                
                                OnClick="checkoutBtn_Click" />

                        </div>
                        <script>
                            function updateTotal(input) {
                                let price = parseFloat(input.getAttribute("data-price")); // Get item price
                                let quantity = parseInt(input.value); // Get new quantity
                                let totalElement = input.closest("tr").querySelector(".total"); // Get total element
        
                                // ✅ Update total price for the row
                                let newTotal = price * quantity;
                                totalElement.textContent = `₹${newTotal.toFixed(2)}`; 

                                // ✅ Update Cart Total
                                updateCartTotal();
                                updateCheckoutLink();
                            }

                            function updateCartTotal() {
                                let total = 0;
                                document.querySelectorAll(".total").forEach(item => {
                                    total += parseFloat(item.textContent.replace("₹", "")); // Remove ₹ and sum up
                            });

                            // ✅ Update Subtotal & Total Section
                            document.querySelector(".shoping__checkout ul li:nth-child(1) span").textContent = `₹${total.toFixed(2)}`;
                            document.querySelector(".shoping__checkout ul li:nth-child(2) span").textContent = `₹${total.toFixed(2)}`;
                            }

                            // ✅ Ensure subtotal is correct on page load
                            document.addEventListener("DOMContentLoaded", updateCartTotal);
                        </script>

                    </div>
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="header__logo main__header__logo">
                                <a href="./index.html">
                                    <img src="../../ProjectImage/taaft.com-image-generator-by-taaft-1739539825.png" alt="logo"></a>
                            </div>
                            <ul>
                                <li>Address: 115/10 Mahadev Road 388540 Borsad,India</li>
                                <li>Phone: +91 8799341427</li>
                                <li>Email: Shivamagarbatii2512@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>Useful Links</h6>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">About Our Shop</a></li>
                                <li><a href="#">Secure Shopping</a></li>
                                <li><a href="#">Delivery infomation</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                            </ul>
                            <ul>
                                <li><a href="#">Who We Are</a></li>
                                <li><a href="#">Our Services</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Innovation</a></li>
                                <li><a href="#">Testimonials</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Join Our Newsletter Now</h6>
                            <p>Get E-mail updates about our latest shop and special offers.</p>
                            <%--<form action="#">--%>
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                            <%--</form>--%>
                            <div class="footer__widget__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/sweetalert.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                updateCheckoutLink(); // ✅ Call on page load

                // ✅ Attach event listeners to quantity inputs (if cart changes)
                document.querySelectorAll(".quantity-input").forEach(input => {
                    input.addEventListener("change", updateCheckoutLink);
            });
            });

            function updateCheckoutLink() {
                // ✅ Get product total (first .total element)
                let productTotalElement = document.querySelector(".total");
                let productTotal = productTotalElement ? productTotalElement.textContent.replace("₹", "").trim() : "0.00";

                // ✅ Get subtotal & total
                let subtotal = document.getElementById("subtotalSpan").textContent.replace("₹", "").trim();
                let total = document.getElementById("totalSpan").textContent.replace("₹", "").trim();

                // ✅ Update checkout button link with query string
                let checkoutBtn = document.getElementById("checkoutBtn");
                checkoutBtn.href = `checkout.aspx?product_total=${encodeURIComponent(productTotal)}&subtotal=${encodeURIComponent(subtotal)}&total=${encodeURIComponent(total)}`;
            }

        </script>

         <script src="//code.tidio.co/wlhkr4azv4ts4z0zdt5kvjwc6tsymr2f.js" async></script>
    </form>
</body>

</html>
