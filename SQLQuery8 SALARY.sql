SELECT DISTINCT YEARLY_INCREMENT FROM SALARY;

SELECT *, CASE WHEN YEARLY_INCREMENT BETWEEN 2000 AND 2500 THEN 'LOW'
                              WHEN YEARLY_INCREMENT BETWEEN 3000 AND 5000 THEN 'MEDIUM'
							  ELSE 'HIGH'
							  END AS SALARY_GROUP
							  FROM SALARY;

SELECT * FROM SALARY;

SELECT TOP 10 * FROM SALARY ORDER BY  SALARY;


