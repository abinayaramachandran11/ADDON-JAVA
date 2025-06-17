mysql> use stdmark
Database changed
mysql> create table stdmark(
    -> rollno int,
    -> stdname varchar(20),
    -> dep varchar(20),
    -> subject varchar(20),
    -> mark int,
    -> fees int);
mysql> insert into stdmark values(1,'abinaya','ct','maths',85,40000);
mysql> insert into stdmark values(2,'rishi','cs','english',90,45000);
mysql> insert into stdmark values(3,'mani','it','maths',82,45000);
mysql> insert into stdmark values(4,'sujitha','bca','tamil',75,43000);
mysql> insert into stdmark values(5,'vinisha','bba','tamil',47000);
mysql> select*from stdmark;
+--------+---------+------+---------+------+-------+
| rollno | stdname | dep  | subject | mark | fees  |
+--------+---------+------+---------+------+-------+
|      1 | abinaya | ct   | maths   |   85 | 40000 |
|      2 | rishi   | cs   | english |   90 | 45000 |
|      3 | mani    | it   | maths   |   82 | 45000 |
|      4 | sujitha | bca  | tamil   |   75 | 43000 |
|      5 | vinisha | bba  | tamil   |   80 | 47000 |
+--------+---------+------+---------+------+-------+
mysql> select*from stdmark
    ->     where mark>80;
+--------+---------+------+---------+------+-------+
| rollno | stdname | dep  | subject | mark | fees  |
+--------+---------+------+---------+------+-------+
|      1 | abinaya | ct   | maths   |   85 | 40000 |
|      2 | rishi   | cs   | english |   90 | 45000 |
|      3 | mani    | it   | maths   |   82 | 45000 |
+--------+---------+------+---------+------+-------+

