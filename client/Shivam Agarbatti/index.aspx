<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="client_ogani_master_index" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zxx">

<head runat="server">
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shivam agarbatti </title>

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
                            <li><a href="ZodiacIncense.aspx">Zodiac</a></li>
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
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li><i class="fa fa-envelope"></i>shivamagarbatti2512@gamil.com</li>
                                    <li>Free Shipping for all Order of ₹99</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                                </div>

                                <div class="header__top__right__auth">
                                    <a href="login.aspx"><i class="fa fa-user"></i>Login</a>
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
                            <a href="#">
                                <img src="../../ProjectImage/taaft.com-image-generator-by-taaft-1739539825.png" alt="logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="index.aspx">Home</a></li>
                                <li ><a href="shop-grid.aspx">Shop</a></li>
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

        <!-- Hero Section Begin -->
        <section class="hero">
            <div class="container">
                <div class="row">
                    <%--<div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>All Categorey</span>
                            </div>
                            <ul>
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="category_Id" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <li><a href="#"><%# Eval("category_name") %></a></li>

                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>" SelectCommand="SELECT [category_name], [category_Id] FROM [catagory_master] WHERE ([is_active] = @is_active)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="true" Name="is_active" Type="Boolean" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            
                            </ul>
                        </div>
                    </div>--%>
                    <div class="col-lg-12">
                        <div class="hero__search">
                        </div>
                        <div class="hero__item set-bg rounded" data-setbg='<%= ResolveUrl("../../ProjectImage/index/112085banner1.jpg") %>'>
                            <div class="hero__text text-white">
                                
                                <span class="text-white">One Tap to</span>
                                <h2 class="text-white">Your Fresh
                                    <br />
                                    100% Organic</h2>
                                <p>Free Pickup and Delivery Available</p>
                                <a href="shop-grid.aspx" class="primary-btn">SHOP NOW</a>
                            </div>
                        </div>
                    </div>
        </section>
        <br />
        <!-- Hero Section End -->


        <!-- Categories Section Begin -->
        <section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg='<%= ResolveUrl("../../ProjectImage/dhop_01.jpg") %>'>
                        <h5><a href="#">Manthan Dhoop</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg='<%= ResolveUrl("../../ProjectImage/dhoop_02.jpg") %>'>
                        <h5><a href="#">Mogra</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg='<%= ResolveUrl("../../ProjectImage/agarbatti%20_03.jpg") %>'>
                        <h5><a href="#">Paking Agarbatti</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg='<%= ResolveUrl("../../ProjectImage/150_Three-in-one_1.jpg") %>'>
                        <h5><a href="#">Cycal agarbatti</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg='<%= ResolveUrl("../../ProjectImage/4_7cf13463-217a-48f8-a334-55a3ad23e51d_720x.jpg") %>'>
                        <h5><a href="#">Champa</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        <!-- Categories Section End -->

        <!-- Featured Section Begin -->
        <section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Featured Product</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".oranges">Agarbatti</li>
                        <li data-filter=".fresh-meat">Dhoop</li>
                        <li data-filter=".vegetables">kapur</li>
                        <li data-filter=".fastfood">Hand Med Agarabtti</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <asp:Repeater ID="rptFeaturedProducts" runat="server">
                <ItemTemplate>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix <%# Eval("CategoryClass") %>">
                        <div class="featured__item">
                            <div class="featured__item__pic set-bg" data-setbg='<%# ResolveUrl(Eval("ImagePath").ToString()) %>'>
                                <ul class="featured__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="featured__item__text">
                                <h6><a href="#"><%# Eval("ProductName") %></a></h6>
                                <h5>₹<%# Eval("Price") %></h5>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>

       

        <!-- Blog Section Begin -->
        <section class="from-blog spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title from-blog__title">
                            <h2>From The Blog</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../ProjectImage/index/51ixtAh41bL._SY450.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i>May 4,2025</li>
                                    <li><i class="fa fa-comment-o"></i>5</li>
                                </ul>
                                <h5><a href="#">Enhance Your Space with Divine Fragrance</a></h5>
<p>Experience the pure essence of our premium-quality Agarbatti. Crafted with natural ingredients, it brings peace, positivity, and a refreshing aroma to your home. Perfect for meditation, rituals, and relaxation.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../ProjectImage/index/61ueT8yKbUL._SL1080_720x.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i>May 8,2024</li>
                                    <li><i class="fa fa-comment-o"></i>5</li>
                                </ul>
                                <h5><a href="#">Pure and Divine Fragrance for Your Rituals</a></h5>
<p>Light up your prayers with the essence of purity. Our premium-quality Agarbatti creates a serene and sacred atmosphere, perfect for meditation, worship, and relaxation. Experience the divine aroma that brings peace and positivity to your space.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="../../ProjectImage/index/17_720x.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i>May 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i>5</li>
                                </ul>
                                <h5><a href="#">Experience Luxury with Perfumed Fragrance Sticks</a></h5>
<p>Indulge in the captivating aroma of our premium fragrance sticks, inspired by exquisite perfumes. Designed to elevate your surroundings with a long-lasting and refreshing scent, perfect for relaxation, meditation, and spiritual moments.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->

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
                                <li><a href="#">Projects</a></li>
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
                            <form action="#">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
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
        <script src="//code.tidio.co/wlhkr4azv4ts4z0zdt5kvjwc6tsymr2f.js" async></script>

    </form>
</body>

</html>
