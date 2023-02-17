drop procedure if exists myProcedure;

delimiter //
create procedure myProcedure(mv_name varchar(20), rv_name varchar(20))
begin
    select mov_title, 'Movie' as type
    from mv_name
    union
    select rev_name, 'Reviewer' as type
    from rv_name;
end //


call myProcedure(movie, reviewer);
