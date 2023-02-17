drop function if exists MyFunction;

delimiter //
create function MyFunction(fname varchar(10), lname varchar(10)) returns int
begin
    declare id int default 0;

    select act_id
    into id
    from actor
    where act_fname = fname
      and act_lname = lname;

    return id;
end //

delimiter ;