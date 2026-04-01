-- QUESTÃO 1
-- Write a program that prints all even numbers between 1 and 100, including them if it is the case.
DO $$
DECLARE
contador INT := 0;

BEGIN
    LOOP
        contador := contador + 1;
        EXIT WHEN contador > 100;
        IF contador % 2 = 0 THEN
            RAISE NOTICE '%', contador;
        END IF;
    END LOOP;
END; 
$$