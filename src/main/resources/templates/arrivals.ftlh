<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PLATOV</title>
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

        h1 a {
            text-decoration: none; /* Убираем подчеркивание */
            color: black; /* Изменяем цвет на черный */
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

        .search-section {
            margin-left: 925px;
            width: 25%; /* Ширина поисковой секции */
            margin-top: -60px; /* Отступ сверху */
        }

        .flights-table {
            margin: 20px auto; /* Центрируем таблицу */
            width: 70%; /* Ширина таблицы */
        }

        /* Стили для таблицы */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="logo-and-title">
        <h1><a href="/">PLATOV</a></h1>
        <img src="/departures.png" alt="Логотип Platov">
        <span class="airport-name">Международный аэропорт</span>
    </div>
    <div class="menu">
        <a href="#">Билеты</a>
        <a href="/departures">Вылеты</a>
        <a href="#">Прилеты</a>
        <a href="#">Пересадка</a>
    </div>


    <div class="top-right-icons">
        <a href="#"><i class="fas fa-shopping-cart"></i></a>
        <a href="#">Login</a>
    </div>

    <h1>Табло прилета</h1>
    <div class="search-section">
        <form action="/arrivals" method="get">
            Поиск по номеру рейса: <input type="text" name="flight"><br>
            <input type="submit" value="Поиск"/>
        </form>
    </div>
    <div class="flights-table">
        <table>
            <thead>
            <tr>
                <th>Время прилета</th>
                <th>Направление</th>
                <th>Рейс</th>
                <th>Самолет</th>
                <th>Авиакомпания</th>
                <th>Терминал</th>
                <th>Выход</th>
                <th>Cтатус</th>
                <th>Подробности</th>
            </tr>
            </thead>
            <tbody>

            <#list arrivals as arrival>
                <tr>
                    <td>${arrival.timeDeparture}</td>
                    <td>${arrival.direction}</td>
                    <td>${arrival.flight}</td>
                    <td>${arrival.plane}</td>
                    <td>${arrival.airline}</td>
                    <td>${arrival.terminal}</td>
                    <td>${arrival.exit}</td>
                    <td>${arrival.status}</td>
                    <td><a href="/arrival/${arrival.id}">Подробнее</a></td>
                    <!-- ... другие данные о рейсе -->
                </tr>
            </#list>
            <!-- Если рейсов нет -->
            <#if arrivals?size == 0>
                <tr>
                    <td colspan="9">Рейсов нет</td>
                </tr>
            </#if>
            </tbody>
        </table>
    </div>
    <hr>
    <h3>Создать новый рейс</h3>
    <form action="/arrivals/create" method="post">
        <table>
            <tr>
                <td>Время прилета:</td>
                <td><input type="text" name="timeDeparture"/></td>
            </tr>
            <tr>
                <td>Направление:</td>
                <td><input type="text" name="direction"/></td>
            </tr>
            <tr>
                <td>Рейс:</td>
                <td><input type="text" name="flight"/></td>
            </tr>
            <tr>
                <td>Самолет:</td>
                <td><input type="text" name="plane"/></td>
            </tr>
            <tr>
                <td>Авиакомпания:</td>
                <td><input type="text" name="airline"/></td>
            </tr>
            <tr>
                <td>Терминал:</td>
                <td><input type="text" name="terminal"/></td>
            </tr>
            <tr>
                <td>Выход:</td>
                <td><input type="text" name="exit"/></td>
            </tr>
            <tr>
                <td>Статус:</td>
                <td><input type="text" name="status"/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Добавить рейс"/>
                </td>
            </tr>
        </table>
    </form>

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