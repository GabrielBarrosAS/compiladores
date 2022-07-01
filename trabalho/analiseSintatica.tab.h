/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_ANALISESINTATICA_TAB_H_INCLUDED
# define YY_YY_ANALISESINTATICA_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    PR_CLASS = 258,
    PR_PUBLIC = 259,
    PR_VOID = 260,
    PR_MAIN = 261,
    PR_EXTENDS = 262,
    PR_RETURN = 263,
    PR_IF = 264,
    PR_ELSE = 265,
    PR_WHILE = 266,
    PR_PRINT = 267,
    PR_LENGTH = 268,
    PR_TRUE = 269,
    PR_FALSE = 270,
    PR_THIS = 271,
    PR_NEW = 272,
    PR_STATIC = 273,
    TK_OK = 274,
    TK_OP = 275,
    TK_OC = 276,
    TK_CK = 277,
    TK_CP = 278,
    TK_CC = 279,
    TK_STRING = 280,
    TK_INT = 281,
    TK_BOOLEAN = 282,
    TK_PV = 283,
    TK_VIRG = 284,
    TK_PF = 285,
    OP_ATRIB = 286,
    OP_AND = 287,
    OP_OR = 288,
    OP_LARGE = 289,
    OP_SMALLER = 290,
    OP_SUM = 291,
    OP_SUB = 292,
    OP_MULT = 293,
    OP_NOT = 294,
    TK_ID = 295,
    TK_INTEGER = 296,
    TK_EOF = 297
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_ANALISESINTATICA_TAB_H_INCLUDED  */
