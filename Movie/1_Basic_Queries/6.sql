drop function if exists myFunction;

delimiter //
create function myFunction(num int) returns varchar
begin
    declare name varchar(20) default '';
    SELECT rev_name
    into name
    from reviewer
    where rev_id in (SELECT rev_id
                     from rating
                     where rev_stars >= num);
    return name;
end //



