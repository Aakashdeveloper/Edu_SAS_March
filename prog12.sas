/*
do
do while
do until

1) start to stop
2) By statement
3) while statement
4) Until Statement
*/

data loop1;
input x$;
finish = 10;
do i=1 to finish;
end;
cards;
'a'
'b'
'c'
'd'
;
run;
proc print data =loop1;
run;

data loop2;
finish = 50;
do i =1 to finish by 3;
*i= i+1;
y= i;
output;
end;
run;
proc print data=loop2;
run;

data loop3;
x=30;
do while(x>=100);
x+50;
end;
run;
proc print data =loop3;
run;


data loop3;
x=130;
do until(x>=100);
x+50;
end;
run;
proc print data =loop3;
run;
