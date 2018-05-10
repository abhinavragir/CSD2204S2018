MariaDB [(none)]> Use CSD2204S18
Database changed
MariaDB [CSD2204S18]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> Desc Customer;
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

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO1','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.11 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO2','Bob Marley','BM','Toronto','100100',23);
Query OK, 1 row affected (0.04 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO3','Cherlies Theron','Cher','NewYork','120134',20);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO4','Denial Jack','DJ','Brazil','341020',25);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO5','Donna Newman','New','Toronto','130120',50);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO6','Eston M.','M.','Toronto','201023',65);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO7','Bobby Chacko','Chac','New york','320300',70);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO8','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('CO9','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204S18]> INSERT INTO Customer VALUES('C10','Jack Sp','Sparrow','New Jersey','102301',35);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204S18]> Select * from customer;
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

MariaDB [CSD2204S18]> SELECT name,nickname FROM customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Jack Sp         | Sparrow  |
| Ashley          | Ash      |
| Bob Marley      | BM       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New      |
| Eston M.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city,postalcode FROM Customer;
+------------+------------+
| city       | postalcode |
+------------+------------+
| New Jersey | 102301     |
| WDC        | 321200     |
| Toronto    | 100100     |
| NewYork    | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New york   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name = 'Ashely';
Empty set (0.01 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name = 'Ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| CO1    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE nickname = 'AK';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT city FROM Customer WHERE name = 'Eston M.';
+---------+
| city    |
+---------+
| Toronto |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city = 'Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city != 'Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Jack Sp         | New Jersey |
| Ashley          | WDC        |
| Cherlies Theron | NewYork    |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New york   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city <> 'Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Jack Sp         | New Jersey |
| Ashley          | WDC        |
| Cherlies Theron | NewYork    |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New york   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age = 50;
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age < 50;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age > 50;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| CO6    | Eston M.      | M.       | Toronto  | 201023     |   65 |
| CO7    | Bobby Chacko  | Chac     | New york | 320300     |   70 |
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO9    | Tony Special  | Specie   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name >'Ashley';
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
| CO9    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name >'Donna';
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
| CO5    | Donna Newman | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| CO9    | Tony Special | Specie   | GTA        | 418921     |   62 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name < 'Donna';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| CO1    | Ashley          | Ash      | WDC      | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto  | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork  | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| CO7    | Bobby Chacko    | Chac     | New york | 320300     |   70 |
| CO8    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE name ='Ashley' || city = 'Toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO1    | Ashley       | Ash      | WDC     | 321200     |   34 |
| CO2    | Bob Marley   | BM       | Toronto | 100100     |   23 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
| CO6    | Eston M.     | M.       | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,city FROM Customer WHERE city ='NewYork' || city = 'Toronto';
+-----------------+---------+
| name            | city    |
+-----------------+---------+
| Bob Marley      | Toronto |
| Cherlies Theron | NewYork |
| Donna Newman    | Toronto |
| Eston M.        | Toronto |
+-----------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT 'Customers who is living in toronto with age more than 50';
+----------------------------------------------------------+
| Customers who is living in toronto with age more than 50 |
+----------------------------------------------------------+
| Customers who is living in toronto with age more than 50 |
+----------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECt name,age FROM Customer WHERE city = 'Toronto' && age > 50;
+----------+------+
| name     | age  |
+----------+------+
| Eston M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECt * FROM Customer WHERE city = 'Toronto';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO2    | Bob Marley   | BM       | Toronto | 100100     |   23 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
| CO6    | Eston M.     | M.       | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECt COUNT(*) FROM Customer WHERE city = 'Toronto';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.03 sec)


MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers in Toronto" FROM Customer WHERE city = 'Toronto';
+----------------------------+
| No of customers in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers age>50";
+------------------------+
| No of customers age>50 |
+------------------------+
|                      1 |
+------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT COUNT(*) "No of customers with age more than 50" FROM Customer WHERE age > 50;
+---------------------------------------+
| No of customers with age more than 50 |
+---------------------------------------+
|                                     4 |
+---------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age > 30 AND age < 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley       | Ash      | WDC        | 321200     |   34 |
| CO5    | Donna Newman | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| CO9    | Tony Special | Specie   | GTA        | 418921     |   62 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)


MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE age between 30 and 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley       | Ash      | WDC        | 321200     |   34 |
| CO5    | Donna Newman | New      | Toronto    | 130120     |   50 |
| CO6    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| CO7    | Bobby Chacko | Chac     | New york   | 320300     |   70 |
| CO9    | Tony Special | Specie   | GTA        | 418921     |   62 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer WHERE not age between 30 and 70;
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO2    | Bob Marley      | BM       | Toronto | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil  | 341020     |   25 |
| CO8    | Ashko Charles   | AK       | USA     | 421044     |   72 |
+--------+-----------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT name,age FROM Customer WHERE not age between 30 and 70;
+-----------------+------+
| name            | age  |
+-----------------+------+
| Bob Marley      |   23 |
| Cherlies Theron |   20 |
| Denial Jack     |   25 |
| Ashko Charles   |   72 |
+-----------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age) FROM CUSTOMER;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.05 sec)

MariaDB [CSD2204S18]> SELECT min(age) FROM CUSTOMER;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT avg(age) FROM CUSTOMER;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalcode | age  |
+--------+--------------+----------+----------+------------+------+
| CO2    | Bob Marley   | BM       | Toronto  | 100100     |   23 |
| CO7    | Bobby Chacko | Chac     | New york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name LIKE '%n';
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
| CO5    | Donna Newman    | New      | Toronto | 130120     |   50 |
+--------+-----------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city = 'new%';
Empty set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city like 'new%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
| CO7    | Bobby Chacko    | Chac     | New york   | 320300     |   70 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)


MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name like '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| CO4    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| CO5    | Donna Newman | New      | Toronto | 130120     |   50 |
| CO9    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER limit 4;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley          | Ash      | WDC        | 321200     |   34 |
| CO2    | Bob Marley      | BM       | Toronto    | 100100     |   23 |
| CO3    | Cherlies Theron | Cher     | NewYork    | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER limit 2;
+--------+---------+----------+------------+------------+------+
| custId | name    | nickname | city       | postalcode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | Jack Sp | Sparrow  | New Jersey | 102301     |   35 |
| CO1    | Ashley  | Ash      | WDC        | 321200     |   34 |
+--------+---------+----------+------------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age IN (20,25,65,72);
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
| CO4    | Denial Jack     | DJ       | Brazil  | 341020     |   25 |
| CO6    | Eston M.        | M.       | Toronto | 201023     |   65 |
| CO8    | Ashko Charles   | AK       | USA     | 421044     |   72 |
+--------+-----------------+----------+---------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE age IN ('Toronto','GTA','USA','WDC');
Empty set, 4 warnings (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM CUSTOMER WHERE city IN ('Toronto','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalcode | age  |
+--------+---------------+----------+---------+------------+------+
| CO1    | Ashley        | Ash      | WDC     | 321200     |   34 |
| CO2    | Bob Marley    | BM       | Toronto | 100100     |   23 |
| CO5    | Donna Newman  | New      | Toronto | 130120     |   50 |
| CO6    | Eston M.      | M.       | Toronto | 201023     |   65 |
| CO8    | Ashko Charles | AK       | USA     | 421044     |   72 |
| CO9    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT DISTINCT(city) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
| New Jersey    |
| WDC           |
| Toronto       |
| NewYork       |
| Brazil        |
| New york      |
| USA           |
| GTA           |
+---------------+
8 rows in set (0.02 sec)

MariaDB [CSD2204S18]> SELECT COUNT(DISTINCT(city)) AS 'Unique Cities' FROM Customer;
+---------------+
| Unique Cities |
+---------------+
|             8 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name;
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
10 rows in set (0.03 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name ASC;
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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY name DESC;
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

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age ASC LIMIT 1;
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
+--------+-----------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age ASC LIMIT 2;
+--------+-----------------+----------+---------+------------+------+
| custId | name            | nickname | city    | postalcode | age  |
+--------+-----------------+----------+---------+------------+------+
| CO3    | Cherlies Theron | Cher     | NewYork | 120134     |   20 |
| CO2    | Bob Marley      | BM       | Toronto | 100100     |   23 |
+--------+-----------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM Customer ORDER BY age DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| CO8    | Ashko Charles | AK       | USA      | 421044     |   72 |
| CO7    | Bobby Chacko  | Chac     | New york | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalcode | age  |
+--------+--------------+----------+----------+------------+------+
| CO7    | Bobby Chacko | Chac     | New york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| CO8    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalcode | age  |
+--------+------------+----------+---------+------------+------+
| CO2    | Bob Marley | BM       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S18]> SELECT max(age)*100 FROM Customer;
+--------------+
| max(age)*100 |
+--------------+
|         7200 |
+--------------+
1 row in set (0.00 sec)

