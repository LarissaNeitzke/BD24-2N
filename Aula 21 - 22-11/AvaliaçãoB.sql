/*Nomes das tabelas*/
SELECT name 
  FROM sqlite_master
 where type = 'table'

/*Descobri os crimes que tem na tabela*/
SELECT DISTINCT type FROM crime_scene_report;

/*Considerando que tem o tipo de crime 'murder' filtrei pela cidade que foi 
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

/*Filtrei a tabela 'person' pelo nome da rua e o número da casa e ordenei por ordem descrente para saber o maior 
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

/*Com base nos depoimentos o suspeito tem "Get Fit Now Gym" bag, membership number inicia com "48Z", apenas membros Gold tem essa bag, 
a placa do carro que ele entrou tem "H42W" e aparentemente foi na academia no dia 9th, January*/
SELECT * FROM get_fit_now_member /*Consultei os nomes das colunas*/
WHERE membership_status = 'gold' /*Membros 'gold'*/
ORDER BY id DESC
/*Dois membros iniciam com "48Z"
48Z7A	28819	Joe Germuska	20160305	gold
48Z55	67318	Jeremy Bowers	20160101	gold */

/*Para descobrir as placas dos carros*/
SELECT * FROM drivers_license
WHERE gender = 'male'
AND plate_number LIKE '%H42W%' /*Ensina no walkthrough para filtrar informação que contenha isso dentro da coluna*/
/*423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
664760	21	71	black	black	male	4H42WR	Nissan	Altima*/

/*Para eu descobrir qual desses 2 resultados era membro da academia ou os dois, fiz outro select juntando todos os filtros para ver se o resultado mudava*/
SELECT person_id, person.name, membership_status, plate_number
FROM get_fit_now_member 
JOIN person 
ON get_fit_now_member.person_id = person.id
JOIN drivers_license 
ON person.license_id = drivers_license.id
WHERE get_fit_now_member.id LIKE '48Z%' AND membership_status = 'gold' AND plate_number LIKE '%H42W%';
/*Retornou somente um nome Jeremy Bowers*/

/*Consultei a data de check in conforme testemunha falou 9th, January*/
SELECT * FROM get_fit_now_check_in
WHERE check_in_date = '20180109'
AND membership_id = '48Z55' /*membership do suspeito Jeremy*/
/*48Z55	20180109	1530	1700*/

/*Testei este nome no solution*/
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;
/*Se confirmou que foi o culpado, mas havia um mandante*/

/*Depoimento do culpado*/
SELECT * FROM interview 
WHERE person_id = '67318'
/*I was hired by a woman with a lot of money. 
  I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
  She has red hair and she drives a Tesla Model S. 
  I know that she attended the SQL Symphony Concert 3 times in December 2017.*/

SELECT * FROM drivers_license /*Essa tabela tem gender, hair_color, car_make, car_model*/
JOIN person
ON drivers_license.id = person.license_id /*Juntei as duas tabelas para conseguir encontrar a conexão com a tabela facebook_event_checkin*/
JOIN facebook_event_checkin
ON person.id = facebook_event_checkin.person_id
WHERE gender = 'female'
AND car_model = 'Model S' 
AND car_make = 'Tesla' 
AND hair_color = 'red' 
AND event_name /*Juntando as tabelas, consegui filtrar o nome do evento e apareceu 3 concertos em December 2017 com name 'Miranda Priestly'*/
LIKE '%SQL Symphony Concert%'

/*Rodei solução de novo*/
INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value FROM solution;
/*Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest SQL detective of all time. Time to break out the champagne!*/

Assassino: Jeremy Bowers
Mandante: Miranda Priestly







