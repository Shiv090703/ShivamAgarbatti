<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="client_Shivam_Agarbatti_checkout" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shivam Agarbatti</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <%--<link href="css/login.css" rel="stylesheet" />--%>
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
                    <li><a href="shoping-cart.aspx"><i class="fa fa-shopping-bag"></i><span>3</span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>₹150.00</span></div>
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
                    <a href="login.aspx"><i class="fa fa-user"></i>Login</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li class="active"><a href="index.aspx">Home</a></li>
                    <li><a href="shop-grid.aspx">Shop</a></li>
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
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-pinterest-p"></i></a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i>shivamagarbatti2512@gamil.com</li>
                    <li>Free Shipping for all Order of ₹99</li>
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
                                <div class="header__top__right__auth">
                                    <a href="login.aspx" id="loginBtn"><i class="fa fa-user"></i>Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Updated Login Modal -->
<div id="loginModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <div class="modal-header">
            <img src="../../ProjectImage/taaft.com-image-generator-by-taaft-1739539825.png" alt="Login Image" class="login-image">
            <h2>Welcome Back</h2>
        </div>
        <form id="loginForm">
            <label>Email:</label>
            <input type="email" id="email" required>
            
            <label>Mobile Number:</label>
            <input type="password" id="mobile" required>
            
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<style>
/* Modal background */
.modal {
    display: none;
    position: fixed;
    z-index: 1000;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.6);
    backdrop-filter: blur(8px);
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Modal content */
.modal-content {
    background: linear-gradient(135deg, #ffffff, #e3f2fd);
    padding: 30px;
    width: 420px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
    text-align: left;
    position: relative;
    animation: fadeIn 0.5s ease-in-out;
}

/* Close button */
.close {
    position: absolute;
    top: 12px;
    right: 15px;
    font-size: 24px;
    font-weight: bold;
    color: #333;
    cursor: pointer;
    transition: 0.3s;
}

.close:hover {
    color: #d9534f;
}

/* Modal Header */
.modal-header {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 15px;
}

.modal-header h2 {
    color: #333;
    font-weight: bold;
}

.login-image {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    margin-bottom: 10px;
}

/* Input styling */
.modal-content input {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #bbb;
    border-radius: 8px;
    font-size: 16px;
    background: #f9f9f9;
    transition: 0.3s;
}

.modal-content input:focus {
    border-color: #007bff;
    background: #fff;
    outline: none;
}

/* Button styling */
.modal-content button {
    width: 95%;
    background: #007bff;
    color: white;
    border: none;
    padding: 12px;
    font-size: 18px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s ease-in-out;
}

.modal-content button:hover {
    background: #0056b3;
}

/* Animation */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>

<script>
    document.getElementById("loginBtn").addEventListener("click", function(event) {
        event.preventDefault();
        document.getElementById("loginModal").style.display = "block";
    });

    document.querySelector(".close").addEventListener("click", function() {
        document.getElementById("loginModal").style.display = "none";
    });

    document.getElementById("loginForm").addEventListener("submit", function(e) {
        e.preventDefault();
        var email = document.getElementById("email").value;
        var mobile = document.getElementById("mobile").value;

        fetch("Pages/Login.aspx", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: "email=" + encodeURIComponent(email) + "&mobile=" + encodeURIComponent(mobile)
        })
        .then(response => response.text())
        .then(data => {
            if (data === "success") {
                alert("Login Successful!");
        location.reload();
    } else {
            alert("Invalid Credentials!");
    }
    });
    });
</script>



            <!-- Include JS -->

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
                                <li><a href="shoping-cart.aspx"><i class="fa fa-shopping-bag"></i><span>3</span></a></li>
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

            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Shivam Agarbatti Shop</h2>
                            <div class="breadcrumb__option">
                                <a href="index.aspx">Home</a>
                                <span>Chekout</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Checkout Section Begin -->
        <section class="checkout spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h6><span class="icon_tag_alt"></span>Having an Account? <a href="#">Click here</a> to Login</h6>
                    </div>
                </div>
                <div class="checkout__form">
                    <h4>Billing Details</h4>

                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>First Name<span>*</span></p>
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                            ErrorMessage="First Name is required" ForeColor="Red" Display="Dynamic" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Last Name<span>*</span></p>
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                                            ErrorMessage="Last Name is required" ForeColor="Red" Display="Dynamic" />
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input">
                                <p>Country<span>*</span></p>
                                <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="txtCountry"
                                    ErrorMessage="Country is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="checkout__input">
                                <p>Address<span>*</span></p>
                                <asp:TextBox ID="txtStreetAddress" runat="server" CssClass="form-control" placeholder="Street Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" ControlToValidate="txtStreetAddress"
                                    ErrorMessage="Street Address is required" ForeColor="Red" Display="Dynamic" />
                                <asp:TextBox ID="txtApartment" runat="server" CssClass="form-control" placeholder="Apartment, suite, unit, etc. (optional)"></asp:TextBox>
                            </div>
                            <div class="checkout__input">
                                <p>Town/City<span>*</span></p>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity"
                                    ErrorMessage="City is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="checkout__input">
                                <p>State<span>*</span></p>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState"
                                    ErrorMessage="State is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="checkout__input">
                                <p>Postcode / ZIP<span>*</span></p>
                                <asp:TextBox ID="txtPostcode" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPostcode" runat="server" ControlToValidate="txtPostcode"
                                    ErrorMessage="Postcode is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Phone<span>*</span></p>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                                            ErrorMessage="Phone number is required" ForeColor="Red" Display="Dynamic" />
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                            ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" />
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                            ErrorMessage="Enter a valid email address" ForeColor="Red" Display="Dynamic"
                                            ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" />
                                    </div>
                                </div>
                            </div>
                            <div class="checkout__input__checkbox">
                                <asp:CheckBox ID="chkCreateAccount" runat="server" />
                                <label for="chkCreateAccount">Create an account?</label>
                            </div>
                            <p>Create an account by entering the information below. If you are a returning customer, please login at the top of the page.</p>
                            <div class="checkout__input">
                                <p>Account Password<span>*</span></p>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                    ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Your Order</h4>
                                <div class="checkout__order__products">Products <span>Total</span></div>
                                <ul>
                                    <asp:Literal ID="litProductList" runat="server"></asp:Literal>
                                </ul>
                                <div class="checkout__order__subtotal">
                                    <asp:Literal ID="litSubtotal" runat="server"></asp:Literal>
                                </div>
                                <div class="checkout__order__total">
                                    <asp:Literal ID="litTotal" runat="server"></asp:Literal>
                                </div>

                                <div class="checkout__input__checkbox">
                                    <asp:CheckBox ID="chkPayment" runat="server" />
                                    <label for="chkPayment">Cash on delivery</label>
                                </div>

                                <div class="checkout__input__checkbox">
                                    <asp:CheckBox ID="chkPaypal" runat="server" />
                                    <label for="chkPaypal">Pay online </label>
                                </div>

                                <asp:Button ID="btnPlaceOrder" runat="server" CssClass="site-btn" Text="PLACE ORDER" OnClientClick="return validateForm();" OnClick="btnPlaceOrder_Click" />
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script>
                function validateForm() {
                    var email = document.getElementById('<%= txtEmail.ClientID %>').value;
                    if (!email.trim()) {
                        alert("Email is required.");
                        return false;
                    }
                    return true;
                }
            </script>


        </section>
        <!-- Checkout Section End -->

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
         <script src="//code.tidio.co/wlhkr4azv4ts4z0zdt5kvjwc6tsymr2f.js" async></script>
        <%--<script src="js/login.js" defer></script>--%>
    </form>
</body>

</html>
