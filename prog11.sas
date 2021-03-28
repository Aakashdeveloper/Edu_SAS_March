filename employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv out=eduemp replace;
getnames=yes;
run;

data marks;
set work.eduemp;
if Hindi>50 then Hindi = Hindi+5;
else Hindi =.;
Keep Hindi English;
*drop Class;
run;
