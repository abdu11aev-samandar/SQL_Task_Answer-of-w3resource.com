drop trigger if exists myTrigger;

delimiter //
create trigger myTrigger
    after insert
    on all_grades
    for each row
begin

    insert into sum_grade(student_id, sub_gr_sm)
    select a.student_id, grade + NEW.grade
    from all_grades a
    group by a.student_id;

end //

delete
from all_grades;
/*delete
from avg_grade;*/
delete
from sum_grade;