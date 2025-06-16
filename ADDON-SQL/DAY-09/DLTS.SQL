create database dtls;
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
mysql> update dlts set name='abitha' where name='abinaya';
mysql> select*from dlts;
+-------+--------+--------+------------+------------+
| empid | name   | salary | department | joindate   |
+-------+--------+--------+------------+------------+
|     1 | abitha |  30000 | maths      | 2023-06-13 |
|     2 | mani   |  20000 | marketing  | 2023-05-09 |
|     3 | sahana |  40000 | marketing  | 2023-09-04 |
|     4 | rishi  |  35000 | finance    | 2023-08-08 |
+-------+--------+--------+------------+------------+

mysql> rename table dlts to stf;
mysql> select*from stf;
+-------+--------+--------+------------+------------+
| empid | name   | salary | department | joindate   |
+-------+--------+--------+------------+------------+
|     1 | abitha |  30000 | maths      | 2023-06-13 |
|     2 | mani   |  20000 | marketing  | 2023-05-09 |
|     3 | sahana |  40000 | marketing  | 2023-09-04 |
|     4 | rishi  |  35000 | finance    | 2023-08-08 |
+-------+--------+--------+------------+------------+

 alter table stf
    -> rename column name to empname;
mysql> select*from stf;
+------------+--------+--------+------------+------------+
|  empid     | empname| salary | department | joindate   |
+------------+--------+--------+------------+------------+
|          1 | abitha |  30000 | maths      | 2023-06-13 |
|          2 | mani   |  20000 | marketing  | 2023-05-09 |
|          3 | sahana |  40000 | marketing  | 2023-09-04 |
|          4 | rishi  |  35000 | finance    | 2023-08-08 |
+------------+--------+--------+------------+------------+

mysql> delete from stf
    -> where name='mani';
mysql> select*from stf;
+------------+--------+--------+------------+------------+
| employeeid | name   | salary | department | joindate   |
+------------+--------+--------+------------+------------+
|          1 | abitha |  30000 | maths      | 2023-06-13 |
|          3 | sahana |  40000 | marketing  | 2023-09-04 |
|          4 | rishi  |  35000 | finance    | 2023-08-08 |
+------------+--------+--------+------------+------------+

mysql> select*from dlts order by salary desc;
+-------+---------+------------+--------+------------+
| empid | name    | department | salary | joindate   |
+-------+---------+------------+--------+------------+
|     3 | sahana  | marketing  |  40000 | 2023-09-04 |
|     4 | rishi   | finance    |  35000 | 2023-08-08 |
|     1 | abitha  | maths      |  30000 | 2023-06-13 |
|     2 | mani    | marketing  |  20000 | 2023-05-09 |
+-------+---------+------------+--------+------------+
