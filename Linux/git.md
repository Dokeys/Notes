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
git log
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

### Commit/Merge rückgängig machen

```git
git reset commit_name
```

mit `git log` kann die Historie angeschaut werden.

## Diff

Aktuelles Verzeichnis mit main Branch vergleichen.

```git
$ git diff main 
```

## Branches

Listet die lokal gespeichterten Branches:

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

Lokale branch löschen:

```git
git branch -d branch_name
```

### Pull-Request von Branch auf main

Lokales Repository updaten:

```git
git fetch origin
```

main Repository in Branch mergen:

```git
git merge origin/main
```

Falls keine Konflikte vorhanden sind, Branch auf main Pushen:

```git
git push origin/main branch-name
```

## Stash

Mit stash können Änderungen lokal gespeichert und später wieder abgerufen werden.

Eine Änderung "bunkern":

```git
git stash save "kurze Beschreibung"
```

Stahes listen:

```git
git stash list
```

Stash auswählen:

```git
git stash apply "stash@{Stash Nummer}"
```

Alle Stashes löschen:

```git
git stash clear
```
