/*
create 2 datasets one for an employee with 1 dataset having name and experience and 
other one having name and 
technology only 4 employee records
name
John
Ammy
Gabril
Jackson
exp
2
4
6
technology
JavaScript
SAS
ML
*/

data employee;
input name$ experience;
cards;
Ammy 2
Gabrial 4
John 1
Nikita 5
;
run;

data technology ;
input name$ technology$;
cards;
Ammy JavaScript
Gabrial SAS
John ML
Nikita React
;
run;


data output;
merge employee technology;
by name;
run;
proc print data=output;
run;







