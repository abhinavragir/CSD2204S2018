MariaDB [(none)]> USE CSD2204S18;
Database changed
MariaDB [CSD2204S18]> Show Tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.03 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name,city ASC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name DESC,city ASC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId DESC LIMIT 3;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| CO9    | Tony Special  | Specie   | GTA      | 418921     |   62 |
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO7    | Bobby Chacko  | Chac     | New york | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY custId ASC LIMIT 3;
+--------+------------+----------+------------+------------+------+
| custId | name       | nickname | city       | postalcode | age  |
+--------+------------+----------+------------+------------+------+
| C10    | Jack Sp    | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley     | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley | BM       | Toronto    | 100100     |   23 |
+--------+------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM(SELECT * FROM Customer ORDER BY custId DESC LIMIT 3)t order by custId asc;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| CO7    | Bobby Chacko  | Chac     | New york | 320300     |   70 |
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO9    | Tony Special  | Specie   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
3 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer group by city;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city FROM Customer group by city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New york   |
| NewYork    |
| Toronto    |
| USA        |
| WDC        |
+------------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(city) "Unique Cities" FROM Customer group by city;
+---------------+
| Unique Cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             1 |
|             1 |
|             3 |
|             1 |
|             1 |
+---------------+
8 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "no. of customers" FROM Customer group by city;
+------------+------------------+
| city       | no. of customers |
+------------+------------------+
| Brazil     |                1 |
| GTA        |                1 |
| New Jersey |                1 |
| New york   |                1 |
| NewYork    |                1 |
| Toronto    |                3 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) from customer;
+------------+
| city       |
+------------+
| New Jersey |
| WDC        |
| Toronto    |
| NewYork    |
| Brazil     |
| New york   |
| USA        |
| GTA        |
+------------+
8 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT city, COUNT(city) "No. of customers" from customer GROUP BY City HAVING COUNT(city) > 2;
+---------+------------------+
| city    | No. of customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP 'n$';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
| CO5    | Donna Newman    | New      | Toronto | 130120     |   50 |
+--------+-----------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP 'd$';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP 'Y$';
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalcode | age  |
+--------+------------+----------+---------+------------+------+
| CO1    | Ashley     | Ash      | WDC     | 321200     |   34 |
| CO2    | Bob Marley | BM       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^..a';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name REGEXP '^[A-Z]';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A*';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO1    | Ashley        | Ash      | WDC  | 321200     |   34 |
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname rLIKE '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO1    | Ashley        | Ash      | WDC  | 321200     |   34 |
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname rLIKE '^[A*]';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO1    | Ashley        | Ash      | WDC  | 321200     |   34 |
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT Curdate();
+------------+
| Curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:16:09 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S18]> Update customer set dob = '1991-01-01' WHERE custId='C01';
ERROR 1054 (42S22): Unknown column 'dob' in 'field list'
MariaDB [CSD2204S18]> ALTER TABLE Customer ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.55 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S18]> Update Customer set dob = '1991-01-01' WHERE custID= 'C01';
Query OK, 0 rows affected (0.03 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------+
| custId | name            | nickname | city       | postalcode | age  | dob  |
+--------+-----------------+----------+------------+------------+------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 | NULL |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 | NULL |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 | NULL |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+------+
| custId | name            | nickname | city       | postalcode | age  | dob  |
+--------+-----------------+----------+------------+------------+------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 | NULL |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 | NULL |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| CO5    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL |
| CO6    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 | NULL |
| CO8    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> Update Customer SET dob='1991-01-01' WHERE custId='c10';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-02-01' WHERE custId='c01';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-02-01' WHERE custId='CO1';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-03-01' WHERE custId='CO2';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-04-01' WHERE custId='CO3';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-05-01' WHERE custId='CO4';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-06-01' WHERE custId='CO5';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-07-01' WHERE custId='CO6';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-08-01' WHERE custId='CO7';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-09-01' WHERE custId='CO8';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> Update Customer SET dob='1991-10-01' WHERE custId='CO9';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,Curdate()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Jack Sp         | 1991-01-01 |   27 |
| Ashley          | 1991-02-01 |   27 |
| Bob Marley      | 1991-03-01 |   27 |
| Cherlies Theron | 1991-04-01 |   27 |
| Denial Jack     | 1991-05-01 |   27 |
| Donna Newman    | 1991-06-01 |   26 |
| Eston M.        | 1991-07-01 |   26 |
| Bobby Chacko    | 1991-08-01 |   26 |
| Ashko Charles   | 1991-09-01 |   26 |
| Tony Special    | 1991-10-01 |   26 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,Curdate()) "age" FROM Customer having age=23;
Empty set (0.01 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,Curdate()) "age" FROM Customer having age=27;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Jack Sp         | 1991-01-01 |   27 |
| Ashley          | 1991-02-01 |   27 |
| Bob Marley      | 1991-03-01 |   27 |
| Cherlies Theron | 1991-04-01 |   27 |
| Denial Jack     | 1991-05-01 |   27 |
+-----------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,dob, TIMESTAMPDIFF(YEAR,dob,Curdate()) "age" FROM Customer WHERE TIMESTAMPDIFF(YEAR,dob,Curdate())=27;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Jack Sp         | 1991-01-01 |   27 |
| Ashley          | 1991-02-01 |   27 |
| Bob Marley      | 1991-03-01 |   27 |
| Cherlies Theron | 1991-04-01 |   27 |
| Denial Jack     | 1991-05-01 |   27 |
+-----------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> exit;
