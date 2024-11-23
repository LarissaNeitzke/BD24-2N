TO FIND TABLES NAMES

SELECT name 
  FROM sqlite_master
 where type = 'table'

  /*Descobrir os crimes que tem na tabela*/
SELECT DISTINCT type FROM crime_scene_report;

/*Considerando que tem o tipo de crime 'murder' filtrar pela cidade que foi 
informada no início do exercício 'SQL City'*/
SELECT * FROM crime_scene_report
WHERE type = 'murder' 
AND city = 'SQL City'

/*No select de cima apareceram 3 crimes mas apenas um com a data do exercício '20180115'*/
SELECT * FROM crime_scene_report
WHERE type = 'murder' 
AND city = 'SQL City'
AND date = '20180115'
/*Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".*/

/*Filtrei por todos os registros da tabela 'person', mas retornou várias pessoas*/  
SELECT * FROM person

/*Filtrei a tabela 'person' pelo nome da rua e o número da casa ordenei por ordem descrente para saber o maior 
  número da casa e assim considerar que é a última casa da rua*/
SELECT * FROM person 
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC
/*id: 14887, name: Morty Schapiro, license_id:118009, address_number:4919, address_street_name: Nothwestern Dr, ssn: 111564949*/

/*Filtrei para descobrir os dados da segunda testemunha 'Annabel', como só apareceu uma, considerei ela como a 'Annabel' mencionada*/
SELECT * FROM person
WHERE address_street_name = 'Franklin Ave' 
ORDER BY name
/*id: 16371, name: Annabel Miller, license_id:490173, address_number:103, address_street_name: Franklin Ave, ssn: 318771143*/

/*Depois que descobri as testemunhas, precisei descobrir o que elas falaram para saber como prosseguir e encontrar o culpado*/
SELECT * FROM interview /*Quando pesquisei no geral, não tinha os nomes, só id_person então filtrei pelo id_person das testemunhas*/
WHERE person_id IN ('14887','16371')

/*Com base nos depoimentos o suspeito tem Get Fit Now Gym" bag, membership number inicia com "48Z", apenas membros Gold tem essa bag, 
a placa do carro que entrou tem "H42W" e aparentemente foi na academia dia 9th, January*/
SELECT * FROM get_fit_now_member /*Consultei os nomes das colunas*/
WHERE membership_status = 'gold' /*Membros 'gold'*/
ORDER BY id DESC
/*Dois membros iniciam com "48Z"
48Z7A	28819	Joe Germuska	20160305	gold
48Z55	67318	Jeremy Bowers	20160101	gold */

/*Para descobrir as placas dos carros*/
SELECT * FROM drivers_license
WHERE gender = 'male'
AND plate_number LIKE '%H42W%' /*Ensina no walkthrough paara filtrar informação que contenha isso dentro da coluna*/
/*423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
664760	21	71	black	black	male	4H42WR	Nissan	Altima*/

/*Consultar a data de check in conforme testemunha falou 9th, January*/
SELECT * FROM get_fit_now_check_in
WHERE check_in_date = '20180109'
AND membership_id IN ('48Z7A','48Z55') /*membership dos suspeitos*/
/*48Z7A	20180109	1600	1730
48Z55	20180109	1530	1700*/

/*Conferir quem fez check in no dia do crime e onde estava, só apareceu resultado no person_id '67318'(Jeremy Bowers)*/
SELECT * FROM facebook_event_checkin
WHERE person_id = '67318' 
/*67318	4719	The Funky Grooves Tour	20180115*/

/*Testei este nome no solution*/
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;
/*Se confirmou que foi o culpado, mas havia um mandante*/

/*Depoimento do culpado*/
SELECT * FROM interview 
WHERE person_id = '67318'






I was hired by a woman with a lot of money. 
  I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
  She has red hair and she drives a Tesla Model S. 
  I know that she attended the SQL Symphony Concert 3 times in December 2017.




























