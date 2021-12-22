CREATE OR REPLACE FUNCTION litispendenciaOuCoisaJulgada

	(NUMERO IN NUMBER)

	RETURN VARCHAR

 	IS
 	RESP VARCHAR(25);


BEGIN

SELECT COUNT(*) AS QTD tbAcao, situacao tbAcao INTO VALOR WHERE 
	idParte_1 LIKE ‘idParte_1’ AND
	idParte_2 LIKE ‘idParte_2’ AND 
	tipoParte_1 LIKE ‘tipoParte_1’ AND
	tipoParte_2 LIKE ‘tipoParte_2’ AND
	idClasse LIKE ‘idClasse’ AND
	idAssuntoPrincipal LIKE ‘idAssuntoPrincipal’ AND
	idAssuntoGenerico LIKE ‘idAssuntoGenerico’ AND
	situacao LIKE ‘A’ OR LIKE ‘E’	


	/*aqui*/
	IF  VALOR = 1 AND VALOR = 'A' THEN
		RESP:= 'PROCESSO ATIVO';
		RETURN (RESP);
	ELSIF VALOR = 1 AND VALOR = 'E' THEN
		RESP:= 'PROCESSO EXTINTO'
		RETURN (RESP);
	ELSE
			RESP:= 'DISTRIBUICAO LIVRE'
		RETURN (RESP);
	END IF;

END litispendenciaOuCoisaJulgada;



