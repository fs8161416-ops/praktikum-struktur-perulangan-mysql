CREATE DATABASE IF NOT EXISTS latihan;
USE latihan;

-- 1. tampil angka 1-10

DROP PROCEDURE IF EXISTS tampil_angka;
DELIMITER //

CREATE PROCEDURE tampil_angka()
BEGIN
    DECLARE angka INT DEFAULT 1;

    DROP TEMPORARY TABLE IF EXISTS temp_angka;
    CREATE TEMPORARY TABLE temp_angka (hasil INT);

    WHILE angka <= 10 DO
        INSERT INTO temp_angka VALUES (angka);
        SET angka = angka + 1;
    END WHILE;

    SELECT * FROM temp_angka;
END //

DELIMITER ;

-- 2. hitung total 1-20

DROP PROCEDURE IF EXISTS hitung_total;
DELIMITER //

CREATE PROCEDURE hitung_total()
BEGIN
    DECLARE v_counter INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;

    WHILE v_counter <= 20 DO
        SET v_total = v_total + v_counter;
        SET v_counter = v_counter + 1;
    END WHILE;

    SELECT v_total AS hasil;
END //

DELIMITER ;

-- 3. bilangan genap 2-20

DROP PROCEDURE IF EXISTS bilangan_genap;
DELIMITER //

CREATE PROCEDURE bilangan_genap()
BEGIN
    DECLARE i INT DEFAULT 2;

    DROP TEMPORARY TABLE IF EXISTS temp_genap;
    CREATE TEMPORARY TABLE temp_genap (hasil INT);

    WHILE i <= 20 DO
        INSERT INTO temp_genap VALUES (i);
        SET i = i + 2;
    END WHILE;

    SELECT * FROM temp_genap;
END //

DELIMITER ;

-- 4. total belanja

DROP PROCEDURE IF EXISTS total_belanja;
DELIMITER //

CREATE PROCEDURE total_belanja()
BEGIN
    DECLARE total INT DEFAULT 0;

    DROP TEMPORARY TABLE IF EXISTS temp_belanja;
    CREATE TEMPORARY TABLE temp_belanja (hasil INT);

    WHILE total < 500000 DO
        SET total = total + 50000;
        INSERT INTO temp_belanja VALUES (total);
    END WHILE;

    SELECT * FROM temp_belanja;
END //

DELIMITER ;