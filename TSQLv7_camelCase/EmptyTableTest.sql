SELECT 
    T.NAME AS 'TABLE NAME',
    P.[ROWS] AS 'NO OF ROWS'
FROM SYS.TABLES T 
INNER JOIN  SYS.PARTITIONS P ON T.OBJECT_ID = P.OBJECT_ID
WHERE T.NAME like ('Ref%')
    AND P.[ROWS] = 0;