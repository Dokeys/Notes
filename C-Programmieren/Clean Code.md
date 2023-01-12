# CLEAN CODE IN C

## const

### Konstanter Zeiger als Funktions-Parameter

const in einem Zeiger-Funktions-Parameter definiert dass der Inhalt des Zeigers nicht verendert werden kann.

**Nicht möglich:**

```c
void function(const int *p) {
    *p = 66;  /* error: assignment of read-only location '*p' */
}
```

`const` in Funktions-Parameter immer dann verwänden wenn der Inhalt auf Zeiger-Location nicht verändert wird. Das sorgt für bessere lesbarkeit im Code und für weniger Fehler.

### Konstante Variable

Variablen die im laufe des Programms nicht geändert werden kann.

```c
const float MWST_FAKTOR = 0.19;  /* konstante Variable */
```

`const` sollte auch verwendet werden um Konstanten zu deklarieren. Es ist sicherer als `#define` da es dem Compiler Type Checking ermöglicht.

Wird die Konstante in einer Header Datei deklariert muss noch `static` davor geschrieben werden, sonst kommt es zu einem "multiple defintion" Fehler.

```c
#ifndef KONSTANTEN_H_
#define KONSTANTEN_H_

static const float MWST_FAKTOR = 0.19;

#endif  /* KONSTANTEN_H_ */
```