<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ZodiacIncense.aspx.cs" Inherits="client_Shivam_Agarbatti_ZodiacIncense" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shivam Agrbatti</title>

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
    <link href="Zudic.css" rel="stylesheet" type="text/css" />
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
            <%--<video autoplay loop src="https://video.wixstatic.com/video/d47472_58cce06729c54ccb935886c4b3647274/1080p/mp4/file.mp4" autoplay muted></video>--%>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Shivam Agarbatti Shop</h2>
                            <div class="breadcrumb__option">
                                <a href="index.aspx">Home</a>
                                <span>ContectUS</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Contact Us Section Begin -->

        <div class="container">
            <!-- Zodiac Table Section -->
            <div class="zodiac-table">
                <h2>🌟 Zodiac Signs & Their Meaning 🌟</h2>
                <table>
                    <tr>
                        <th>Icon</th>
                        <th>English Name</th>
                        <th>Hindi Name</th>
                        <th>Description</th>
                    </tr>

                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/aries.png" alt="Aries" class="zodiac-img"></td>
                        <td>Aries</td>
                        <td>मेष</td>
                        <td>The Leader, full of energy & courage.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/taurus.png" alt="Taurus" class="zodiac-img"></td>
                        <td>Taurus</td>
                        <td>वृषभ</td>
                        <td>Steady, strong, and grounded.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/gemini-zodiac-sign-symbol.png" alt="Gemini" class="zodiac-img"></td>
                        <td>Gemini</td>
                        <td>मिथुन</td>
                        <td>Intellectual, curious, and adaptable.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/cancer.png" alt="Cancer" class="zodiac-img"></td>
                        <td>Cancer</td>
                        <td>कर्क</td>
                        <td>Emotional, caring, and intuitive.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/leo.png" alt="Leo" class="zodiac-img"></td>
                        <td>Leo</td>
                        <td>सिंह</td>
                        <td>Bold, charismatic, and strong-willed.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/virgo.png" alt="Virgo" class="zodiac-img"></td>
                        <td>Virgo</td>
                        <td>कन्या</td>
                        <td>Practical, logical, and analytical.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/libra.png" alt="Libra" class="zodiac-img"></td>
                        <td>Libra</td>
                        <td>तुला</td>
                        <td>Balanced, harmonious, and diplomatic.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/scorpio.png" alt="Scorpio" class="zodiac-img"></td>
                        <td>Scorpio</td>
                        <td>वृश्चिक</td>
                        <td>Passionate, intense, and mysterious.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/sagittarius-sign.png" alt="Sagittarius" class="zodiac-img"></td>
                        <td>Sagittarius</td>
                        <td>धनु</td>
                        <td>Adventurous, independent, and optimistic.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/aries-zodiac-symbol-of-frontal-goat-head.png" alt="Capricorn" class="zodiac-img"></td>
                        <td>Capricorn</td>
                        <td>मकर</td>
                        <td>Ambitious, disciplined, and wise.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/aquarius.png" alt="Aquarius" class="zodiac-img"></td>
                        <td>Aquarius</td>
                        <td>कुंभ</td>
                        <td>Innovative, free-spirited, and humanitarian.</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="../../ProjectImage/zudiac/pisces.png" alt="Pisces" class="zodiac-img"></td>
                        <td>Pisces</td>
                        <td>मीन</td>
                        <td>Dreamy, artistic, and compassionate.</td>
                    </tr>
                </table>
            </div>

            <!-- Recommendation Section -->
            <div class="recommendation">
                <h2>🔮 Find Your Zodiac & Incense 🔮</h2>
                <asp:TextBox ID="calendarDOB" runat="server" CssClass="date-picker" type="date"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Find My Zodiac & Incense" CssClass="recommendation-btn" OnClick="btnGetRecommendation_Click" />
                <h3>Your Zodiac:
                    <asp:Label ID="lblZodiacSign" runat="server" Text="-"></asp:Label></h3>
                <h3>Recommended Incense:
                    <asp:Label ID="lblFragrance" runat="server" Text="-"></asp:Label></h3>
            </div>
        </div>

        <!-- Contact Us Section Begin -->




        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="header__logo main__header__logo">
                                <a href="index.aspx">
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
                                <li><a href="ContactUs.aspx">Contact</a></li>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="js/curser.js"></script>
        <script src="js/sweetalert.js"></script>
        <script src="magic.js"></script>
         <script src="//code.tidio.co/wlhkr4azv4ts4z0zdt5kvjwc6tsymr2f.js" async></script>
    </form>
</body>
</html>
