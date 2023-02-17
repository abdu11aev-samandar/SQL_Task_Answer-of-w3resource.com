/*# create database score;

use score;

create table student
(
    id   int auto_increment primary key,
    school_id int,
    ball bigint
);

create table school
(
    id int auto_increment primary key,
    ball_sum bigint default 0
);
*/


/*drop trigger if exists myTrigger;

delimiter //
create trigger myTrigger
    after insert
    on student
    for each row
begin

    select SUM(ball)
    into @sum1
    from student;

    UPDATE school SET ball_sum = @sum1 WHERE school.id = NEW.school_id;
end //*/


delimiter //
create procedure myProcedure(school_id int)
begin
    select SUM(ball)
    into @sum1
    from student;

    UPDATE school SET ball_sum = @sum1 WHERE school.id = school_id;
end //

call myProcedure(2);
