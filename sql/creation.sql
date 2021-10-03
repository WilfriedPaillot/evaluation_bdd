CREATE DATABASE IF NOT EXISTS `wp_evalbdd_prod`;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.admin (
    id int auto_increment NOT NULL,
    matricule int(10) NOT NULL UNIQUE,
    pass varchar(250) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.user (
    id int auto_increment NOT NULL,
    matricule int(10) NOT NULL UNIQUE,
    pass varchar(250) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.cinema (
    id int auto_increment NOT NULL,
    cinema_name varchar(50) NULL,
    adress_street varchar(50) NULL,
    adress_zc varchar(5) NULL,
    adress_city varchar(50) NULL,
    user_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT user_FK FOREIGN KEY (user_id) REFERENCES wp_evalbdd_prod.user(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.admins_cinemas (
    admin_id int NOT NULL,
    cinema_id int NOT NULL,
    PRIMARY KEY (admin_id,cinema_id),
    CONSTRAINT admins_FK FOREIGN KEY (admin_id) REFERENCES wp_evalbdd_prod.admin(id) ON DELETE CASCADE,
    CONSTRAINT cinemas_FK FOREIGN KEY (cinema_id) REFERENCES wp_evalbdd_prod.cinema(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.viewer (
    id int auto_increment NOT NULL,
    lastname varchar(50) NOT NULL,
    firstname varchar(50) NOT NULL,
    mail varchar(50) NOT NULL UNIQUE,
    pass varchar(250) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.movie_room (
    id int auto_increment NOT NULL,
    movie_room_name varchar(30) NOT NULL,
    movie_room_seats int NOT NULL,
    cinema_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_cinema_FK FOREIGN KEY (cinema_id) REFERENCES wp_evalbdd_prod.cinema(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.film (
    id int auto_increment NOT NULL,
    name varchar(50) NOT NULL,
    descript varchar(250) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.film_show (
    id int auto_increment NOT NULL,
    day date NOT NULL,
    hour time NOT NULL,
    film_id int NOT NULL,
    movie_room_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT film_FK FOREIGN KEY (film_id) REFERENCES wp_evalbdd_prod.film(id),
    CONSTRAINT movie_room_FK FOREIGN KEY (movie_room_id) REFERENCES wp_evalbdd_prod.movie_room(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.price (
    id int auto_increment NOT NULL,
    category varchar(15) NOT NULL,
    price float(4,2) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

CREATE TABLE IF NOT EXISTS wp_evalbdd_prod.reservation (
    id int auto_increment NOT NULL,
    id_viewer int NOT NULL,
    id_film_show int NOT NULL,
    id_price int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT viewer_FK FOREIGN KEY (id_viewer) REFERENCES wp_evalbdd_prod.viewer(id),
    CONSTRAINT film_show_FK FOREIGN KEY (id_film_show) REFERENCES wp_evalbdd_prod.film_show(id),
    CONSTRAINT price_FK FOREIGN KEY (id_price) REFERENCES wp_evalbdd_prod.price(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

