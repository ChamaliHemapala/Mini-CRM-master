# Mini-CRM
Laravel Framework 5.5.49

## User Requirements

* [x] Basic Laravel Auth: ability to log in as administrator
* [x] Use database seeds to create first user with email admin@admin.com and password “password”
* [x] CRUD functionality (Create / Read / Update / Delete) for two menu items: Companies and Employees.
* [x] Companies DB table consists of these fields: Name (required), email, website
* [x] Employees DB table consists of these fields: First name (required), last name (required), Company (foreign key to Companies), email, phone
* [x] Use database migrations to create those schemas above
* [x] Use basic Laravel resource controllers with default methods – index, create, store etc.
* [x] Use Laravel’s validation function, using Request classes
* [x] Use Laravel’s pagination for showing Companies/Employees list, 10 entries per page
* [x] Use Laravel make:auth as default Bootstrap-based design theme, but remove ability to register

## How to Install

1. Clone the repo : git clone https://github.com/ChamaliHemapala/Mini-CRM-master.git
2. `$ cd Mini-CRM-master`
3. `$ composer install`
4. `$ cp .env.example .env`
5. `$ php artisan key:generate`
6. Create **database on MySQL** 
7. **Set database credentials** on `.env` file
8. `$ php artisan migrate --seed`
9. `$ php artisan storage:link`
10. `$ php artisan serve`
11. Login with :
    - email : `admin@admin.com`
    - password : `password`
## License

This software is open-sourced software licensed under the [MIT license](LICENSE).
