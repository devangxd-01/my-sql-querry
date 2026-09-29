use devang;
create table student(studentid int , name varchar(50) , course varchar(50) , fees int);
insert into student(studentid , name , course , fees) values(001 , "devang" , "Mca" , 10000),(002 , "Ayush" , "AI ML" , 20000),(003 , "Divyansh" , "MCA" , 30000);
select * from student;

select max(fees) as secondhighestsalary
from student where fees < (select max(fees)
from student);

