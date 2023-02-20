SELECT *
from director
where dir_id = (SELECT dir_id
                from movie_direction
                where mov_id = (SELECT mov_id
                                from movie
                                where mov_title = 'Eyes Wide Shut'))