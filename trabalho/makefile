all: analiseSintatica

# Compiladores
CPP=g++
FLEX=flex
BISON=bison

analiseSintatica: lex.yy.c analiseSintatica.tab.c
	$(CPP) lex.yy.c analiseSintatica.tab.c -std=c++17 -o executavel

lex.yy.c: analiseLexica.l
	$(FLEX) analiseLexica.l

analiseSintatica.tab.c: analiseSintatica.y
	$(BISON) -d analiseSintatica.y

clean:
	rm analiseSintatica lex.yy.c analiseSintatica.tab.c analiseSintatica.tab.h