insert into wp_evalbdd_prod.admin (id, matricule, pass) 
values 
(1, 103120, '$2y$10$X7OeKtukHDJ4bcdOGU6oker5Ojmf.BWhgH5kZUIGS0HOyec/a1bSa'),
(2, 125468, '$2y$10$XlCUuenB8cqQQhMHL4i9reAAvHx6xDd05G3LKu3umT013F4iZ2/4W'),
(3, 103258, '$2y$10$DKSYpgW.UPSYEAPOiIL/0OZOXutiucqRHgPPHLi6KRLZ8sJo745.6');

insert into wp_evalbdd_prod.user (id, matricule, pass)
values
(1, 256245, '$2y$10$TCMuwbURUA.WcYMOCbkrQ.vuZ7sCqFmzcEG2aM104dJB3ab1Ro.La'),
(2, 232495, '$2y$10$3pnr/rmlkRc3feT5klWr5ufg2t1wtsZO1F/y39ukoEIwFlczKZ8JG'),
(3, 275310, '$2y$10$qCXUBKYnn8Ds3tEpV0jtAeLjqtqIVQHDsBQUn/l0cvh37JzjoQfA.'),
(4, 233697, '$2y$10$u/QlUP0K.A8KELgWZ.lxh.FuQMVdEe7YJI1/l4MI06gG8OSpJXGey'),
(5, 200125, '$2y$10$zsuMFB1KxN3TdzJa7MUl0OZWRA.6hbPgKov2FNPIOuTozrGCjx.V.');

insert into wp_evalbdd_prod.viewer (id, lastname, firstname, mail, pass)
values
(1, 'Malina', 'Crotch', 'mcrotch0@sina.com.cn', '$2y$10$TCMuwbURUA.WcYMOCbkrQ.vuZ7sCqFmzcEG2aM104dJB3ab1Ro.La'),
(2, 'Aldrich', 'Duchart', 'aduchart1@wikia.com', '$2y$10$3pnr/rmlkRc3feT5klWr5ufg2t1wtsZO1F/y39ukoEIwFlczKZ8JG'),
(3, 'Leann', 'Fulleylove', 'lfulleylove2@ted.com', '$2y$10$qCXUBKYnn8Ds3tEpV0jtAeLjqtqIVQHDsBQUn/l0cvh37JzjoQfA.'),
(4, 'Lorilyn', 'Chaim', 'lchaim3@jigsy.com', '$2y$10$u/QlUP0K.A8KELgWZ.lxh.FuQMVdEe7YJI1/l4MI06gG8OSpJXGey'),
(5, 'Hugo', 'Pashba', 'hpashba4@cloudflare.com', '$2y$10$zsuMFB1KxN3TdzJa7MUl0OZWRA.6hbPgKov2FNPIOuTozrGCjx.V.');

insert into wp_evalbdd_prod.cinema (id, cinema_name, adress_street, adress_zc, adress_city, user_id) 
values 
(1, 'Pathé', '48 Laurel Crossing', 45100, 'Orléans', 2),
(2, 'Gaumont', '04336 Mccormick Terrace', 4500, 'Orléans', 1),
(3, 'Le Melies', '93716 6th Parkway', 41600, 'Lamotte-Beuvron', 5),
(4, 'Keylex', '02014 Bobwhite Road', 75001, 'Paris', 3),
(5, 'Duobam', '07981 Delaware Park', 51450, 'Gorna Oryakhovitsa', 4);

insert into wp_evalbdd_prod.movie_room (id, movie_room_name, movie_room_seats, cinema_id)
values 
(1, 'Julietta Venables', 146, 1),
(2, 'Gwenora Larvin', 131, 1),
(3, 'Cross Whalley', 123, 1),
(4, 'Marigold Jenny', 91, 1),
(5, 'Godiva Mogenot', 124, 1),
(6, 'Randall Local', 80, 2),
(7, 'Randolf Garnett', 69, 2),
(8, 'Abner Bain', 53, 2),
(9, 'Elwood Glassborow', 36, 2),
(10, 'Odelia Griggs', 40, 2),
(11, 'Rafaelita Vallantine', 78, 3),
(12, 'Mead Shewen', 150, 3),
(13, 'Janella de Zamora', 100, 3),
(14, 'Jorgan Atwool', 60, 3),
(15, 'Lynnell Dumblton', 47, 3),
(16, 'Brana Jeavons', 48, 4),
(17, 'Wynnie Prestige', 97, 4),
(18, 'Rea Carruth', 37, 4),
(19, 'Orella Leys', 11, 4),
(20, 'Micki Drynan', 16, 4),
(21, 'Judas Jery', 100, 5),
(22, 'Stace Thams', 84, 5),
(23, 'Talbert Sigert', 77, 5),
(24, 'Jacinda Deam', 64, 5),
(25, 'Celene Argyle', 78, 5);

