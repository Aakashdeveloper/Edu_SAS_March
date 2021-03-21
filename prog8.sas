/*if else*/
data students;
set work.students;
if Hindi>50 then Hindi = Hindi+5;
else Hindi = Hindi;
Keep Hindi English;
*drop Class;
run;

proc print data = students;
run;


data test1;
input x;
cards;
1
2
3
4
5
6
7
;
run;

data test2;
set test1;
if x>2 AND X<4 then y="good";
else if x>5 then y = "Very Good";
else y = "bad";
run;

proc print data = test2;
run;



