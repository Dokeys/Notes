# KiCad SPICE Simulation

## Schaltplan erstellen

In KiCad können über den Schaltplaneditor Schaltungen Simuliert werden. Symbole für die Simulation findet man in der Simulation_SPICE Library. Standart Bauteile wie Widerstände usw. haben meistens auch schon Simulations Modelle hinterlegt. 

Zum Simulierten Schaltplan mit Simulations Modellen zeichen und `0` Symbol als 0V Reverenz hinzufügen.

## Wichtige Symbole

- `0` 0V Referenz Potential, muss für GND verwendet werden.
- `VDC` Spannungsquelle.

## Simulieren

Unter `Inspektion`->`Simulator...` wird die Simulations-Ansicht geöffnet.

Unter `Sim-Befehl` wird die Art der Simulation eingestellt. Um das Verhalten der Schaltung in Bezug auf Zeit zu sehen, müssen die gewünschten Einstellungen im Transiente Fenster vorgenommen werden.

### Beispiele

Beispiele von KiCad findet man unter diesem Verzeichnis: `C:\Program Files\KiCad\7.0\share\kicad\demos\simulation`

`v_i_sources` damit Simulation funktioniert, Noise Generatoren Schaltkreise (V9 und I9) entfernen und 0 Punkt setzen.

## TODO

- Zeitliche Simulation funktioniert nicht richtig, da Kondensator von anfang an 5V gespeichert hat.
