* m01-5507-vorwerk-re-use.sas
* author: Steve Simon and Blake Vorwerk
* date created: 2021-09-01
* purpose: to re-use stored data
* license: public domain;

%let path=q:/introduction-to-sas;

libname perm "&path/data";

proc means
	data=perm.simple_example;
	title1 "Descriptive statistics";
run;
