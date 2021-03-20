/* Use Already Existing Data Set*/
proc print data=SASHELP.fish;
where Weight=600;
run;


/*create our own lib dataset*/
/*libname <libref> "location";*/

libname edulib "/folders/myfolders/";
data edulib.mtcars;
input cars$ mpg cyl disp hp drat;
cards;
Mercedes_AMG 21 6 160 110 3.71179
BMW_X1_AUTO 22.8 4 108 93 3.85
;
run;

proc print data=instream_cars;
run;