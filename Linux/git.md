# GIT

## Repostitory erstellen

Repostitory auf [www.github.com]() erstellen. Soll anschließend damit gearbeitet werden, muss es auf das Zielsystem geklont werden.

## Klonen

Damit ein vorhandenes oder neu erstelltes Repository auf dem Zielsystem erscheint muss es geclont werden:

```git
git clone https://github.com/Dokeys/Notes.git
```

## Dateien hinzufügen

```git
git add Ordner oder Datei
```

Es können auch mehrere Dateien und Ordner als Parameter übergeben werden.

## Status abfragen

```git
git status
```

## Repository updaten

Nachdem Dateien verändert wurden, muss erst das lokale Repository upgedatet werden.

commit mit allen neuen Dateien und Veränderungen aus Verzeichnis. 

```git
git commit
```

commit nur mit ausgewählten Ordnern oder Dateien

```git
git commit Ordner oder Datei
```

Es wird automatisch vim geöffnet und eine kurze Beschreibung kann hinzugefügt werden. Wird keine Beschreibung hinzugefügt, wird der commit abgebrochen.

Anschließend mit `push` das Remote-Repository mit dem lokalen synchronisieren.

```git
git push
```

## Diff

Aktuelles Verzeichnis mit main Branch vergleichen.

```git
$ git diff main 
```

## Branches

```git
$ git branch --list
  main
* newfeature
```

Branch wechseln:

```git
$ git checkout main
```

Neue branch erstellen:

```git
git branch neuer_branch_name
```

Branch löschen:

```git
git branch -d branch_name
```
