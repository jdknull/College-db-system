 ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

 create table dept1(DName varchar2(30), DCode varchar2(6) CONSTRAINT dcpk PRIMARY KEY, DOffice varchar2(6), DPhone integer);



 create table inst(I_ID integer CONSTRAINT iipk PRIMARY KEY, I_FName varchar2(12), I_LName varchar2(12), I_Phone integer, I_Office varchar2(6),Rank varchar2(20), DCode varchar2(6) CONSTRAINT dcfk REFERENCES dept1(DCode));



 create table stud(S_ID integer CONSTRAINT sipk PRIMARY KEY, S_FName varchar2(12), S_LName varchar2(12), dob date, S_Phone integer, Address varchar2(15), DCode varchar2(6) CONSTRAINT sdcfk REFERENCES dept1(DCode));



 create table course(C_Code varchar2(7) CONSTRAINT ccpk PRIMARY KEY , C_Name varchar2(50), C_Level integer, DCode varchar2(6) CONSTRAINT cdcfk REFERENCES dept1(DCode));



 create table section(Sec_ID integer CONSTRAINT secipk PRIMARY KEY , Sec_Name varchar2(3), DaysTime varchar2(3), Class_Number integer, C_Code CONSTRAINT ccfk REFERENCES course(C_Code), I_ID CONSTRAINT iifk REFERENCES inst(I_ID));



 create table takes(S_ID integer CONSTRAINT sifk REFERENCES stud(S_ID), Sec_ID integer CONSTRAINT secifk REFERENCES section(Sec_id), Grade integer);



 insert into dept1 values ('Computer Science' , 'CS' , '122' , 01268898200);



 insert into dept1 values ('Information Technology' , 'IT' , '126' , 01268891552);



 insert into dept1 values ('Information System' , 'IS' , '130' , 01268890087);



 insert into inst values (0001856 , 'Fahad' , 'khaled' , 0505525025 , 'CS18','Instructor', 'CS');



 insert into inst values (0001726 , 'Ali' , 'Saeed' , 0524162066 , 'IT27','Instructor', 'IT');



 insert into inst values (0001129 , 'Mohammed' , 'Ahmed' , 0515067899 , 'IS23','Instructor', 'IS');



 insert into inst values (0001878 , 'Omar' , 'Saad' , 0595904906 , 'IT10','Assistant Instructor', 'IT');



 insert into inst values (0001650 , 'Faisal' , 'Waleed' , 0507979601 , 'CS05','Assistant Instructor', 'CS');



 insert into inst values (0001770 , 'Nasir' , 'Fahad' , 0579590998 , 'IS11','Professor', 'IS');



 insert into inst values (0001901 , 'Waleed' , 'Ahmed' , 0560604271 , 'IT36','Associate Instructor', 'IT');



 insert into inst values (0001098 , 'Saeed' , 'Mohammed' , 0541506650 , 'CS36','Associate Instructor', 'CS');



 insert into inst values (0001277 , 'Jamal' , 'Omar' , 0559566441 , 'IT13','Instructor', 'IT');



 insert into stud values (201450 , 'Khaled' , 'Ahmed' , '1999/1/5' , 0501234588 , 'AL-Safa' , 'CS');



 insert into stud values (201778 , 'Khaled' , 'Ali' , '2000/01/19' , 0504834090 , 'AL-Nasem' , 'CS');



 insert into stud values (201778 , 'Khaled' , 'Ali' , '2000/01/19' , 0504834090 , 'AL-Nasem' , 'CS');



 insert into stud values (201749 , 'Mohammed' , 'Saeed' , '2000/06/07' , 0512480650 , 'AL-Rehab' , 'CS');



 insert into stud values (201066 , 'Fawaz' , 'Majed' , '1999/09/11' , 0580890565 , 'AL-Manar' , 'CS');



 insert into stud values (201333 , 'Omar' , 'Waleed' , '2001/07/07' , 0535470787 , 'AL-Safa' , 'IT');



 insert into stud values (201440 , 'Tariq' , 'Fahad' , '1999/12/05' , 0501245646 , 'AL-Manar' , 'IT');



 insert into stud values (201119 , 'Saeed' , 'Fawaz' , '1997/08/15' , 0501234111 , 'AL-Marwah' , 'IT');



 insert into stud values (200189 , 'Waleed' , 'Mohammed' , '1996/10/10' , 0501339876 , 'Bani-Malik' , 'IT');



 insert into stud values (201260 , 'Sultan' , 'Nasir' , '1997/11/15' , 0501248403 , 'AL-Marwah' , 'IS');



 insert into stud values (200659 , 'Ali' , 'Faisal' , '1996/03/03' , 0545650980 , 'AL-Nasem' , 'IS');



 insert into stud values (200158 , 'Majed' , 'Saad' , '1998/11/10' , 0598095650 , 'AL-Rehab' , 'IS');



 insert into course values ( 'CPCS220' , 'Operating System' , 1 , 'CS');



 insert into course values ( 'CPCS202' , 'Programming (I)' , 1 , 'CS');



 insert into course values ( 'CPCS210' , 'Network' , 1 , 'CS');



 insert into course values ( 'CPCS203' , 'Programing (II)' , 2 , 'CS');



 insert into course values ( 'CPCS225' , 'Computer Graphics' , 2 , 'CS');



 insert into course values ( 'CPCS211' , 'Theory Of Computation' , 2 , 'CS');



 insert into course values ( 'CPCS222' , 'Information Security' , 3 , 'CS');



 insert into course values ( 'CPCS218' , 'Artificial Intelligence' , 3 , 'CS');



 insert into course values ( 'CPIT221' , 'Technical Writing' , 1 , 'IT');



 insert into course values ( 'CPIT202' , 'Introduction to IT' , 1 , 'IT');



 insert into course values ( 'CPIT210' , 'System Analysis and Design' , 1 , 'IT');



 insert into course values ( 'CPIT255' , 'Software Engineering' , 2 , 'IT');



 insert into course values ( 'CPIT240' , 'Database' , 2 , 'IT');



 insert into course values ( 'CPIT288' , 'Multimedia Technologies' , 2 , 'IT');



 insert into course values ( 'CPIT295' , 'Wireless Data Networks' , 3 , 'IT');



 insert into course values ( 'CPIS201' , 'Introdction to IS' , 1 , 'IS');



 insert into course values ( 'CPIS211' , 'Data Structures' , 1 , 'IS');



 insert into course values ( 'CPIS205' , 'Digital Logic Design' , 1 , 'IS');



 insert into course values ( 'CPIS220' , 'Analysis and Design of Algorithms' , 2 , 'IS');



 insert into course values ( 'CPIS227' , 'Programming Languages' , 2 , 'IS');



 insert into course values ( 'CPIS285' , 'Compiler Construction' , 2 , 'IS');



 insert into course values ( 'CPIS230' , 'Computer Graphics' , 3 , 'IS');



 insert into course values ( 'CPIS245' , 'Software Engineering' , 3 , 'IS');



 insert into section values ( 19875 , 'KA1' , 'MW' , 4 , 'CPCS220' , '0001650');



 insert into section values ( 16623 , 'WZ1' , 'UTR' , 6 , 'CPCS202' , '0001856');



 insert into section values ( 19344 , 'KF' , 'UTR' , 7 , 'CPCS210' , '0001650');



 insert into section values ( 21998 , 'AB' , 'MW' , 11 , 'CPCS203' , '0001098');



 insert into section values ( 23329 , 'ZA' , 'UTR' , 13 , 'CPIT221' , '0001726');



 insert into section values ( 17674 , 'BC' , 'UTR' , 4 , 'CPIT202' , '0001878');



 insert into section values ( 17346 , 'FF' , 'MW' , 9 , 'CPIT210' , '0001901');



 insert into section values ( 21857 , 'AF' , 'UTR' , 4 , 'CPIS201' , '0001129');



 insert into section values ( 15749 , 'RT' , 'MW' , 10 , 'CPIS205' , '0001770');



 insert into section values ( 20889 , 'D1' , 'MW' , 8 , 'CPIS211' , '0001770');



 insert into takes values ( 201450 , 19875 , 85 ) ;



 insert into takes values ( 201450 , 16623 , 97 ) ;



 insert into takes values ( 201778 , 19875 , 100 ) ;



 insert into takes values ( 201778 , 16623 , 77 ) ;



 insert into takes values ( 201749 , 19875 , 84 ) ;



 insert into takes values ( 201749 , 19344 , 100 ) ;



 insert into takes values ( 201066 , 16623 , 90 ) ;



 insert into takes values ( 201066 , 19344 , 80 ) ;



 insert into takes values ( 201333 , 23329 , 100 ) ;



 insert into takes values ( 201333 , 17674 , 85 ) ;



 insert into takes values ( 201333 , 17346 , 94 ) ;



 insert into takes values ( 201440 , 17674 , 88 ) ;



 insert into takes values ( 201440 , 17346 , 100 ) ;



 insert into takes values ( 201119 , 23329 , 75 ) ;



 insert into takes values ( 201119 , 17346 , 99 ) ;



 insert into takes values ( 200189, 23329 , 92 ) ;



 insert into takes values ( 200189, 17674 , 87 ) ;



 insert into takes values ( 201260 , 21857  , 85 ) ;



 insert into takes values ( 201260 , 20889 , 100 ) ;



 insert into takes values ( 201260 , 15749 , 88 ) ;



 insert into takes values ( 200659 , 21857  , 99 ) ;



 insert into takes values ( 200659 , 20889 , 100 ) ;



 insert into takes values ( 200659 , 15749 , 93 ) ;



 insert into takes values ( 200158 , 21857 , 80 ) ;



 insert into takes values ( 200158 , 20889 , 77 ) ;



 insert into takes values ( 200158 , 15749 , 86 ) ;

