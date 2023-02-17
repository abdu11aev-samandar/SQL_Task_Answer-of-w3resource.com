drop function if exists movie_title;

delimiter //
create function mv_title(year year) returns varchar(50)
begin
    declare title varchar default '';
    select mov_title
    into title
    from movie
    where year < mov_dt_rel;
    return title;
end //