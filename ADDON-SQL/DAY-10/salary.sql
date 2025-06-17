mysql> select salary
    -> from dlts
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
    -> from dlts
    -> where salary*12 >=12000;
+---------+--------+-----------+
| name    | salary | salary*12 |
+---------+--------+-----------+
| abinaya |  30000 |    360000 |
| mani    |  25000 |    300000 |
| sahana  |  40000 |    480000 |
| rishi   |  35000 |    420000 |
+---------+--------+-----------+

