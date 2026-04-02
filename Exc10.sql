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


-- QUESTÃO 3
-- Leia dois valores inteiros X X e, e Y Y.O. Imprima a soma de todos os valores ímpares entre eles.

DO $$ 
DECLARE 
    x INT; 
    y INT; 
    temp INT;
    soma INT := 0;
    i INT;
BEGIN 
    x := fn_valor_aleatorio_entre(-10, 10);
    y := fn_valor_aleatorio_entre(0, 20);
      -- Gerando dois valores aleatórios
    RAISE NOTICE 'Valores gerados:  %, %', x, y;
    -- Garantir que X seja o menor valor para o loop funcionar corretamente
    IF x > y THEN -- se x for maior que y
        temp := x; -- temp recebe x
        x := y; -- os valores trocam de lugar
        y := temp; -- e y recebe temp
    END IF;
    RAISE NOTICE 'O valor de x é %, e o valor de y é %', x, y;
    FOR i IN (x + 1)..(y - 1) LOOP -- loop para verificar se o número é ímpar
        -- Usamos ABS para lidar corretamente com números negativos.
        IF ABS(i) % 2 = 1 THEN -- valor absoluto de i dividido por 2 deixa resto 1
            soma := soma + i;
        END IF;
    END LOOP;
    RAISE NOTICE 'A soma dos ímpares entre eles é: %', soma;
END $$;














