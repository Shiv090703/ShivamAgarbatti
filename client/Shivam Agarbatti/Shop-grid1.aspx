<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shop-grid1.aspx.cs" Inherits="client_ogani_master_Shop_grid1" %>

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
</head>

<body>
    <%-- <section class="smoke">
        <video autoplay loop src="https://video.wixstatic.com/video/d47472_58cce06729c54ccb935886c4b3647274/1080p/mp4/file.mp4" autoplay muted></video>
    </section>--%>
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
                                <li><a href="#s">Home</a></li>
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

        <!-- Hero Section Begin -->
        <section class="hero hero-normal">
            <%--<div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>All departments</span>
                            </div>
                            <ul>
                                <li><a href="#">Fresh Meat</a></li>
                                <li><a href="#">Vegetables</a></li>
                                <li><a href="#">Fruit & Nut Gifts</a></li>
                                <li><a href="#">Fresh Berries</a></li>
                                <li><a href="#">Ocean Foods</a></li>
                                <li><a href="#">Butter & Eggs</a></li>
                                <li><a href="#">Fastfood</a></li>
                                <li><a href="#">Fresh Onion</a></li>
                                <li><a href="#">Papayaya & Crisps</a></li>
                                <li><a href="#">Oatmeal</a></li>
                                <li><a href="#">Fresh Bananas</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 ">
                        <div class="input-group mt-3 mb-3">
                            <div class="input-group-prepend">
                                <button type="button" class="btn btn-outline-success" >
                                    Category
                                </button>
                            </div>
                            <input type="text" class="form-control input-group-append" placeholder="Username">
                            <button type="button" class="btn btn-outline-success input-group-append">
                                Search
                            </button>
                        </div>

                    </div>
                </div>
            </div>--%>
        </section>
        <!-- Hero Section End -->

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
                                <span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Section Begin -->
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-5">
                        <div class="sidebar">
                            <div class="sidebar__item">
                                <h4>Shop By Categories</h4>
                                <ul>
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="category_Id" DataSourceID="SqlDataSource1">
                                        <ItemTemplate>
                                            <li><a href="Shop-grid1.aspx?catId=<%# Eval("category_Id") %>"><%# Eval("category_name") %></a></li>

                                        </ItemTemplate>
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>" SelectCommand="SELECT [category_Id], [category_name] FROM [catagory_master] WHERE ([is_active] = @is_active) ORDER BY [category_name], [category_Id], [category_logo]">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="true" Name="is_active" Type="Boolean" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <%-- <li><a href="#">Vegetables</a></li>
                                <li><a href="#">Fruit & Nut Gifts</a></li>
                                <li><a href="#">Fresh Berries</a></li>
                                <li><a href="#">Ocean Foods</a></li>
                                <li><a href="#">Butter & Eggs</a></li>
                                <li><a href="#">Fastfood</a></li>
                                <li><a href="#">Fresh Onion</a></li>
                                <li><a href="#">Papayaya & Crisps</a></li>
                                <li><a href="#">Oatmeal</a></li>--%>
                                </ul>
                            </div>
                            <div class="sidebar__item">
                                <h4>Price</h4>
                                <div class="price-range-wrap">
                                    <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                        data-min="10" data-max="540">
                                        <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                    </div>
                                    <div class="range-slider">
                                        <div class="price-input">
                                            <input type="text" id="minamount">
                                            <input type="text" id="maxamount">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="sidebar__item sidebar__item__color--option">
                                <h4>Colors</h4>
                                <div class="sidebar__item__color sidebar__item__color--white">
                                    <label for="white">
                                        White
                                   
                                        <input type="radio" id="white">
                                    </label>
                                </div>
                                <div class="sidebar__item__color sidebar__item__color--gray">
                                    <label for="gray">
                                        Gray
                                   
                                        <input type="radio" id="gray">
                                    </label>
                                </div>
                                <div class="sidebar__item__color sidebar__item__color--red">
                                    <label for="red">
                                        Red
                                   
                                        <input type="radio" id="red">
                                    </label>
                                </div>
                                <div class="sidebar__item__color sidebar__item__color--black">
                                    <label for="black">
                                        Black
                                   
                                        <input type="radio" id="black">
                                    </label>
                                </div>
                                <div class="sidebar__item__color sidebar__item__color--blue">
                                    <label for="blue">
                                        Blue
                                   
                                        <input type="radio" id="blue">
                                    </label>
                                </div>
                                <div class="sidebar__item__color sidebar__item__color--green">
                                    <label for="green">
                                        Green
                                   
                                        <input type="radio" id="green">
                                    </label>
                                </div>
                            </div>--%>
                            <div class="sidebar__item">
                                <h4>Popular Size</h4>
                                <%--<div class="sidebar__item__size">
                                    <label for="large">
                                        Large
                                   
                                        <input type="radio" id="large">
                                    </label>
                                </div>
                                <div class="sidebar__item__size">
                                    <label for="medium">
                                        Medium
                                   
                                        <input type="radio" id="medium">
                                    </label>
                                </div>
                                <div class="sidebar__item__size">
                                    <label for="small">
                                        Small
                                   
                                        <input type="radio" id="small">
                                    </label>
                                </div>
                                <div class="sidebar__item__size">
                                    <label for="tiny">
                                        Tiny
                                   
                                        <input type="radio" id="tiny">
                                    </label>
                                </div>--%>
                            </div>
                            <div class="sidebar__item">
                                <div class="latest-product__text">
                                    <h4>Top Seller</h4>
                                    <%--<div class="latest-product__slider owl-carousel">
                                        <div class="latest-prdouct__slider__item">
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-1.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-2.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-3.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="latest-prdouct__slider__item">
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-1.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-2.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="img/latest-product/lp-3.jpg" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>Crab Pool Security</h6>
                                                    <span>$30.00</span>
                                                </div>
                                            </a>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-7">

                        <div class="filter__item">
                            <div class="row">
                                <div class="col-lg-4 col-md-5">
                                    <div class="filter__sort">
                                        <span>Sort By</span>
                                        <select>
                                            <option value="0">Default</option>
                                            <option value="0">Default</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="filter__found">
                                        <h6><span>16</span> Products found</h6>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-3">
                                    <div class="filter__option">
                                        <span class="icon_grid-2x2"></span>
                                        <span class="icon_ul"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg" data-setbg='<%# Eval("product_photo") %>'>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("product_photo") %>' />
                                                <ul class="product__item__pic__hover">
                                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="shop-details.aspx?prod_id=<%# Eval("product_Id") %>&fragrance like <%# Eval("fragrance") %>"><i class="fa fa-retweet"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product__item__text">
                                                <h6><a href="#"><%# Eval("product_name") %></a></h6>
                                                <h5>₹<%# Eval("price") %></h5>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:SACON %>' SelectCommand="SELECT product_Id, product_name, price, product_photo, is_active, fragrance FROM product_master WHERE (category_Id = @category_Id)">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="8" Name="category_Id" QueryStringField="catId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        <div class="product__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- Product Section End -->

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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="js/curser.js"></script>
         <%--<script src="//code.tidio.co/wlhkr4azv4ts4z0zdt5kvjwc6tsymr2f.js" async></script>--%>
        <script src="js/chetbot.js"></script>
    </form>
</body>
</html>
