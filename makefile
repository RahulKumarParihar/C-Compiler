all:
	$(MAKE) grammar
	$(MAKE) flex
	gcc grammar.tab.c lex.yy.c
	g++ -std=c++11 -Wall -Wextra Compiler/grammar.tab.c Compiler/lex.yy.c Compiler/main.cpp

grammar:
	bison -d grammar.y

flex:
	flex lex.l
