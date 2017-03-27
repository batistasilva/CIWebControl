CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_company`(comp_id int)
BEGIN
DECLARE rs_cust INTEGER DEFAULT 0;
SELECT customer_id INTO rs_cust FROM customer WHERE company_id = comp_id;

IF (rs_cust = 0) THEN
	SELECT rs_cust, 'Empresa Excluída com Sucesso...';
	DELETE FROM company WHERE id = comp_id;
	DELETE FROM companyaddr WHERE company_id = comp_id;
ELSE
	SELECT rs_cust, 'Há cliente para Empresa, Empresa não Pode ser Excluída...';
END IF;

END