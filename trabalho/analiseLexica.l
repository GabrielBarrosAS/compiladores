%{
#include "analiseSintatica.tab.h"
#include <stdio.h>
%}

%option yylineno
%option noyywrap

delim   [ \t\n]
brancos {delim}*
letra   [A-Za-z]
digito  [0-9]

%%
{brancos}                           ;
"class"                             {printf("PR_CLASS\n");return PR_CLASS;};
"public"                            {printf("PR_PUBLIC\n");return PR_PUBLIC;};
"static"                            {printf("PR_STATIC\n");return PR_STATIC;};
"void"                              {printf("PR_VOID\n");return PR_VOID;}; 
"main"                              {printf("PR_MAIN\n");return PR_MAIN;}; 
"extends"                           {printf("PR_EXTENDS\n");return PR_EXTENDS;}; 
"return"                            {printf("PR_RETURN\n");return PR_RETURN;}; 
"if"                                {printf("PR_IF\n");return PR_IF;}; 
"else"                              {printf("PR_ELSE\n");return PR_ELSE;}; 
"while"                             {printf("PR_WHILE\n");return PR_WHILE;}; 
"System.out.println"                {printf("PR_PRINT\n");return PR_PRINT;}; 
"length"                            {printf("PR_LENGTH\n");return PR_LENGTH;}; 
"true"                              {printf("PR_TRUE\n");return PR_TRUE;}; 
"false"                             {printf("PR_FALSE\n");return PR_FALSE;}; 
"this"                              {printf("PR_THIS\n");return PR_THIS;}; 
"new"                               {printf("PR_NEW\n");return PR_NEW;}; 
"{"                                 {printf("TK_OK\n");return TK_OK;}; 
"("                                 {printf("TK_OP\n");return TK_OP;}; 
"["                                 {printf("TK_OC\n");return TK_OC;}; 
"}"                                 {printf("TK_CK\n");return TK_CK;}; 
")"                                 {printf("TK_CP\n");return TK_CP;}; 
"]"                                 {printf("TK_CC\n");return TK_CC;}; 
"String"                            {printf("TK_STRING\n");return TK_STRING;}; 
"int"                               {printf("TK_INT\n");return TK_INT;}; 
"boolean"                           {printf("TK_BOOLEAN\n");return TK_BOOLEAN;}; 
";"                                 {printf("TK_PV\n");return TK_PV;}; 
","                                 {printf("TK_VIRG\n");return TK_VIRG;}; 
"."                                 {printf("TK_PF\n");return TK_PF;}; 
"="                                 {printf("OP_ATRIB\n");return OP_ATRIB;}; 
"&&"                                {printf("OP_AND\n");return OP_AND;}; 
"||"                                {printf("OP_OR\n");return OP_OR;}; 
">"                                 {printf("OP_LARGE\n");return OP_LARGE;}; 
"<"                                 {printf("OP_SMALLER\n");return OP_SMALLER;}; 
"+"                                 {printf("OP_SUM\n");return OP_SUM;}; 
"-"                                 {printf("OP_SUB\n");return OP_SUB;}; 
"*"                                 {printf("OP_MULT\n");return OP_MULT;}; 
"!"                                 {printf("OP_NOT\n");return OP_NOT;}; 
"EOF"                               {printf("TK_EOF\n");return TK_EOF;};
({letra}|_)({letra}|{digito})*      {printf("TK_ID\n");return TK_ID;}; 
{digito}({digito})*                 {printf("TK_INTEGER\n");return TK_INTEGER;};
%%