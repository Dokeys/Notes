# STRINGS IN C

## Library

```c
#include <string.h>
```

## Initialisierung

```c
/* dass Array wird automatisch so groß wie der String */
char str[] = "Test string";
/* es wird ein Char mehr benötigt für die Nullterminierung */
char str[6] = "12345";
/* dieser String wird in einem nur lesbarem Platz im Speicher geschrieben */
char *str = "Test string";
```

## String Nullterminierung

Ein "\0" befindet sich an jedem String Ende, die Terminierung wird vom Compiler automatisch hinzugefügt.

## Stringlänge

Der Befehl `size_t strlen(const char *)` gibt die Länge des Strings zurück.
**Achtung:** Der Befehl ignoriert die Nullterminierung!

```c
char str[] = "12345";
printf("strlen: %d", strlen(str));
```

**Output**

```code
strlen: 5
```

`sizeof` könnte auch verwendet werden. Da aber bei einer `char *str` Deklarierung nur die Größe des Zeigers und nicht die Stringlänge zurückgegeben wird, sollte darauf verzichtet werden.

```c
char str[] = "123456789";
char *str2 = "123456789";
printf("str strlen: %d\n", strlen(str));
printf("str sizeof: %d\n", sizeof(str));
printf("\n");
printf("str2 strlen: %d\n", strlen(str2));
printf("str2 sizeof: %d\n", sizeof(str2));
```

**Output**

```code
str strlen: 9
str sizeof: 10

str2 strlen: 9
str2 sizeof: 4
```

## Dynamisch Speicher allokieren für einen String

**Example**

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* set_string(char *str, const char *str_input) {
    char *tmp_str = strdup(str_input);  /* erstellt dynamisch eine kopie von str_input. Ein Pointer zur kopie wird zurück gegeben. */
    if (tmp_str == NULL) {  /* error handling */
        printf("error while memory allocation in set_string()\n");
        return NULL;
    }
    free(str); /* Falls Speicher für String schon verwendet worden ist, wieder frei geben. */
    return tmp_str;
}

int main(int argc, char **argv) {
    char *str = NULL;
    str = set_string(str, "Neuer String\n");
    printf("str: %s", str);
    str = set_string(str, "Zweiter String\n");
    printf("str: %s", str);
    free(str);
}
```

**Output**

```code
str: Neuer String
str: Zweiter String
```