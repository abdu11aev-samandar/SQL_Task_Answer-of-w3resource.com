create database if not exists movie_db;

use movie_db;

CREATE TABLE `movie` (
                         `mov_id` int PRIMARY KEY AUTO_INCREMENT,
                         `mov_title` varchar(50),
                         `mov_year` int,
                         `mov_time` int,
                         `mov_lang` varchar(50),
                         `mov_dt_rel` date,
                         `mov_rel_country` varchar(5)
);

CREATE TABLE `movie_cast` (
                              `act_id` int,
                              `mov_id` int,
                              `role` varchar(30)
);

CREATE TABLE `reviewer` (
                            `rev_id` int PRIMARY KEY AUTO_INCREMENT,
                            `rev_name` varchar(30)
);

CREATE TABLE `actor` (
                         `act_id` int PRIMARY KEY AUTO_INCREMENT,
                         `act_fname` varchar(20),
                         `act_lname` varchar(20),
                         `act_gender` varchar(1)
);

CREATE TABLE `director` (
                            `dir_id` int PRIMARY KEY AUTO_INCREMENT,
                            `dir_fname` varchar(20),
                            `dir_lname` varchar(20)
);

CREATE TABLE `movie_direction` (
                                   `dir_id` int,
                                   `mov_id` int
);

CREATE TABLE `genres` (
                          `gen_id` int PRIMARY KEY AUTO_INCREMENT,
                          `gen_title` varchar(20)
);

CREATE TABLE `movie_genres` (
                                `mov_id` int,
                                `gen_id` int
);

CREATE TABLE `rating` (
                          `mov_id` int,
                          `rev_id` int,
                          `rev_stars` int,
                          `num_o_ratings` int
);

ALTER TABLE `movie_cast` ADD FOREIGN KEY (`act_id`) REFERENCES `actor` (`act_id`);

ALTER TABLE `movie_cast` ADD FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`);

ALTER TABLE `movie_direction` ADD FOREIGN KEY (`dir_id`) REFERENCES `director` (`dir_id`);

ALTER TABLE `movie_direction` ADD FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`);

