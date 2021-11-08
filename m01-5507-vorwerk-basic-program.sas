* m01-5507-vorwerk-basic-program.sas
* author: Steve Simon and Blake Vorwerk
* date: created: 2021-09-01
* purpose: to read and print a small data set
* license: public domain;

data small_example;
	input x y;
	datalines;
1 2
2 4
3 6
;

proc print
	data=small_example(obs=1);

title "First row of data";
run;
