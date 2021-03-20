data city;
input city$ country$;
cards;
Helsinki Finland
Delhi India
Mumbai India
Nice France
Paris France
;
run;

proc print data=city;
where country='India';
run;