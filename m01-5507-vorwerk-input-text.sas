* m01-5507-vorwerk-input-text.sas
* author: Steve Simon and Blake Vorwerk
* date created: 2021-09-01
* purpose: to read data from a separate file
* license: public domain;

%let path=q:/introduction-to-sas;

libname perm "&path/data";

filename rawdata "&path/data/six-numbers.txt";

ods pdf file="&path/results/m01-5507-vorwerk-input-text.pdf";

data perm.small_example;
	infile rawdata;
	input x y;
run;

proc print
	data=perm.small_example(obs=1);
	title1 "First row";
run;

ods pdf close;
