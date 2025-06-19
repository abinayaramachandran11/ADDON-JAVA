TASK 3
Books by keyword using LIKE in sql?

mysql> use book
Database changed
mysql> create table book(
    -> bookno int,
    -> bookname varchar(20),
    -> price int,
    -> );
mysql> insert into book values(3639,'tree',450);
mysql> insert into book values(3633,'moon',475);
mysql> insert into book values(3633,'sun',450);
mysql> insert into book values(3633,'rainbow',480);
mysql> select*from book;
+--------+----------+-------+
| bookno | bookname | price |
+--------+----------+-------+
|   3639 | tree     |   450 |
|   3633 | moon     |   475 |
|   3633 | sun      |   450 |
|   3633 | rainbow  |   480 |
+--------+----------+-------+

mysql> select*from book
    -> where bookname like 'm%';
+--------+----------+-------+
| bookno | bookname | price |
+--------+----------+-------+
|   3633 | moon     |   475 |
+--------+----------+-------+