insert into wp_evalbdd_prod.film (id, name, descript) 
values 
(1, 'Permanent Midnight', 'Drama'),
(2, 'Bruno (Dress Code, The)', 'Comedy|Drama'),
(3, 'B*A*P*S', 'Comedy'),
(4, 'Brink''s Job, The', 'Comedy|Crime|Drama'),
(5, 'After Office Hours', 'Comedy|Crime|Drama'),
(6, 'Mass Effect: Paragon Lost', 'Action|Animation|Sci-Fi'),
(7, 'When the Wind Blows', 'Animation|War'),
(8, 'Luxo Jr.', 'Animation|Children'),
(9, 'Cottage, The', 'Comedy|Crime|Horror|Thriller'),
(10, 'Fear, The', 'Horror'),
(11, 'Suzanne''s Career (La carrière de Suzanne)', 'Romance'),
(12, 'Imagine: John Lennon', 'Documentary'),
(13, 'Young Guns II', 'Action|Western'),
(14, 'The Count of Monte Cristo', 'Action|Adventure|Drama|Romance|Thriller'),
(15, 'Love and Lemons (Små citroner gula)', 'Romance');

insert into wp_evalbdd_prod.film_show (id, day, hour, film_id, movie_room_id)
values 
(1, DATE '2021-10-07', '12:47', 1, 1),
(2, DATE '2021-10-07', '10:01', 2, 3),
(3, DATE '2021-10-07', '20:46', 3, 1),
(4, DATE '2021-10-02', '14:17', 4, 2),
(5, DATE '2021-10-02', '12:17', 5, 4),
(6, DATE '2021-10-07', '13:29', 6, 6),
(7, DATE '2021-10-02', '11:27', 7, 6),
(8, DATE '2021-10-07', '15:19', 8, 8),
(9, DATE '2021-10-07', '19:26', 9, 9),
(10, DATE '2021-10-06', '22:40', 10, 7),
(11, DATE '2021-10-06', '8:52', 11, 11),
(12, DATE '2021-10-05', '15:14', 12, 10),
(13, DATE '2021-10-06', '12:21', 13, 10),
(14, DATE '2021-10-02', '19:03', 14, 14),
(15, DATE '2021-10-05', '9:42', 15, 15),
(16, DATE '2021-10-06', '13:50', 6, 19),
(17, DATE '2021-10-06', '16:25', 7, 19),
(18, DATE '2021-10-06', '19:21', 8, 18),
(19, DATE '2021-10-06', '11:29', 9, 17),
(20, DATE '2021-10-06', '11:45', 12, 20),
(21, DATE '2021-10-02', '11:30', 11, 21),
(22, DATE '2021-10-05', '16:41', 2, 22),
(23, DATE '2021-10-02', '9:13', 13, 23),
(24, DATE '2021-10-02', '11:14', 4, 24),
(25, DATE '2021-10-02', '13:52', 5, 25);

insert into wp_evalbdd_prod.price (id, price, category)
values
(1, 9.20, 'Plein tarif'),
(2, 7.60, 'Etudiant'),
(3, 5.90, 'Enfant -14 ans');

insert into wp_evalbdd_prod.reservation (id, id_viewer, id_film_show, id_price) 
values 
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 21, 2),
(4, 2, 2, 3),
(5, 3, 22, 1),
(6, 5, 2, 2),
(7, 4, 12, 2),
(8, 3, 3, 3),
(9, 2, 13, 3),
(10, 1, 23, 1),
(11, 5, 25, 2),
(12, 4, 25, 3);

insert into wp_evalbdd_prod.admins_cinemas (admin_id, cinema_id) 
values 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5);