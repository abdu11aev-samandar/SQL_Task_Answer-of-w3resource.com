delimiter //
create function movie_name(name varchar(10)) returns year
begin
    declare mv_date year default 0;
    select mov_year
    into mv_date
    from movie
    where mov_title = name;
    return mv_date;
end //