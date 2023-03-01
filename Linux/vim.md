# VIM

## Cursor bewegen

- `[h]` *links* 
- `[j]` *runter* 
- `[k]` *hoch* 
- `[l]` *rechts* 
- `[w]` *until the start of the next word, EXCLUDING its first character* 
- `[e]` *to the end of the current word, INCLUDING the last character* 
- `[b]` *until the end of the next word*
- `[0]` *Move the cursor to the beginning of the line*
- `[$]` *to the end of the line, INCLUDING the last character* 

## Line jumping

- `line number` + `G` oder `gg` *jump to line number*

## Input Mode

- `[i]` *put the cursor before the current position* 
- `[a]` *put the cursor after the current position* 
- `[o]` *put the cursor below the line* 
- `[O]` *puts the cursor above the line* 

## Edit Mode verlassen

`[control]` + `[c]` 

## Suchen

`/Suchword` oder `?Suchword`. Danach mit `[n]` zum nächsten Treffer springen und um oben zu suchen `[#]` drücken. \

## Löschen

- `[d]` + `[d]`*Zeile löschen* 
- `[d]` + `[w]` *ein Wort löschen* 
- `[d]` + `[2]` + `[w]` *zwei Wörter löschen* 

## Kopieren

- `[y]` + `[y]` 
- `["]` + `[+]` + `[y]` *in Zwischenablage kopieren* 

## Einfügen

- `[p]` + `[p]` 
- `["]` + `[+]` + `[p]` *aus Zwischenablage einfügen* 

## Ausschneiden

`[d]` + `["]` 

## Rückgängig

- `[u]` 
- `[control]` + `[r]` *Redo* 

## Buchstaben oder Wörter markieren

`[v]` 

## Öffne Datei unter Cursor

`[g]` + `[f]` 

## Öffne Datei unter Cursor in neuem Tab:

[strg+w] gf 

## Arbeiten mit Tabs

### Neuen Tab öffnen

- `:tab` Commando 
- `:tabnew name` 

### Bestehende Datei öffnen

`:tabedit Pfad` 

### Tabs wechseln

- :tabn :tabp 
- gt oder g([shift]t) 

### Tabs verschieben

:tabmove -2 oder :tabmove + 

## Zeilen anzeigen

`:set nu` 

## Auto completion

`[strg]` + `[p]` im Edit mode 

## Line breaking

- :set wrap 
- :set nowrap 

## Tabstop Abstand setzen

:set ts=4 

## Anschauen

- `[Control]` + `[f]` *Move forward one full screen* 
- `[Control]` + `[d]` *Move forward 1/2 screen* 
- `[Control]` + `[b]` *Move back one full screen* 
- `[Control]` + `[u]` *Move back (up) 1/2 screen* 

## Von VIM aus compilieren

Eine Makefile muss vorhanden sein: 

- `:make` 

Um Make Fehler anzuschauen: 

- `:copen` 

Mit `:!Befehl `wird ein ganz normalaes Bash Comando ausgeführt. So kann zum Beispiel ein Programm gestartet werden `:!./program` 

## Marks

- `[m]` + `[Buchstabe]` *set marker* 

- `[']` + `[Buchstabe]` *go to marker* 
  Buchstabe klein local Mark, Buchstabe groß global Mark 

Am besten max. Vier Marker verwenden nach wichtigkeit im Kopf sortiert. R E W Q Finger von linker Hand. 

## Zu Funktion gehen

`[g]` + `[*]` 

## .vimrc Settings

```
set nu
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
```

## Links

https://www.geeksforgeeks.org/getting-started-with-vim-editor-in-linux/