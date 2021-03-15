/*****Start of table creation script*****/
CREATE TABLE XX_RISK_ASSESSMENT_STATUS(application_number VARCHAR2(100),
									   application_status VARCHAR2(25));
/*****End of table creation script*****/


/*****Start of function creation script*****/
CREATE OR REPLACE FUNCTION XX_BANK_RISK_ASSESSMENT_CHECK (in_application_number IN VARCHAR2, 
														  in_age IN VARCHAR2, 
														  in_loan_amount IN VARCHAR2, 
													      in_salary IN VARCHAR2, 
														  in_job_type IN VARCHAR2)
  RETURN INT
  IS
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
--Call to risk assessment package
XX_BANK_RISK_ASSESSMENT_CHECK.LOAN_APPLICATION(
											   p_application_number => in_application_number, 
											   p_age 				=> in_age,  
											   p_loan_amount 		=> in_loan_amount, 
											   p_salary 			=> in_salary, 
											   p_job_type 			=> in_job_type
											   );
--Return a value to the calling process  											   
RETURN 1;
END;
/*****End of function creation script*****/