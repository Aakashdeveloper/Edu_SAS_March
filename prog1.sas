/*Code For Bsis SAS Exceution*/
* This is our first code;
data instream_cars;
informat cars$12.;
input cars$ mpg cyl disp hp drat;
format cars$12. drat 6.5;
cards; /* cards used to insert instream data*/
Mercedes_AMG 21 6 160 110 3.71179
BMW_X1_AUTO 22.8 4 108 93 3.85
;
run;
proc print data=instream_cars;
run;