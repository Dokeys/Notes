# DATEIEN IN PYTHON

## Datei öffnen

Datei, wenn möglich mit `with` Schleife öffnen.

```python
with open("path/to/file.txt", "r", encoding="utf-8") as file:
```

- `"r"` *von Datei lesen. Falls Datei nicht existiert, kommt ein* `"FileNotFoundError"` 
- `"w"` *in neu erzeugte Datei schreiben*
- `"a"` *anhängen*
- `"x"` *in neu erzeugte Datei schreiben. Falls Datei existiert, kommt ein* `"FileExistsError"`  
- `"b"` *Binary Datei*

Bei `open` kann noch optional der Parameter für die Codierung hinzugefügt werden, mit z.B.:  `encoding="utf-8"`. Dies sollte immer gemacht werden, um Fehler zu vermeiden.

## Von Datei lesen

Den ganzen Inhalt lesen und in Variable schreiben

```python
    complete_file_content = file.read()
    print(complete_file_content )
```

Zeile für Zeile lesen und ausgeben

```python
    line = file.readline()
    while line:
        print(line)
        line = file.readline()
```

Alle Zeilen lesen und in eine Liste schreiben

```python
    lines = file.readlines()
    for line in lines:
        print(line)
```

## In Dateien schreiben

Nachdem eine Datei mit `"w"`, `"a"` oder `"x"` geöffnet wurde, kann mit dem Befehl `file.write(str)` oder `file.writelines(list[str])` in die Datei geschrieben werden.

## Dateien in Ordner auflisten

```python
import os

for file in os.listdir():
    print(file)
```

Wenn kein Parameter übergeben wird, wird der aktuelle Pfad ausgegeben. Es kann aber auch ein anderer Pfad als Parameter übergeben werden.
