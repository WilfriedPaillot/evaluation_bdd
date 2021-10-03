-- Différents tests de validation CRUD 

-- Requêtes de création dans creation.sql


-- READ

-- Affiche toutes les séances du jour dans un cinéma 
SELECT cinema_name, adress_city, day, hour, name, descript FROM wp_evalbdd_prod.movie_room mr
	LEFT JOIN wp_evalbdd_prod.cinema c 
	ON mr.cinema_id = c.id
	RIGHT JOIN wp_evalbdd_prod.film_show fs
	ON mr.id = fs.id 
	JOIN wp_evalbdd_prod.film f
	ON fs.film_id = f.id
WHERE c.id = 1 AND fs.day = '2021-10-02'
ORDER BY hour;


-- Affiche les administrateurs globaux de l'ensemble des cinémas
SELECT matricule, cinema_name, adress_city FROM wp_evalbdd_prod.admin a
	CROSS JOIN wp_evalbdd_prod.cinema c2
ORDER BY a.id ;

-- Affiche l'administrateur unique (user) du cinéma
SELECT cinema_name, adress_city, matricule FROM wp_evalbdd_prod.cinema c1
	LEFT JOIN wp_evalbdd_prod.user u 
	ON c1.user_id = u.id ;

-- UPDATE

-- Modification du mot de passe de l'administrateur portant le matricule 103258

UPDATE wp_evalbdd_prod.admin
SET pass = '$2y$10$qCXUBKYnn8Ds3tEpV0jtAeLjqtqIVQHDsBQUn/l0cvh37JzjoQfA.'
WHERE matricule = 103258;

-- Modifier la salle de cinéma pour la séance du 02/10/2021 à 11:27:00

UPDATE wp_evalbdd_prod.film_show
SET movie_room_id = 5
WHERE day = '2021-10-02' AND hour = '11:27:00';



-- DELETE

-- Supprimer (en cascade) toutes les entrées correspondant à l'admin dont le matricule est 130120

DELETE FROM wp_evalbdd_prod.admin
WHERE matricule = 103120;





