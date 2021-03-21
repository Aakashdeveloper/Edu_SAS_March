data students;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class Hindi English;
run;

/*Keep*/
/*
data mystudents;
set students;
Keep Name Hindi;
proc print data=mystudents;
run;*/


/*Labelling
data mystudents;
set students;
label name="name of students";
proc print data=mystudents;
run;
*/

/*rename
data mystudents;
set students (rename=(name=s_name));
proc print data=mystudents;
run;
*/
/*
data mystudents;
set students (rename=(name=s_name));
drop _numeric_;
proc print data=mystudents;
run;
*/


/*
data mystudents;
set students (rename=(name=s_name));
drop class;
proc print data=mystudents;
run;
*/
