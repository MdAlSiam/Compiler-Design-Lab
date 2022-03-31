%option noyywrap

%{
    // Roll : 1603008

    // Question: Question 1: Tokenize following code: while (b_c > 10); *

%}

delim [ \t\n]
ws {delim}+
digit [0-9]
number ({digit}+)
point (".")
float_number ({digit})*({point})({digit})+
datatype ("int"|"float"|"double")
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})*
comparator ("=="|"<"|">")
assignment ("=")
operator ("+"|"-"|"*"|"/")

%%
{ws} {}
">" {printf("%s GREATER THAN\n", yytext);}
{datatype} {printf("%s DATATYPE\n", yytext);}
{number} {printf("%s NUM\n", yytext);}
"while" {printf("%s WHILE\n", yytext);}
{id} {printf("%s ID\n", yytext);}
{float_number} {printf("%s FLOAT NUMBER\n", yytext);}
"if" {printf("%s IF\n", yytext);}
"(" {printf("%s LP\n",yytext);}
")" {printf("%s RP\n",yytext);}
"{" {printf("%s LB\n",yytext);}
"}" {printf("%s RB\n",yytext);}
"[" {printf("%s LS\n",yytext);}
"]" {printf("%s RS\n",yytext);}
"+" {printf("%s ADD\n",yytext);}
"-" {printf("%s SUB\n",yytext);}
"*" {printf("%s MUL\n",yytext);}
"/" {printf("%s DIV\n",yytext);}
"=" {printf("%s ASSIGNMENT\n",yytext);}
";" {printf("%s SEMICOLON\n",yytext);}
"," {printf("%s COMMA\n",yytext);}
%%

int main()
{
    yylex();
}
