create database dtls;
Query OK, 1 row affected (0.03 sec)

mysql> use dtls;
Database changed
mysql> create table dlts(
    -> empid int primary key,
    -> name varchar(25),
    -> salary int,
    -> department varchar(25),
    -> joindate date
    -> );
mysql> insert into dlts(empid,name,salary,department,joindate) values
    -> (1,'abinaya',30000,'maths','2023-06-13'),
    -> (2,'mani',20000,'marketing','2023-05-09'),
    -> (3,'sahana',40000,'marketing','2023-09-04'),
    -> (4,'rishi',35000,'finance','2023-08-08');
mysql> select*from dlts;
+-------+---------+--------+------------+------------+
| empid | name    | salary | department | joindate   |
+-------+---------+--------+------------+------------+
|     1 | abinaya |  30000 | maths      | 2023-06-13 |
|     2 | mani    |  20000 | marketing  | 2023-05-09 |
|     3 | sahana  |  40000 | marketing  | 2023-09-04 |
|     4 | rishi   |  35000 | finance    | 2023-08-08 |
+-------+---------+--------+------------+------------+
mysql> select*from dlts where department='marketing';
+-------+--------+--------+------------+------------+
| empid | name   | salary | department | joindate   |
+-------+--------+--------+------------+------------+
|     2 | mani   |  20000 | marketing  | 2023-05-09 |
|     3 | sahana |  40000 | marketing  | 2023-09-04 |
+-------+--------+--------+------------+------------+