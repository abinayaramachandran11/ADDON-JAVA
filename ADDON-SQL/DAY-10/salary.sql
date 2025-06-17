create database dtls;
mysql> use dtls;
Database changed
mysql> create table dtls(
    -> empid int primary key,
    -> name varchar(25),
    -> salary int,
    -> department varchar(25),
    -> joindate date
    -> );
mysql> insert into dtls(empid,name,salary,department,joindate) values
    -> (1,'abinaya',30000,'maths','2023-06-13'),
    -> (2,'mani',25000,'marketing','2023-05-09'),
    -> (3,'sahana',40000,'marketing','2023-09-04'),
    -> (4,'rishi',35000,'finance','2023-08-08');
mysql> select*from dtls;
+-------+---------+--------+------------+------------+
| empid | name    | salary | department | joindate   |
+-------+---------+--------+------------+------------+
|     1 | abinaya |  30000 | maths      | 2023-06-13 |
|     2 | mani    |  25000 | marketing  | 2023-05-09 |
|     3 | sahana  |  40000 | marketing  | 2023-09-04 |
|     4 | rishi   |  35000 | finance    | 2023-08-08 |
+-------+---------+--------+------------+------------+
    mysql> select salary
    -> from dtls
    -> where salary >20000;
+--------+
| salary |
+--------+
|  30000 |
|  25000 |
|  40000 |
|  35000 |
+--------+

mysql> select name,salary,salary*12
    -> from dtls
    -> where salary*12 >=12000;
+---------+--------+-----------+
| name    | salary | salary*12 |
+---------+--------+-----------+
| abinaya |  30000 |    360000 |
| mani    |  25000 |    300000 |
| sahana  |  40000 |    480000 |
| rishi   |  35000 |    420000 |
+---------+--------+-----------+
    
mysql> select name
    -> from dtls
    -> where department='maths';
+---------+
| name    |
+---------+
| abinaya |
+---------+

mysql> select name
    -> from dtls
    -> where name like 'a%';
+---------+
| name    |
+---------+
| abinaya |
+---------+

mysql> select name
    -> from dtls
    -> where name like 's%a';
+--------+
| name   |
+--------+
| sahana |
+--------+

mysql> select name
    -> from dtls
    -> where name like '%i';
+-------+
| name  |
+-------+
| mani  |
| rishi |
+-------+

mysql> select name
    -> from dtls
    -> where name like 'm__i';
+------+
| name |
+------+
| mani |
+------+

mysql> select name,salary
    -> from dtls
    -> where salary like '_____';
+---------+--------+
| name    | salary |
+---------+--------+
| abinaya |  30000 |
| mani    |  25000 |
| sahana  |  40000 |
| rishi   |  35000 |
+---------+--------+

mysql> select name,salary
    -> from dtls
    -> where name not like 'r___i';
+---------+--------+
| name    | salary |
+---------+--------+
| abinaya |  30000 |
| mani    |  25000 |
| sahana  |  40000 |
+---------+--------+

mysql> select name
    -> from dtls
    -> where empid =1 or empid =2 or empid=3;
+---------+
| name    |
+---------+
| abinaya |
| mani    |
| sahana  |   |
+---------+

mysql> select name
    -> from dtls
    -> where empid not in(2,4);
+---------+
| name    |
+---------+
| abinaya |
| sahana  |
+---------+

mysql> select name
    -> from dtls
    -> where joindate > '2023-06-13';
+--------+
| name   |
+--------+
| sahana |
| rishi  |
+--------+

mysql> select name,joindate
    -> from dtls
    -> where joindate between '2023-06-13' and '2023-09-04';
+---------+------------+
| name    | joindate   |
+---------+------------+
| abinaya | 2023-06-13 |
| sahana  | 2023-09-04 |
| rishi   | 2023-08-08 |
+---------+------------+

mysql> select count(*)
    -> from dtls
    -> where salary < 50000 and empid = 1;
+----------+
| count(*) |
+----------+
|        1 |
+----------+

mysql> select sum(salary)
    -> from dtls
    -> where department ='maths';
+-------------+
| sum(salary) |
+-------------+
|       30000 |
+-------------+

mysql> select sum(salary)
    -> from dtls
    -> where department='marketing' group by name;
+-------------+
| sum(salary) |
+-------------+
|       25000 |
|       40000 |
+-------------+


mysql> select avg(salary),sum(salary),max(salary)
    -> from dtls
    -> where department = 'maths';
+-------------+-------------+-------------+
| avg(salary) | sum(salary) | max(salary) |
+-------------+-------------+-------------+
|  30000.0000 |       30000 |       30000 |
+-------------+-------------+-------------+

mysql> select count(*),department
    -> from dtls
    -> group by department
    -> having count(*)>=2;
+----------+------------+
| count(*) | department |
+----------+------------+
|        2 | marketing  |
+----------+------------+
