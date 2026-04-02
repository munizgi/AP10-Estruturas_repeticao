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


-- QUESTÃO 2
-- Escreva um programa que leia 6 números. Esses números serão apenas positivos ou negativos (desconsiderar valores nulos). Imprimir o total de números positivos.

DO $$
DECLARE
    n INT;
    contador INT := 0; -- conta quantas vezes o loop repete
    cont_positivos INT := 0; -- conta quantos positivos saem
BEGIN
    LOOP
        contador := contador + 1; --soma cada iteração 
        n := fn_valor_aleatorio_entre(-50,50);
        RAISE NOTICE 'Gerado: %', n;
        IF n > 0 THEN
            cont_positivos := cont_positivos + 1; --soma cada numero positivo
        END IF;
        EXIT WHEN contador = 6; -- encerra quando chega a seis iterações
    END LOOP;
    RAISE NOTICE 'Total positivos: %', cont_positivos;
END;
$$;