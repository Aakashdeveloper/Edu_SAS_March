data test;
file employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv out=test1 replace;
getnames=yes;
run;


/*Format Data*/
proc format;
value feedback
0-3 ='fail'
4-6= 'pass'
7-10='Exce'
;
run;

data test2;
set test1;
format Result feedback4.0;
run;
proc print data=test2;
run;