#use command "make SHELL=cmd"

input = input.txt
output = output.txt

main: cal.l
	flex cal.l
	gcc lex.yy.c
	a <$(input)> $(output)
	#./a.out <input.txt> output.txt

main2: cal.l cal.y
	yacc -d cal.y
	flex cal.l 
	gcc cal.tab.c lex.yy.c
	a <$(input)> $(output)

main3: prog.l prog.y
	yacc -d prog.y 
	flex prog.l 
	gcc prog.tab.c lex.yy.c
	a <$(input)> $(output)

maintoken: tokeniser.l
	flex tokeniser.l
	gcc lex.yy.c
	a <$(input)> $(output)

main4: newprog.l newprog.y
	yacc -d newprog.y 
	flex newprog.l 
	gcc newprog.tab.c lex.yy.c
	a <$(input)> $(output)


