<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Каталог - К49</title>
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&amp;display=swap');
    
            * {
            font-family: 'Montserrat', sans-serif;
            }


            * {
                box-sizing: border-box;
            }

            body {
                margin: 0;
                padding: 0;
                background-color: rgb(255, 0, 0);
            }

            header {
                display: flex;
                align-items: center;
                width: 97vw;
                height: 15vh;
                padding: 10px;
                border: 4px black solid;
                border-radius: 30px;
                background-color: white;
                justify-content: space-between;
                position: fixed;
                top: 0;
                left: 50%;
                transform: translateX(-50%);
                z-index: 1000;
            }
            header .logo {
                display: flex;
                align-items: center;
                height: 100%;
            }
            header .logo a {
                display: block;
                height: 100%;
                line-height: 0;
            }
            header .logo a .logo__svg {
                height: 100%;
                width: auto;
                display: block;
            }
            header nav ul {
                display: flex;
                gap: 60px;
                list-style: none;
                margin: 0;
                padding: 0;
            }
            header nav ul li {
                font-size: 1.5rem;
                font-weight: bold;
            }
            header nav ul li a {
                color: black;
            }
            .burger {
                display: none;
                flex-direction: column;
                gap: 5px;
                cursor: pointer;
            }
            .burger span {
                width: 30px;
                height: 4px;
                background: black;
                border-radius: 2px;
                transition: 0.3s;
            }
            @media (max-width: 768px) {
                header {
                    flex-direction: row;
                    justify-content: space-between;
                    align-items: center;
                }
                .burger {
                    display: flex;
                }
                header nav {
                    position: fixed;
                    top: 0;
                    right: -100%;
                    width: 70%;
                    height: 100vh;
                    background: white;
                    border-left: 3px solid black;
                    padding-top: 100px;
                    transition: 0.3s;
                }
                header nav ul {
                    flex-direction: column;
                    align-items: center;
                    gap: 30px;
                }
                header nav.active {
                    right: 0;
                }
                .burger.active span:nth-child(1) {
                    transform: rotate(45deg) translate(5px, 5px);
                }
                .burger.active span:nth-child(2) {
                    opacity: 0;
                }
                .burger.active span:nth-child(3) {
                    transform: rotate(-45deg) translate(6px, -6px);
                }
            }

            main {
                margin-top: calc(15vh + 10px);
                width: 97vw;
                margin-left: auto;
                margin-right: auto;
                padding-bottom: 20px;
                background-color:rgb(255, 255, 255);
                border: 4px black solid;
                border-radius: 30px;
            }

            h1{
            font-size: 3rem;
            padding-left: 80px;
            }

            @media (max-width: 768px) {
                main { margin-top: 180px; }
                h1 { font-size: 2rem; text-align: center; padding-left: 0; }
            }

            .but-container{
                display:flex;
                flex-direction:row;
                flex-wrap:wrap;
                justify-content:left;
                margin-bottom:30px;
                margin-left:30px;
                gap:10px;
            }

            .but-container *{
                padding:15px;
                border:solid black 1px;
                border-radius:30px;
                cursor:pointer;
            }

            .container{
                display: grid;
                grid-template-columns: 30% 30% 30%;
                gap: 30px;
                justify-content:center;
            }

            @media (max-width: 1024px) {
                .container { grid-template-columns: repeat(2, 1fr); }
            }

            @media (max-width: 768px) {
                .container { grid-template-columns: 1fr; }
            }

            .car-card {
                background-color: white;
                border:1px black solid;
                border-radius:30px;
                overflow: hidden;
                display: flex;
                flex-direction: column;
            }

            .car-image {
                height: 350px;
                background-color: #eee;
                border-bottom: 4px black solid;
                display: flex;
                align-items: center;
                justify-content: center;
                font-weight: bold;
            }

            .car-info {
                padding: 20px;
            }

            .car-info h2 {
                margin: 0 0 10px 0;
                color: black;
                border-bottom: 2px red solid;
                display: inline-block;
            }

            .car-details {
                list-style: none;
                padding: 0;
                margin: 10px 0;
            }

            .car-details li {
                margin-bottom: 5px;
                font-size: 1.1rem;
            }

            .car-details b {
                color: red;
            }

            .price-tag {
                font-size: 1.4rem;
                font-weight: bold;
                text-align: right;
                margin-top: 10px;
            }

            footer {
                width: 97vw;
                margin: 20px auto 10px;
                background-color: white;
                border: 4px black solid;
                border-radius: 30px;
                padding: 40px 20px;
                color: black;
                }
                footer .container {
                display: grid;
                grid-template-columns: 2fr 1fr 1fr;
                gap: 30px;
                }
                footer .container h4 {
                font-size: 1.2rem;
                margin-bottom: 20px;
                text-transform: uppercase;
                border-bottom: 2px red solid;
                display: inline-block;
                }
                footer .container ul {
                list-style: none;
                padding: 0;
                }
                footer .container ul li {
                margin-bottom: 10px;
                }
                footer .container ul li a {
                color: black;
                text-decoration: none;
                }
                footer .container ul li a:hover {
                color: red;
                }
                footer .copyright {
                margin-top: 20px;
                font-size: 0.8rem;
                opacity: 0.7;
                }
                footer .personal-info {
                opacity: 0.7;
                }

                @media (max-width: 768px) {
                footer {
                    padding: 25px 15px;
                }
                footer .container {
                    grid-template-columns: 1fr;
                    text-align: center;
                }
                footer .container h4 {
                    font-size: 1.1rem;
                }
                footer .container ul {
                    padding: 0;
                }
                footer .container ul li {
                    margin-bottom: 8px;
                }
                .copyright {
                    margin-top: 15px;
                    font-size: 0.7rem;
                }
                .personal-info {
                    font-size: 0.7rem;
                }
                }

        </style>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="Menu.html">
                        <svg class="logo__svg"
                        viewBox="0 0 25.927275 13.888542"
                        version="1.1"
                        id="svg1"
                        inkscape:version="1.4.2 (f4327f4, 2025-05-13)"
                        sodipodi:docname="CarSharingv2.svg"
                        xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
                        xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:svg="http://www.w3.org/2000/svg">
                        <sodipodi:namedview
                            id="namedview1"
                            pagecolor="#ffffff"
                            bordercolor="#000000"
                            borderopacity="0.25"
                            inkscape:showpageshadow="2"
                            inkscape:pageopacity="0.0"
                            inkscape:pagecheckerboard="0"
                            inkscape:deskcolor="#d1d1d1"
                            inkscape:document-units="mm"
                            inkscape:zoom="3.8954759"
                            inkscape:cx="44.6672"
                            inkscape:cy="25.799158"
                            inkscape:window-width="1920"
                            inkscape:window-height="991"
                            inkscape:window-x="-9"
                            inkscape:window-y="-9"
                            inkscape:window-maximized="1"
                            inkscape:current-layer="layer1" />
                        <defs
                            id="defs1">
                            <clipPath
                            clipPathUnits="userSpaceOnUse"
                            id="clipPath54">
                            <path
                                id="path54"
                                style="stroke-width:0.0999999;stroke-linecap:square;paint-order:markers fill stroke;stop-color:#000000"
                                d="m 1691.1994,-792.32001 h 1634.8919 v 92.82806 H 1691.1994 Z" />
                            </clipPath>
                            <linearGradient
                            id="linearGradient16"
                            inkscape:collect="always">
                            <stop
                                style="stop-color:#000000;stop-opacity:1;"
                                offset="0"
                                id="stop16" />
                            <stop
                                style="stop-color:#000000;stop-opacity:0;"
                                offset="1"
                                id="stop17" />
                            </linearGradient>
                            <linearGradient
                            inkscape:collect="always"
                            xlink:href="#linearGradient16"
                            id="linearGradient17"
                            x1="57.111649"
                            y1="80.931496"
                            x2="84.049774"
                            y2="80.931496"
                            gradientUnits="userSpaceOnUse"
                            gradientTransform="translate(-3.1505756,9.5516835)" />
                        </defs>
                        <g
                            inkscape:label="Слой 1"
                            inkscape:groupmode="layer"
                            id="layer1"
                            transform="translate(-53.228926,-85.058198)">
                            <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:14.1111px;font-family:Georgia;-inkscape-font-specification:Georgia;text-align:start;writing-mode:lr-tb;direction:ltr;text-anchor:start;fill:#fb1818;fill-opacity:1;stroke:url(#linearGradient17);stroke-width:1.562;stroke-dasharray:none"
                            x="53.329376"
                            y="95.616371"
                            id="text16"><tspan
                                sodipodi:role="line"
                                id="tspan16"
                                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:14.1111px;font-family:Georgia;-inkscape-font-specification:Georgia;fill:#fb1818;fill-opacity:1;stroke:url(#linearGradient17);stroke-width:1.562;stroke-dasharray:none"
                                x="53.329376"
                                y="95.616371">K49</tspan></text>
                            <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:2.2337px;font-family:sans-serif;-inkscape-font-specification:sans-serif;text-align:start;writing-mode:lr-tb;direction:ltr;text-anchor:start;fill:none;stroke:#000000;stroke-width:0.113971;stroke-dasharray:none;stroke-opacity:1"
                            x="48.822636"
                            y="106.54473"
                            id="text1"
                            transform="scale(1.0864427,0.92043509)"><tspan
                                sodipodi:role="line"
                                id="tspan1"
                                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-family:sans-serif;-inkscape-font-specification:sans-serif;stroke:#000000;stroke-width:0.113971;stroke-dasharray:none;stroke-opacity:1"
                                x="48.822636"
                                y="106.54473">Каршеринг</tspan></text>
                        </g>
                    </svg>
                </a>
            </div>


            <div class="burger" id="burger">
                <span></span>
                <span></span>
                <span></span>
            </div>

            
            <nav id="nav-menu">
                <ul>
                    <li><a href="catalog.xml">Каталог</a></li>
                    <li><a href="news.html">Новости</a></li>
                    <li><a href="Contacts.html">Контакты</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <h1> Каталог </h1>

            <div class="but-container">

                <button id="sort-asc">
                    Сортировать: дешевые → дорогие
                </button>

                <button id="sort-desc">
                    Сортировать: дорогие → дешевые
                </button>

                <select id="filter-class">
                    <option value="all">Все классы</option>
                    <option value="Эконом">Эконом</option>
                    <option value="Комфорт">Комфорт</option>
                    <option value="Премиум">Премиум</option>
                    <option value="Коммерческий">Коммерческий</option>
                </select>

            </div>




            <div class="container" id="car-container">
                <xsl:for-each select="catalog/car">
                    <article class="car-card">
                        <div class="car-image">
                            <img src="{image}" alt="{model}" style="width: 100%; height: 100%; object-fit: cover;"/>
                        </div>
                        <div class="car-info">
                            <h2><xsl:value-of select="model"/></h2>
                            <ul class="car-details">
                                <li>Класс: <b><xsl:value-of select="class"/></b></li>
                                <li>Кузов: <b><xsl:value-of select="body_type"/></b></li>
                                <li>Топливо: <b><xsl:value-of select="fuel"/></b></li>
                            </ul>
                            <div class="price-tag">
                                от <span><xsl:value-of select="price"/></span> BYN/мин
                            </div>
                        </div>
                    </article>
                </xsl:for-each>
            </div>
        </main>

        <footer>
            <div class="container">
                <div class="info">
                    <h4>К49 Carsharing</h4>
                    <p>Сервис краткосрочной аренды автомобилей в Республике Беларусь.</p>
                    <p class="copyright">© 2026 Все права защищены</p>
                    <p class="personal-info">Пятин Евгений Александрович - 6ПИ ФИТ БГТУ</p> 
                </div>
                
                <div class="links">
                    <h4>Навигация</h4>
                    <ul>
                        <li><a href="Menu.html">Главная</a></li>
                        <li><a href="#">Каталог</a></li>
                        <li><a href="#">Условия</a></li>
                    </ul>
                </div>

                <div class="contacts">
                    <h4>Поддержка</h4>
                    <p>Главный офис |9.00-21.00|</p>
                    <p>Минск, ...</p>
                    <p>+375 (25) 725-00-00</p>
                </div>
            </div>
        </footer>


        <script>
            const burger = document.getElementById("burger");
            const nav = document.getElementById("nav-menu");

            burger.addEventListener("click", () => {
                burger.classList.toggle("active");
                nav.classList.toggle("active");
            });
        </script>

        <script>
        const container = document.getElementById("car-container");
        const allCars = Array.from(container.getElementsByClassName("car-card"));

        document.getElementById("sort-asc").addEventListener("click", () => {
            let cars = [...allCars];

            cars.sort((a, b) => {
                let priceA = parseFloat(a.querySelector(".price-tag span").textContent);
                let priceB = parseFloat(b.querySelector(".price-tag span").textContent);
                return priceA - priceB;
            });

            render(cars);
        });

        document.getElementById("sort-desc").addEventListener("click", () => {
            let cars = [...allCars];

            cars.sort((a, b) => {
                let priceA = parseFloat(a.querySelector(".price-tag span").textContent);
                let priceB = parseFloat(b.querySelector(".price-tag span").textContent);
                return priceB - priceA;
            });

            render(cars);
        });

        document.getElementById("filter-class").addEventListener("change", function () {
            let selected = this.value;

            let filtered = allCars.filter(car => {
                let carClass = car.querySelector(".car-details li b").textContent;
                return selected === "all" || carClass === selected;
            });

            render(filtered);
        });

        function render(cars) {
            container.innerHTML = "";
            cars.forEach(car => container.appendChild(car));
        }
        </script>


    </body>
</html>
</xsl:template>
</xsl:stylesheet>

