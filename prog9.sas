/*combining data set
1 one to one
2 concat
3 interleaving
4 merging
*/

data test1;
input x y;
cards;
1 2
3 4
5 6
7 8
;
run;

data test2;
input a b;
cards;
12 13
14 15
16 17
18 19
;
run;

/* one to one*/
data test3;
set test1;
set test2;
run;

proc print data=test3;
run;


data test4;
input a b1;
cards;
10 20
30 40
50 60
70 80
;
run;

/*concatenate*/
data test5;
set test1 test2 test4;
proc print data=test5;
run;

/*interleaving (sort by a or b)*/
data test6;
set test4 test2;
by a;
run;
proc print data=test6;
run;




data test7;
input num v1$;
cards;
1 a1
2 a2
3 a3
4 d4
;
run;

data test8;
input num v2$;
cards;
1 b1
2 c2
3 b3
4 b4
;
run;


data test9;
merge test7 test8;
by num;
run;
proc print data=test9;
run;