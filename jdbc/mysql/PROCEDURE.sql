use emp;
SELECT * FROM emp;

DELIMITER &&  
CREATE PROCEDURE EMPprocedure()  
BEGIN  
    SELECT * FROM EMP WHERE SALARY > 50000;     
END &&  
DELIMITER ;

DELIMITER && 
CREATE PROCEDURE empinsert(IN ID VARCHAR(10), IN NAME VARCHAR(10), IN SALARY VARCHAR(10))                     
BEGIN  
    INSERT INTO EMP(ID,NAME,SALARY) VALUES (ID,NAME,SALARY);     
END &&  
DELIMITER ; 

DELIMITER && 
CREATE PROCEDURE empdelete(IN ID VARCHAR(10))
BEGIN  
	DELETE FROM EMP WHERE ID = ID;
END &&
DELIMITER ; 

DELIMITER &&
CREATE PROCEDURE empupdate(IN ID VARCHAR(10), IN SALARY VARCHAR(10))
BEGIN  
	UPDATE EMP SET SALARY = SALARY WHERE ID = ID;
END &&
DELIMITER ; 

DELIMITER &&
CREATE PROCEDURE empOUT(OUT EMP_ID VARCHAR(10))
BEGIN  	
	SELECT COUNT(ID) INTO EMP_ID FROM EMP WHERE SALARY > '80000';
END &&
DELIMITER ; 

DELIMITER &&

CREATE PROCEDURE empINOUT(INOUT EMP_ID VARCHAR(10), IN EMP_SALARY VARCHAR(10))
BEGIN  	
	SELECT COUNT(ID) INTO EMP_ID FROM EMP WHERE SALARY > EMP_SALARY  ;
END &&
DELIMITER ;
 
DELIMITER &&
CREATE PROCEDURE emppOUT(OUT COUNT_ID INT)
BEGIN  
	SELECT COUNT(ID) INTO COUNT_ID FROM EMP WHERE SALARY > '80000';
END &&
DELIMITER ;

DELIMITER &&

CREATE PROCEDURE emppINOUT(INOUT COUNT_ID INT, IN EMP_SALARY VARCHAR(10))
BEGIN  	
	SELECT COUNT(ID) INTO COUNT_ID FROM EMP WHERE SALARY > EMP_SALARY  ;
END &&
DELIMITER ; 