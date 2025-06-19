mysql> use stdfees
Database changed
mysql> create table stdfees(
    -> rollno int,
    -> stdname varchar(20),
    -> dep varchar(20),
    -> subject varchar(20),
    -> mark int,
    -> fees int);
mysql> insert into stdfees values(1,'abinaya','ct','maths',85,40000);
mysql> insert into stdfees values(2,'rishi','cs','english',90,45000);
mysql> insert into stdfees values(3,'mani','it','maths',82,45000);
mysql> insert into stdfees values(4,'sujitha','bca','tamil',75,43000);
mysql> insert into stdfees values(5,'vinisha','bba','tamil',47000);
mysql> select*from fees;
+--------+---------+------+---------+------+-------+
| rollno | stdname | dep  | subject | mark | fees  |
+--------+---------+------+---------+------+-------+
|      1 | abinaya | ct   | maths   |   85 | 40000 |
|      2 | rishi   | cs   | english |   90 | 45000 |
|      3 | mani    | it   | maths   |   82 | 45000 |
|      4 | sujitha | bca  | tamil   |   75 | 43000 |
|      5 | vinisha | bba  | tamil   |   80 | 47000 |
+--------+---------+------+---------+------+-------+
mysql> select*from stdfees
    -> order by fees asc;
+--------+---------+------+---------+------+-------+
| rollno | stdname | dep  | subject | mark | fees  |
+--------+---------+------+---------+------+-------+
|      1 | abinaya | ct   | maths   |   85 | 40000 |
|      4 | sujitha | bca  | tamil   |   75 | 43000 |
|      2 | rishi   | cs   | english |   90 | 45000 |
|      3 | mani    | it   | maths   |   82 | 45000 |
|      5 | vinisha | bba  | tamil   |   80 | 47000 |
+--------+---------+------+---------+------+-------+