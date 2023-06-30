# Altium Designer

## Schaltplan-Design

### Shortcuts

- `[control] + [w]` place wire
- `[control]`  + `[line Maustaste]` move component with wires
- `[x]` oder `[y]` zum spiegeln
- `[J]`ump -> `[C]`omponent. Find a specific component

### Bauteil kopieren

- `[shift]` halten und rechte Maustaste gehalten an neue Stelle ziehen

### Name ändern von Net Label

- Rechte Maustaste auf Label
- `[n]` oder "Fi**n**d Similar Objects..."
- in Zeile Text, Auswahl auf *"Same"* stellen
  - rechts unten kann im Dropdown Menü der Suchradius eingestellt werden
- mit OK bestätigen
- im Properties Tab Net Name ändern
- Rechte Maustaste -> **C**lear Filter oder `[shift]` + `[c]` Filter löschen

### Bauteile bennenen

- **T**ools -> Annotation -> Annotate Schematics
- Update Changes List -> ...

### Schaltplan Symbol Updaten

- Symbol in .SchLib bearbeiten und speichern
- Tools -> Update From Library
- Hacken bei wird bei allen Symbolen gesetzt bei dennen es eine Änderung gab

## PCB-Design

### Shortcuts

- `[control] + [w]` place wire
- `[control]` + `[line Maustaste]` Komponenten bewegen mit Wires
- `[control]` + `[shift]` + `[Mausrad]` change layer and place via
- while routing `[shift]` + `[v]` lets you choose from a template
- `[control]` + `[click]` on net object. Highlighting the net.
- - danach Auswahl mit `[shift]` dazu, um mehrere Netze zu Highlighten
- `[g]` grid einstellen
- `[J]`ump -> `[C]`omponent. Find a specific component
- `[shift]` + `[s]` View mode ändern (Hilft wenn Platine nicht richtig angezeigt wird)

### 3D-Viewer

- mit `[2]` und `[3]` kann zwischen normaler und 3D Ansicht gewechselt werden
- `[shift]` + `[rechte Maustaste]` Platinen Ansicht drehen
- `[shift]` + `[F]` Platine drehen
- `[Mausrad]` Zoomen
- `[rechte Maustaste]` Ansicht bewegen

### Nullpunkt (Origin)

Nullpunkt kann unter `Edit->Origin->Set` versetzt werden. **Achtung** `Reset` Origin kann nicht rückgängig gemacht werden. 

Um den Bezugspunkt in Bezug zum aktuellen Nullpunkt zu verschieben am besten ein Kreis auf die neue Position mit einem beliebigen Layer setzen. Anschließend Kreis Markieren und Grid so einstellen das Mittelpunkt im Raster liegt. Mit Set Origin den Nullpunkt auf den Mittelpunkt vom Kreis setzten. Normalerweiße wird der Mittelpunkt eines Kreises automatisch eingefangen, es kann aber vorkommen dass ein anderer Layer über dem Kreis liegt. Um dass zu verhindern die anderen Layer ausschalten oder Kreis Layer auswählen.

## Footprints

### 3D-Model hinzufügen

Layer auswählen der für 3D-Modelle bestimmt ist, `Place->3D Body` stp oder step Datei auswählen und plazieren. Mit `[2]` und `[3]` Tasten kann Ansicht zwischen 2D und 3D gewechselt werden. Falls die Position nicht stimmt kann diese noch in den Propertys unter 3D Model Type angepasst werden.
