-- Creates function SafeDiv
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS INTBEGIN
    DECLARE result INT;

    IF b = 0 THEN
        SET result = 0;
    ELSE
        SET result = a / b;
    END IF;

    RETURN result;
END //

DELIMITER ;
