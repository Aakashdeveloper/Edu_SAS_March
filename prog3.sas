data test;
informat DOB date9. currency dollar2.;
format DOB mmddyy10. currency dollar7.;
input DOB Currency;
datalines;
20mar2021 1000
;
run;
proc print data=test;
run;

data test1;
informat TOB time8.;
format TOB time8.;
input TOB;
datalines;
00:10:00
;
run;
proc print data=test1;
run;

data test1;
informat cpg percent.;
format cpg percent.;
input cpg;
cards;
20%
;
run;
proc print data=test1;
run;


data test1;
*informat cpg percent.;
format DTOB datetime20.;
input DTOB;
datalines;
0
;
run;
proc print data=test1;
run;


data t;
x = today();
format x ddmmyy10.;
y = datetime();
format y datetime20.;
put "Formatted day: " x " , formatted datetime: " y;
run;
proc print data=t;
run;


data test;
x = today();
informat x date9.;
format x mmddyy10.;
input DOB;
datalines;
x
;
run;
proc print data=test;
run;

data test;
informat DOB julian5.;
format DOB date9.;
input DOB;
datalines;
21079
;
run;
proc print data=test;
run;