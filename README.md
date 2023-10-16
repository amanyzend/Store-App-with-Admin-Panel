<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Online Store

E-Stock is online shop website which is built using laravel framework , it contain two roles admin and user.
user could show products and add product to shopping cart, also he could show his shopping cart items, and when he want to confirm order he should register and login.
admin manage products and order by adding new products, changing product details, deleteing products, showing all orders and change the order staus from waiting to done.

to run E-Stock on your machine:
- download repository zip file to your machine and extract it.
- create database.
- copy .env file and change database configuration with your database info.
- in terminal or cmd run this instructions:
    - composer update
    - php artisan key:generate
    - php artisan migrate
    - php artisan db:seed
    - php artisan serve
