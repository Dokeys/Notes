# SVN

## Bestehendes Repository importieren

Ein bestehendes Repository wird mit checkout importiert.

Unter URL of repository wird der Pfad oder die URL angegeben. Für Checkout directory einen neuen Ordner anlegen.

```
 checkout URL[@REV]... [PATH]
```

## Glossar

- **Trunk** *neustes Repository auf dem gearbeitet wird.*
- **Tags** *gespeicherte Versionsstände, die nicht mehr geändert werden sollten.*
- **Branches** *auskopplung vom Trunk, bei dem die Commits keinen Einfluss  Trunk hat.*
- **Externals** *Verlinkung in Repository auf anderes Repository*

# SVN mit Torteuise

## Dateien verschieben

Dateien mit rechts Klick gehalten verschieben. Beim los lassen geht Kontexmenü mit SVN Funktionen auf.

## Repo-Browser

Live-Ansicht auf Repository ohne es auschecken zu müssen. Damit können z.B. einzelne Dateien einfach auf den Computer kopiert werden.

Oben rechts könnten auch andere Revisionen ausgewählt werden.

## Mergen

Falls es einen Konfikt gibt muss Repository geupdatet werden. Nach dem Update sollte die Datei automatisch gemerched werden (falls ein anderer Teil in der Datei bearbeited wurde). Danach kann die zusammengeführte Datei commited werden.

### Bei mehreren Konflikten

Mit Resolve kann Konflikt Dialog aufgerufen werden. Hier wird dann entschieden welche Änderung in den aktuellen commit übernommen wird.

## Revert

Mit revert wird eine geänderte Datei überschrieben, mit der aktuellen Datei aus dem Trunk.

## Locking

Binäre Dateien können gelockt werden damit Änderungen nur von einer Person geändert werden können.
