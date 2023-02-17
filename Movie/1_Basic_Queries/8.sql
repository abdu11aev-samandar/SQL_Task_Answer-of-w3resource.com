drop procedure if exists myProcedure;

delimiter //
create procedure myProcedure(in mv_name varchar(10), in rt_name varchar(10), out mv_nm varchar(10))
begin
    SELECT mov_title
    from mv_name
    where mov_id not in (select mov_id
                         from rt_name);
end //
delimiter ;

call myProcedure('movie', 'rating', @mv_nm);

select @mv_nm;