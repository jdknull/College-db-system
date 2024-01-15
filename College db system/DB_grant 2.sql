create user DBA1 identified by dba;

create user Dept_manager identified by dep;

create user instructor identified by ins;

create user student identified by stu;
 
commit;

create role full_access;

grant select , insert , update , delete on Dept1 to full_access;

grant select , insert , update , delete on inst to full_access;

grant select , insert , update , delete on stud to full_access;

grant select , insert , update , delete on course to full_access;

grant select , insert , update , delete on section to full_access;

grant select , insert , update , delete on takes to full_access;

grant create table to full_access;

grant full_access to DBA1;

commit;

create role manager_access;

grant select on Dept1 to manager_access;

grant select , insert , update , delete on inst to manager_access;

grant select , insert , update , delete on stud to manager_access;

grant select , insert , update , delete on course to manager_access;

grant select , insert , update , delete on section to manager_access;

grant select , insert , update , delete on takes to manager_access;

grant manager_access to Dept_manager;

commit;

create role inst_access;

grant select on inst to inst_access;

grant select on stud to inst_access;

grant select on course to inst_access;

grant select on section to inst_access;

grant select , insert , update on takes to inst_access;

grant inst_access to instructor;

commit;

create role stu_access;

grant select on section to stu_access;

grant select , insert on takes to stu_access;

grant stu_access to student;

commit;



