drop procedure if exists myProcedure;

delimiter //
create procedure myProcedure(mv_name varchar(10), rt_name varchar(10))
begin
    SELECT mov_title
    from mv_name
    where mov_id not in (select mov_id
                         from rt_name)
end //
