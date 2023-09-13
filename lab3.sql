-- 2.1
insert into student(s_email,s_name,major)
values 
	('s2@jmu.edu','s2','IA'),
	('s3@jmu.edu', 's3','ISAT'),
	('s4@jmu.edu','s4','ISAT');
		
select * from student
	
-- 2.2
insert into professor(p_email,p_name,office)
values ('p1@jmu.edu','p1','o1'),
	('p2@jmu.edu','p2','o2')

-- 2.3
insert into course(c_number,c_name,room,p_email)
values('c1','postgresql','r1','p1@jmu.edu'),
	('c2','mongodb','r2','p2@jmu.edu'),
	('c3','twitter','r1','p1@jmu.edu')

-- 2.4
insert into enroll(s_email,c_number)
values ('s1@jmu.edu','c1'),
('s2@jmu.edu','c1'),
('s3@jmu.edu', 'c1'),
('s4@jmu.edu','c2'),
('s2@jmu.edu','c3'),
('s3@jmu.edu','c3');

select * from enroll

-- 2.5
/* insert professor first, because p3 in the professor table references p3 in the course table; therefore, p3 must be entered in the professor table first */

