<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="essaybuing.com.user.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/home.css" rel="stylesheet" />
    <title> easybuy </title>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="logo"><a href="img/easybuy.png">easybuy</a></div>
        <div class="search">
            <a href="#">
                <asp:TextBox  placeholder="search products" runat="server" id="input"> </asp:TextBox>
                <ion-icon class="s" name="search"></ion-icon>
            </a>
        </div>
        <div class="heading">
            <ul>
                <li><a href="home.aspx" class="under">HOME</a></li>
                <li><a href="about_us.aspx" class="under">ABOUT US</a></li>
                <li><a href="#" class="under">SERVICES</a></li>
                <li><a href="singup.aspx" class="under">SING UP</a></li>
                <li><a href="login.aspx" class="under">LOGIN </a></li>
            </ul>
        </div>
        <div class="heading1">
            <ion-icon name="menu" class="ham"></ion-icon>o
        </div>
    </header>
        <section>
            <div class="section">
                <div class="section1">
                    <div class="img-slider">
                        <img src="productimg/depositphotos_216267876-stock-photo-paris-france-sep-2018-two.jpg" alt="" class="img">
                        <img src="productimg/194-1945575_transparent-laptop-png-latest-dell-laptop-2018-png.png" alt="" class="img">
                        <img src="productimg/How_to_Sell_Photos_Online_For_Both_Amateur_and_Pro_Photographers.png" alt="" class="img">
                        <img src="productimg/509-5092096_offering-high-quality-mobile-repair-service-main-image.png" alt="" class="img">
                        <img src="productimg/workplace-2303851__340.jpg" alt="" class="img">
                    </div>
                </div>
                <div class="section2">
                    <div class="container">
                        <div class="items">
                            <div class="img img1">
                                <img src="https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71JWqQB7N7L._UY675_.jpg" alt=""></div>
                            <div class="name">SHOES</div>
                            <div class="price">₹499</div>
                            <div class="info"> Shoes 65% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img2">
                                <img src="https://images.unsplash.com/photo-1516257984-b1b4d707412e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt=""></div>
                            <div class="name">MEN's T-SHIRT</div>
                            <div class="price">₹665</div>
                            <div class="info"> T-Shirt 50% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img3">
                                <img src="https://media.istockphoto.com/photos/folded-blue-jeans-on-a-white-background-modern-casual-clothing-flat-picture-id1281304280" alt=""></div>
                            <div class="name">JEANS</div>
                            <div class="price">₹990</div>
                            <div class="info">Jeans 70% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/8839887/pexels-photo-8839887.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">WATCH</div>
                            <div class="price">₹890</div>
                            <div class="info">Watch 80% of.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/6858618/pexels-photo-6858618.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">SMART PHONE</div>
                            <div class="price">₹1550</div>
                            <div class="info">Smart Phone 25% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/5552789/pexels-photo-5552789.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">TELEVISION</div>
                            <div class="price">₹1450</div>
                            <div class="info">Television (L.E.D & L.C.D ) 90% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/4295985/pexels-photo-4295985.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt=""></div>
                            <div class="name">HOODIES</div>
                            <div class="price">₹700</div>
                            <div class="info">Hoodies 55% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://media.istockphoto.com/photos/vintage-plates-with-silver-teaspoons-picture-id184363070" alt=""></div>
                            <div class="name">DINNER SET</div>
                            <div class="price">₹990</div>
                            <div class="info">Dinner Set 65% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/6463348/pexels-photo-6463348.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt=""></div>
                            <div class="name">BLANKETS</div>
                            <div class="price">₹999</div>
                            <div class="info">Blankets 80% of.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/2659939/pexels-photo-2659939.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt=""></div>
                            <div class="name">LAPTOP</div>
                            <div class="price">₹9999</div>
                            <div class="info">Laptop 45% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://media.istockphoto.com/photos/modern-kitchen-microwave-oven-picture-id1144960519" alt=""></div>
                            <div class="name">MICROWAVE</div>
                            <div class="price">₹2500</div>
                            <div class="info">Microwave 45% of.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://media.istockphoto.com/photos/black-coffee-maker-with-green-led-lights-picture-id177395430" alt=""></div>
                            <div class="name">COFFEE MAKER</div>
                            <div class="price">₹3100</div>
                            <div class="info">Coffee Maker 20% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/6606354/pexels-photo-6606354.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt=""></div>
                            <div class="name">BED</div>
                            <div class="price">₹9850</div>
                            <div class="info"> Bed 60% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://media.istockphoto.com/photos/woman-turning-on-air-conditioner-picture-id1325708905" alt=""></div>
                            <div class="name">AIR CONDITIONER</div>
                            <div class="price">₹7800</div>
                            <div class="info">Air Conditioner ( A.C ) 50% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/5834/nature-grass-leaf-green.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">BOOK</div>
                            <div class="price">₹850</div>
                            <div class="info">Books 90% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/4339598/pexels-photo-4339598.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">BAG</div>
                            <div class="price">₹3450</div>
                            <div class="info"> Bags 60% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://media.istockphoto.com/photos/hand-of-a-lady-selecting-yellow-colored-saree-in-a-shop-picture-id1301740530" alt=""></div>
                            <div class="name">SAREES</div>
                            <div class="price">₹2450</div>
                            <div class="info">Sarees 60% off.</div>
                        </div>
                        <div class="items">
                            <div class="img img1">
                                <img src="https://images.pexels.com/photos/5816934/pexels-photo-5816934.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" alt=""></div>
                            <div class="name">WASHING MACHINE</div>
                            <div class="price">₹5600</div>
                            <div class="info">Washing Machine 50% off.</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<footer>
        <div class="footer0">
            <h1>easybuy</h1>
        </div>
        <div class="footer1 ">
            Connect with us at
            <div class="social-media">
                <a href="https://www.facebook.com/profile.php?id=100021950315650" target="_blank">
                    <ion-icon name="logo-facebook"></ion-icon>
                </a>
                <a href="https://www.linkedin.com/in/yadavdheerajgama07072002"target="_blank">
                    <ion-icon name="logo-linkedin"></ion-icon>
                </a>
                <a href="https://www.youtube.com/channel/UC6KrtTq3wmW8473S8nTkUrg" target="_blank">
                    <ion-icon name="logo-youtube"></ion-icon>
                </a>
                <a href="https://www.instagram.com/part_of_investing/" target="_blank">
                    <ion-icon name="logo-instagram"></ion-icon>
                </a>
                <a href="#">
                    <ion-icon name="logo-twitter"></ion-icon>
                </a>
            </div>
        </div>
        <div class="footer2">
            <div class="product">
                <div class="heading">Products</div>
                <div class="div">Sell your Products</div>
                <div class="div">Advertise</div>
                <div class="div">Pricing</div>
                <div class="div">Product Buisness</div>
            </div>
            <div class="services">
                <div class="heading">Services</div>
                <div class="div">Return</div>
                <div class="div">Cash Back</div>
                <div class="div">Affiliate Marketing</div>
                <div class="div">Others</div>
            </div>
            <div class="Company">
                <div class="heading">Company</div>
                <div class="div">Complaint</div>
                <div class="div">Careers</div>
                <div class="div">Affiliate Marketing</div>
                <div class="div">Support</div>
            </div>
            <div class="Get Help">
                <div class="heading">Get Help</div>
                <div class="div">Help Center</div>
                <div class="div">Privacy Policy</div>
                <div class="div">Terms</div>
                <div class="div">Login</div>
            </div>
        </div>
        <div class="footer3">Copyright ©
            <h4>easybuy.com</h4> 2021-2028</div>
    </footer>
            <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <script src="./ecommerce.js"></script>
    </form>
</body>
</html>