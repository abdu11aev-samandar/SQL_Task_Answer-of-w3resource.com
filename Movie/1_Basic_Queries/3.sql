use movie_db;

delimiter //
create function mv_title(mv_year date) returns varchar(50)
begin
    declare title varchar(50) default '';
    select mov_title
    into title
    from movie
    where mov_dt_rel = mv_year;
    return title;
end //