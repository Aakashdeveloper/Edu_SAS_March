/*import file in sas*/
filename employee "/folders/myfolders/Book2.csv";
proc import datafile=employee dbms=csv out=eduemp replace;
getnames=yes;
run;

/*Use work file*/
proc print data =work.eduemp;
run;


/* Use Inline file*/
data test1;
infile '/folders/myfolders/Book1.csv' dlm=",";
input Name$ Class Hindi English;
run;

proc print data=test1;
run;