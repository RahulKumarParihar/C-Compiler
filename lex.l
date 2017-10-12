 %option noyywrap
 %{
 	#include "grammer.tab.h"
 %}
 name 	     ([0-9])
 whitespace  [ \r\t\v\f]
 linefeed    \n
 %%
 {name} 		{ return NAME; }
 ":"			{ return COLON; }
 "->"			{ return RIGHT_ARROW; }
 "{"			{ return LEFT_BRACE;}
 "}"			{ return RIGHT_BRACE;}
 ";"			{ return SEMICOLON;}
 {whitespace}
 {linefeed}		++yylineno;
 %%