ALTER TABLE `movie_genres` ADD FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`);

ALTER TABLE `movie_genres` ADD FOREIGN KEY (`gen_id`) REFERENCES `genres` (`gen_id`);

ALTER TABLE `rating` ADD FOREIGN KEY (`mov_id`) REFERENCES `movie` (`mov_id`);

ALTER TABLE `rating` ADD FOREIGN KEY (`rev_id`) REFERENCES `reviewer` (`rev_id`);


-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (101, 'James               ', 'Stewart             ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (102, 'Deborah             ', 'Kerr                ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (103, 'Peter               ', 'OToole              ', 'M');
-- SQLINES LICaENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (104, 'Robert              ', 'De Niro             ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (105, 'F. Murray           ', 'Abraham             ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (106, 'Harrison            ', 'Ford                ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (107, 'Nicole              ', 'Kidman              ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (108, 'Stephen             ', 'Baldwin             ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (109, 'Jack                ', 'Nicholson           ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (110, 'Mark                ', 'Wahlberg            ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (111, 'Woody               ', 'Allen               ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (112, 'Claire              ', 'Danes               ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (113, 'Tim                 ', 'Robbins             ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (114, 'Kevin               ', 'Spacey              ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (115, 'Kate                ', 'Winslet             ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (116, 'Robin               ', 'Williams            ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (117, 'Jon                 ', 'Voight              ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (118, 'Ewan                ', 'McGregor            ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (119, 'Christian           ', 'Bale                ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (120, 'Maggie              ', 'Gyllenhaal          ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (121, 'Dev                 ', 'Patel               ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (122, 'Sigourney           ', 'Weaver              ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (123, 'David               ', 'Aston               ', 'M');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`actor` (`act_id`, `act_fname`, `act_lname`, `act_gender`) VALUES (124, 'Ali                 ', 'Astin               ', 'F');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (201, 'Alfred              ', 'Hitchcock           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (202, 'Jack                ', 'Clayton             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (203, 'David               ', 'Lean                ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (204, 'Michael             ', 'Cimino              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (205, 'Milos               ', 'Forman              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (206, 'Ridley              ', 'Scott               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (207, 'Stanley             ', 'Kubrick             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (208, 'Bryan               ', 'Singer              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (209, 'Roman               ', 'Polanski            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (210, 'Paul                ', 'Thomas Anderson     ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (211, 'Woody               ', 'Allen               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (212, 'Hayao               ', 'Miyazaki            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (213, 'Frank               ', 'Darabont            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (214, 'Sam                 ', 'Mendes              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (215, 'James               ', 'Cameron             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (216, 'Gus                 ', 'Van Sant            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (217, 'John                ', 'Boorman             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (218, 'Danny               ', 'Boyle               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (219, 'Christopher         ', 'Nolan               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (220, 'Richard             ', 'Kelly               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (221, 'Kevin               ', 'Spacey              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (222, 'Andrei              ', 'Tarkovsky           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES (223, 'Peter               ', 'Jackson             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1001, 'Action              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1002, 'Adventure           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1003, 'Animation           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1004, 'Biography           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1005, 'Comedy              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1006, 'Crime               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1007, 'Drama               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1008, 'Horror              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1009, 'Music               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1010, 'Mystery             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1011, 'Romance             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1012, 'Thriller            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`genres` (`gen_id`, `gen_title`) VALUES (1013, 'War                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (901, 'Vertigo                                           ', 1958, 128, 'English        ', CAST('1958-08-24' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (902, 'The Innocents                                     ', 1961, 100, 'English        ', CAST('1962-02-19' AS Date), 'SW   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (903, 'Lawrence of Arabia                                ', 1962, 216, 'English        ', CAST('1962-12-11' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (904, 'The Deer Hunter                                   ', 1978, 183, 'English        ', CAST('1979-03-08' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (905, 'Amadeus                                           ', 1984, 160, 'English        ', CAST('1985-01-07' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (906, 'Blade Runner                                      ', 1982, 117, 'English        ', CAST('1982-09-09' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (907, 'Eyes Wide Shut                                    ', 1999, 159, 'English        ', NULL, 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (908, 'The Usual Suspects                                ', 1995, 106, 'English        ', CAST('1995-08-25' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (909, 'Chinatown                                         ', 1974, 130, 'English        ', CAST('1974-08-09' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (910, 'Boogie Nights                                     ', 1997, 155, 'English        ', CAST('1998-02-16' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (911, 'Annie Hall                                        ', 1977, 93, 'English        ', CAST('1977-04-20' AS Date), 'USA  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (912, 'Princess Mononoke                                 ', 1997, 134, 'Japanese       ', CAST('2001-10-19' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (913, 'The Shawshank Redemption                          ', 1994, 142, 'English        ', CAST('1995-02-17' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (914, 'American Beauty                                   ', 1999, 122, 'English        ', NULL, 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (915, 'Titanic                                           ', 1997, 194, 'English        ', CAST('1998-01-23' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (916, 'Good Will Hunting                                 ', 1997, 126, 'English        ', CAST('1998-06-03' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (917, 'Deliverance                                       ', 1972, 109, 'English        ', CAST('1982-10-05' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (918, 'Trainspotting                                     ', 1996, 94, 'English        ', CAST('1996-02-23' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (919, 'The Prestige                                      ', 2006, 130, 'English        ', CAST('2006-11-10' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (920, 'Donnie Darko                                      ', 2001, 113, 'English        ', NULL, 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (921, 'Slumdog Millionaire                               ', 2008, 120, 'English        ', CAST('2009-01-09' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (922, 'Aliens                                            ', 1986, 137, 'English        ', CAST('1986-08-29' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (923, 'Beyond the Sea                                    ', 2004, 118, 'English        ', CAST('2004-11-26' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (924, 'Avatar                                            ', 2009, 162, 'English        ', CAST('2009-12-17' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (926, 'Seven Samurai                                     ', 1954, 207, 'Japanese       ', CAST('1954-04-26' AS Date), 'JP   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (927, 'Spirited Away                                     ', 2001, 125, 'Japanese       ', CAST('2003-09-12' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (928, 'Back to the Future                                ', 1985, 116, 'English        ', CAST('1985-12-04' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie` (`mov_id`, `mov_title`, `mov_year`, `mov_time`, `mov_lang`, `mov_dt_rel`, `mov_rel_country`) VALUES (925, 'Braveheart                                        ', 1995, 178, 'English        ', CAST('1995-09-08' AS Date), 'UK   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (901, 101, 'John Scottie Ferguson         ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (902, 102, 'Miss Giddens                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (903, 103, 'T.E. Lawrence                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (904, 104, 'Michael                       ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (905, 105, 'Antonio Salieri               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (906, 106, 'Rick Deckard                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (907, 107, 'Alice Harford                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (908, 108, 'McManus                       ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (910, 110, 'Eddie Adams                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (911, 111, 'Alvy Singer                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (912, 112, 'San                           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (913, 113, 'Andy Dufresne                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (914, 114, 'Lester Burnham                ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (915, 115, 'Rose DeWitt Bukater           ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (916, 116, 'Sean Maguire                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (917, 117, 'Ed                            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (918, 118, 'Renton                        ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (920, 120, 'Elizabeth Darko               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (921, 121, 'Older Jamal                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (922, 122, 'Ripley                        ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (923, 114, 'Bobby Darin                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (909, 109, 'J.J. Gittes                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_cast` (`mov_id`, `act_id`, `role`) VALUES (919, 119, 'Alfred Borden                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (901, 201);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (902, 202);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (903, 203);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (904, 204);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (905, 205);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (906, 206);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (907, 207);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (908, 208);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (909, 209);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (910, 210);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (911, 211);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (912, 212);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (913, 213);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (914, 214);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (915, 215);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (916, 216);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (917, 217);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (918, 218);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (919, 219);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (920, 220);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (921, 218);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (922, 215);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_direction` (`mov_id`, `dir_id`) VALUES (923, 221);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (922, 1001);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (917, 1002);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (903, 1002);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (912, 1003);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (911, 1005);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (908, 1006);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (913, 1006);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (926, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (928, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (918, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (921, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (902, 1008);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (923, 1009);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (907, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (927, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (901, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (914, 1011);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (906, 1012);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (904, 1013);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (922, 1001);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (917, 1002);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (903, 1002);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (912, 1003);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (911, 1005);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (908, 1006);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (913, 1006);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (926, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (928, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (918, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (921, 1007);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (902, 1008);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (923, 1009);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (907, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (927, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (901, 1010);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (914, 1011);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (906, 1012);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`movie_genres` (`mov_id`, `gen_id`) VALUES (904, 1013);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9001, 'Righty Sock                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9002, 'Jack Malvern                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9003, 'Flagrant Baronessa            ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9004, 'Alec Shaw                     ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9005, NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9006, 'Victor Woeltjen               ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9007, 'Simon Wright                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9008, 'Neal Wruck                    ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9009, 'Paul Monks                    ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9010, 'Mike Salvati                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9011, NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9012, 'Wesley S. Walker              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9013, 'Sasha Goldshtein              ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9014, 'Josh Cates                    ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9015, 'Krug Stillo                   ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9016, 'Scott LeBrun                  ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9017, 'Hannah Steele                 ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9018, 'Vincent Cadena                ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9019, 'Brandt Sponseller             ');
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`reviewer` (`rev_id`, `rev_name`) VALUES (9020, 'Richard Adams                 ');
    -- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (901, 9001, CAST(8.40 AS DECIMAL(4, 2)), 263575);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (902, 9002, CAST(7.90 AS DECIMAL(4, 2)), 20207);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (903, 9003, CAST(8.30 AS DECIMAL(4, 2)), 202778);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (906, 9005, CAST(8.20 AS DECIMAL(4, 2)), 484746);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (924, 9006, CAST(7.30 AS DECIMAL(4, 2)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (908, 9007, CAST(8.60 AS DECIMAL(4, 2)), 779489);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (909, 9008, NULL, 227235);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (910, 9009, CAST(3.00 AS DECIMAL(4, 2)), 195961);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (911, 9010, CAST(8.10 AS DECIMAL(4, 2)), 203875);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (912, 9011, CAST(8.40 AS DECIMAL(4, 2)), NULL);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (914, 9013, CAST(7.00 AS DECIMAL(4, 2)), 862618);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (915, 9001, CAST(7.70 AS DECIMAL(4, 2)), 830095);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (916, 9014, CAST(4.00 AS DECIMAL(4, 2)), 642132);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (925, 9015, CAST(7.70 AS DECIMAL(4, 2)), 81328);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (918, 9016, NULL, 580301);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (920, 9017, CAST(8.10 AS DECIMAL(4, 2)), 609451);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (921, 9018, CAST(8.00 AS DECIMAL(4, 2)), 667758);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (922, 9019, CAST(8.40 AS DECIMAL(4, 2)), 511613);
-- SQLINES LICENSE FOR EVALUATION USE ONLY
INSERT `movie_db`.`rating` (`mov_id`, `rev_id`, `rev_stars`, `num_o_ratings`) VALUES (923, 9020, CAST(6.70 AS DECIMAL(4, 2)), 13091);