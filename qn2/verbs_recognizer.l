%{
#include <stdio.h>
#include <string.h>
#include "verbs.h"

// Global variables to count and store recognized verbs
int verb_count = 0;
char recognized_verbs[100][50];  // Array to store recognized verbs
%}

/* Define the patterns for recognizing the verbs */
%%
is          { strcpy(recognized_verbs[verb_count++], yytext); }
am          { strcpy(recognized_verbs[verb_count++], yytext); }
are         { strcpy(recognized_verbs[verb_count++], yytext); }
were        { strcpy(recognized_verbs[verb_count++], yytext); }
was         { strcpy(recognized_verbs[verb_count++], yytext); }
be          { strcpy(recognized_verbs[verb_count++], yytext); }
being       { strcpy(recognized_verbs[verb_count++], yytext); }
been        { strcpy(recognized_verbs[verb_count++], yytext); }
do          { strcpy(recognized_verbs[verb_count++], yytext); }
does        { strcpy(recognized_verbs[verb_count++], yytext); }
did         { strcpy(recognized_verbs[verb_count++], yytext); }
will        { strcpy(recognized_verbs[verb_count++], yytext); }
would       { strcpy(recognized_verbs[verb_count++], yytext); }
should      { strcpy(recognized_verbs[verb_count++], yytext); }
can         { strcpy(recognized_verbs[verb_count++], yytext); }
could       { strcpy(recognized_verbs[verb_count++], yytext); }
has         { strcpy(recognized_verbs[verb_count++], yytext); }
have        { strcpy(recognized_verbs[verb_count++], yytext); }
had         { strcpy(recognized_verbs[verb_count++], yytext); }
go          { strcpy(recognized_verbs[verb_count++], yytext); }

[a-zA-Z]+   { /* Ignore other words */ }

[ \t\n]+    { /* Ignore whitespace */ }

%%

// Main function to execute the lexical analysis
int main(void) {
    yylex(); // Start the lexical analysis

    // Output the results
    if (verb_count > 0) {
        printf("Number of verbs recognized: %d\n", verb_count);
        printf("Verbs recognized: ");
        for (int i = 0; i < verb_count; i++) {
            printf("%s ", recognized_verbs[i]);
        }
        printf("\n");
    } else {
        printf("0 verbs recognized\n");
    }
    return 0;
}

// Required function for lex
int yywrap() {
    return 1;
}
