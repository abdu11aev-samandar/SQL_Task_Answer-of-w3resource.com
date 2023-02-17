drop function if exists myFuction;

delimiter //
create function myFunction(mv_nm varchar(20)) returns varchar(50)
begin
    declare name varchar(10) default '';

    SELECT mov_id, mov_title, mov_dt_rel
    into name
    from movie
    where mov_title = mv_nm;

    return name;
end //



SELECT mov_id, mov_title, mov_dt_rel
from movie
where mov_title = 'Boogie Nights'