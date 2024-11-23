TO FIND TABLES NAMES

SELECT name 
  FROM sqlite_master
 where type = 'table'

SELECT DISTINCT type FROM crime_scene_report;

SELECT * FROM crime_scene_report
WHERE type = 'murder' 
AND city = 'SQL City'


SELECT * FROM crime_scene_report
WHERE type = 'murder' 
AND city = 'SQL City'
AND date = '20180115'
/*Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".*/

SELECT * FROM person

/*Saber qual a última casa da rua, organizar pelo maior número da casa*/
SELECT * FROM person 
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC

/*id: 14887, name: Morty Schapiro, license_id:118009, address_number:4919, address_street_name: Nothwestern Dr, ssn: 111564949*/