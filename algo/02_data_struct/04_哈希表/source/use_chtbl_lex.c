#include <ctype.h>
#include <stdlib.h>
#include <string.h>

#include "chtbl.h"
#include "lex.h"
#include "symbol.h"

Token lex (const char *istream, CHTbl *symtbl)
{
    Token token;
    Symbol *symtbl;
    int length, retval, i;

    /*Allocate space for a symbol*/
    if ((symbol = (Symbol *)malloc(sizeof(Symbol))) == NULL)
        return error;

    /*Process the next token*/
    if ((symbol->lexeme = next_token(istream)) == NULL) {
        /*Return taht there is no more input*/
        free(symbol);
        return lexit;
    } else {
        /*Determine the token type*/
        symbol->token = digit;
        length = strlen(symbol->lexeme);

        for (i = 0; i < length; i++) {
            if (!isdigit(symbol->lexeme[i])
                symbol->token = other;
        }

        memcpy(&token, &symbol->token, sizeof(Token));

        /*Insert the symbol into the symbol table*/
        if ((retval = chtbl_insert(symtbl, symbol)) < 0) {
            free(symbol);
            return error;
        } else if (retval == 1) {
            /*The symbol is already in the symbol table*/
            free(symbol);
        }
    }

    /*Return the token for the parser*/
    return token;
}
