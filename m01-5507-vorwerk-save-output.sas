* m01-5507-vorwerk-save-output.sas
* author: Steve Simon and Blake Vorwerk
* date created: 2021-09-01
* purpose: to create a permanent dataset
* license: public domain;

%let path=q:/introduction-to-sas;

libname perm "&path/data";

ods pdf file=
	"&path/data/m01-5507-vorwerk-save-output.pdf";

data perm.simple_example;
	input x y;
	datalines;
1 2
2 4
3 6
;

proc print
	data=perm.simple_example(obs=1);
	title1 "First row of data";
run;

ods pdf close;
