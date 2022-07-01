%{
#include <iostream>
using std::cout;

int yylex(void);
int yyparse(void);
void yyerror(const char *);
%}

%token PR_CLASS PR_PUBLIC PR_VOID PR_MAIN PR_EXTENDS PR_RETURN PR_IF PR_ELSE PR_WHILE PR_PRINT PR_LENGTH PR_TRUE PR_FALSE PR_THIS PR_NEW PR_STATIC
%token TK_OK TK_OP TK_OC TK_CK TK_CP TK_CC
%token TK_STRING TK_INT TK_BOOLEAN
%token TK_PV TK_VIRG TK_PF
%token OP_ATRIB OP_AND OP_OR OP_LARGE OP_SMALLER OP_SUM OP_SUB OP_MULT OP_NOT
%token TK_ID TK_INTEGER
%token TK_EOF
%%

Structure: MainClass ClassDeclaration TK_EOF;

MainClass: PR_CLASS Identifier TK_OK PR_PUBLIC PR_STATIC PR_VOID PR_MAIN TK_OP TK_STRING TK_OC TK_CC Identifier TK_CP TK_OK Statement TK_CK TK_CK
;

ClassDeclaration: PR_CLASS Identifier ExtendsIdentifierKleene TK_OK VarDeclarationKleene MethodDeclarationKleene TK_CK
|
;

MethodDeclaration: PR_PUBLIC Type Identifier TK_OP Type Identifier ParamDeclarationKleene TK_CP TK_OK VarDeclarationKleene StatementKleene PR_RETURN Expression TK_PV TK_CK
;

ExtendsIdentifierKleene: PR_EXTENDS Identifier
|PR_EXTENDS Identifier ExtendsIdentifierKleene
;

VarDeclarationKleene: VarDeclaration VarDeclarationKleene
|
;


MethodDeclarationKleene: MethodDeclaration MethodDeclarationKleene
|
;


ParamDeclarationKleene: TK_VIRG Type Identifier ParamDeclarationKleene
|
;

StatementKleene: Statement StatementKleene
|
;

VarDeclaration: Type Identifier TK_PV;

ExpressionKleene: TK_VIRG Expression ExpressionKleene
|
;

Type: TK_INT TK_OC TK_CC
| TK_BOOLEAN
| TK_INT
| Identifier
;

Statement: TK_OK StatementKleene TK_CK
| PR_IF TK_OP Expression TK_CP Statement PR_ELSE Statement
| PR_WHILE TK_OP Expression TK_CP Statement
| PR_PRINT TK_OP Expression TK_CP TK_PV
| Identifier OP_ATRIB Expression TK_PV
| Identifier TK_OC Expression TK_CC OP_ATRIB Expression TK_PV
;

Expression: Expression OP_AND Expression
| Expression OP_SMALLER Expression
| Expression OP_LARGE Expression
| Expression OP_SUM Expression
| Expression OP_SUB Expression
| Expression OP_MULT Expression
| Expression OP_OR Expression
| Expression TK_OC Expression TK_CC
| Expression TK_PF PR_LENGTH
| Expression TK_PF Identifier TK_OP Expression ExpressionKleene TK_CP
| TK_INTEGER
| PR_TRUE
| PR_FALSE
| Identifier
| PR_THIS
| PR_NEW TK_INT TK_OC Expression TK_CC
| PR_NEW Identifier TK_OP TK_CP
| OP_NOT Expression
| TK_OP Expression TK_CP
;

Identifier: TK_ID
;
%%

extern FILE * yyin;

int main(int argc, char ** argv)
{
	if (argc > 1)
	{
		FILE * file;
		file = fopen(argv[1], "r");
		if (!file)
		{
			cout << "Arquivo " << argv[1] << " não encontrado!\n";
			exit(1);
		}
		
		yyin = file;
	}

	yyparse();
}

void yyerror(const char * s)
{
	extern int yylineno;    
	extern char * yytext;   

    cout << "Erro (" << s << "): símbolo \"" << yytext << "\" (linha " << yylineno << ")\n";
}