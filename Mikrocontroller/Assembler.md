# Assembler

- Program Counter - *Zeiger auf die Stelle die momentan im Code ausgeführt wird*

- Stack Pointer - *Zeigt auf die Stelle im Speicher wo der letzte Stack Inhalt gespeichtert wurde*

- Accumulator - *Register für Rechenbefehle (normalerweiße mit der ALU verbunden)*

## Typische Assembler Befehle

Diese Befehle sind abstrakt gehalten und können sich je nach Prozessor unterscheiden.

- **nop** - *No Operation (Verbraucht mit den meisten CPUs ein Prozessor-Zyklus)*

- **inc** x / **dec** x - *Increment / decrement (Inkrementiert oder dekrementiert ein Register oder Speicheradresse, abhängig vom Befehlssatz kann manchmal auch ein Wert mit angegeben werden, sodass um mehr wie eins in- oder dekrementiert werden kann)*

- **mov** dst, src - *Copy data (Kopiert Daten von src zu dst)*

- **ld** reg, src - *Load data into a register (Kopiert Daten von src in ein register, damit Rechen-Operationen direkt im Register gemacht werden)*

- **add**/**sub** reg, src - *Add / subtract (Addiert oder subtrahiert src mit Register)*

- **and**/**or** reg, src - *And/or (Führt eine Logische Bit Opertation aus)*

- **cmp** dst, src - *Compare (Vergleicht und setzt Flags in Registern(z.B. das Zero Flag) abhänig vom Ergebnis)*

- **jmp** addr / **jmp** z, addr - *Jump/Conditional  Jump (Spring zu einer angegebenen Adresse. Bedingter Sprung wird nur ausgeführt wenn bestimmte Flags gesetzt sind, wie z.B. das Zero Flag)*

- **call** addr / **ret** - *Call/Return (Funktionsaufruf) *

- Label **:** - *Label (Repräsentiert eine Speicheradresse)*

- **#** Zahl - *Zahlen werden im Code mit einer Raute maktiert*

-  **$** Speicheradresse - *Speicheradressen werden mit einem Dollarzeichen angegeben.*


