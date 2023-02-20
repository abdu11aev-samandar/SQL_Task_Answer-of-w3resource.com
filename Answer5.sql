-- # create database score;
--
-- use score;
--
-- create table student
-- (
--     id   int auto_increment primary key,
--     school_id int,
--     ball bigint
-- );
--
-- create table school
-- (
--     id int auto_increment primary key,
--     ball_sum bigint default 0
-- );



drop trigger if exists myTrigger;

delimiter //
create trigger myTrigger
    after insert
    on student
    for each row
begin
    call myProcedure(NEW.school_id);
end //

drop trigger if exists student_update;

delimiter //
create trigger student_update
    after update
    on student
    for each row
begin
    call myProcedure(NEW.school_id);
end //

drop procedure myProcedure;

delimiter //
create procedure myProcedure(school_id int)
begin
    select SUM(ball)
    into @sum1
    from student
    WHERE student.school_id = school_id;

    UPDATE school
    SET ball_sum = @sum1
    WHERE school.id = school_id;
end //
