SELECT *
from actor
where act_id = (SELECT act_id
                from movie_cast
                where mov_id = (SELECT mov_id
                                from movie
                                where mov_title = 'Annie Hall'))