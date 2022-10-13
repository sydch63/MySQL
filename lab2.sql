/* Задача 1
Установите СУБД MySQL.
Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/

/*
C:\Users\split>mysql
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: NO)

После добавления файла my.cnf

C:\Users\split>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 32
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
			
mysql>
*/

/* Задача 2
Создайте базу данных example, разместите в ней таблицу users, 
состоящую из двух столбцов, числового id и строкового name.
*/

CREATE DATABASE example;

USE example;

CREATE TABLE users (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

/* Задача 3
Создайте дамп базы данных example из предыдущего задания, 
разверните содержимое дампа в новую базу данных sample.
*/

-- В командной строке вводим следующее:
/*
mysqldump -u root -p example > example.sql
mysql -e "create database sample";
mysql sample < example.sql
*/

/* Задача 4
(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump.
Создайте дамп единственной таблицы help_keyword базы данных mysql.
Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
*/

-- В командной строке вводим следующее:
/*
mysqldump -u root -p  --where="true limit 100" mysql help_keyword > temp.sql
*/