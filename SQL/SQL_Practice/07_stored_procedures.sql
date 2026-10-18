USE bank;

SELECT * FROM accounts;

DELIMITER $$

-- create procedure
CREATE PROCEDURE check_balance(IN acc_id INT, OUT bal DECIMAL(10, 2))
BEGIN
	SELECT balance INTO bal
    FROM accounts
    WHERE account_id = acc_id;
END $$

DELIMITER ;

-- call procedure
CALL check_balance(4, @balance);
SELECT @balance;

-- drop procedure
-- DROP PROCEDURE IF EXISTS check_balance;
