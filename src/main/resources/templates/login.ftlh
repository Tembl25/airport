<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: black;
            text-align: center;
            margin-bottom: 10px;
            font-size: 3em;
        }

        .menu {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .menu a {
            text-decoration: none;
            color: #333;
            font-size: 18px;
        }

        .menu a {
            position: relative;
            padding-right: 20px; /* Добавим отступ справа для размещения стрелок */
            transition: transform 0.3s ease-in-out; /* Добавим анимацию для размера пунктов меню */
        }

        /* Увеличение размера пунктов меню при наведении */
        .menu a:hover {
            transform: scale(1.1);
        }

        /* Стили для стрелок */
        .menu a::after {
            content: "➔"; /* Символ стрелки Unicode (вы можете заменить его изображением или другим стилем при необходимости) */
            position: absolute;
            top: 50%;
            right: 0;
            transform: translateY(-50%);
            opacity: 0.5; /* Уменьшим немного прозрачность без наведения */
            transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out; /* Добавим анимацию для размера и прозрачности стрелок */
        }

        /* Увеличение размера и прозрачности стрелок при наведении */
        .menu a:hover::after {
            transform: scale(1.2) translateY(-50%);
            opacity: 1; /* Увеличим прозрачность при наведении */
        }

        .contacts {
            text-align: center;
            color: #777;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .social-media {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .social-media a {
            text-decoration: none;
            color: #333;
            font-size: 24px;
            margin: 0 10px;
        }

        .social-media a:hover {
            color: #555;
        }

        .logo-and-title {
            display: flex;
            align-items: center;
            margin-left: 95px; /* Смещаем контейнер влево */
            margin-bottom: 50px;
        }

        .logo-and-title h1 {
            margin-right: 15px; /* Увеличиваем отступ между логотипом и текстом */
        }

        .logo-and-title img {
            width: 60px;
            height: 60px;
        }


        .mySlides img {
            width: 800px;
            height: 450px;
            border-radius: 10px;
        }


        .top-right-icons {
            position: absolute;
            top: 75px;
            right: 250px;
            display: flex;
            align-items: center;
        }

        .top-right-icons a {
            text-decoration: none;
            color: #333;
            font-size: 20px;
            margin-left: 50px;
        }

        .airport-name {
            font-size: 0.8em;
            text-align: left;
            margin-left: -263px;
            margin-top: 74px;
        }

        /* Общие стили для горизонтальных меню */
        .horizontal-menu {
            list-style-type: none;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        .horizontal-menu li {
            margin-left: 40px; /* Отступы между элементами */
        }

        .horizontal-menu a {
            text-decoration: none;
            color: #333;
            border-bottom: none;
            transition: color 0.3s ease-in-out; /* Анимация цвета текста */
        }

        /* Изменения при наведении */
        .horizontal-menu a:hover {
            color: #555;
            font-size: 1.1em; /* Увеличение размера текста при наведении */
        }

        #servicesMenu {
            display: block; /* Изменение начального состояния на отображение */
            overflow: hidden; /* Добавим скрытие содержимого, которое не помещается */
            max-height: 0; /* Установим максимальную высоту блока на 0 */
            transition: max-height 0.8s ease-in-out; /* Добавим анимацию для плавного появления/скрытия */
        }

        #servicesMenu.show {
            max-height: 200px; /* Максимальная высота блока, чтобы содержимое было видимым */
        }

    </style>
</head>
<body>
<div class="container">
    <div class="logo-and-title">
        <h1>PLATOV</h1>
        <img src="/departures.png" alt="Логотип Platov">
        <span class="airport-name">Международный аэропорт</span>
    </div>


    <div class="menu">
        <a href="#">Билеты</a>
        <a href="/departures">Вылеты</a>
        <a href="/arrivals">Прилеты</a>
        <a href="#">Пересадка</a>
        <a href="#" id="services">Услуги</a>
    </div>

    <div id="servicesMenu">
        <ul class="horizontal-menu services-menu">
            <li><a href="/baggage">Багаж</a></li>
            <li><a href="#">Финансы</a></li>
            <li><a href="#">Помощь</a></li>
            <li><a href="#">Ожидание</a></li>
            <li><a href="#">Залы сна и отдыха</a></li>
            <li><a href="#">Медицина</a></li>
            <li><a href="#">Транспорт</a></li>
            <li><a href="#">Гостиницы</a></li>
            <li><a href="#">Онлайн</a></li>
        </ul>
    </div>

    <div class="top-right-icons">
        <a href="#"><i class="fas fa-shopping-cart"></i></a>
        <a href="/login">Login</a>
    </div>

    <script>
        $(document).ready(function() {
            $('#services').on('click', function(e) {
                e.preventDefault();
                $('#servicesMenu').toggleClass('show');
            });
        });
    </script>

<h4>Авторизация</h4>
<form action="/login" method="post">
    Эл. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a href="/registration">Зарегистрироваться</a>
    <div class="contacts">
        +79518308472
        <br>
        Copyright © 2018-2024 PLATOV
    </div>
    <div class="social-media">
        <a href="#"><i class="fab fa-vk"></i></a>
        <a href="#"><i class="fab fa-telegram"></i></a>
    </div>
</div>
</body>
</html>