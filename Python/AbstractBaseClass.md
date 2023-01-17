# ABC/ABSTRACT BASE CLASSES IN PYTHON

Eine abstrakte Base Klasse gibt vor, welche Methoden in der Unterklasse vorhanden sein müssen. Wird eine abstrakte Methode nicht implementiert, wird direkt bei der Instanziierung der Klasse ein Fehler geworfen.

Beispiel:

```python
from abc import ABC, abstractmethod

class Tier(ABC):
    @abstractmethod
    def lauf(self) -> None:
        pass

class Katze(Tier):
    def lauf(self) -> None:
        print("Katze läuft...")

class Hund(Tier):
    def lauf(self) -> None:
        print("Hund läuft...")

    def gib_laut(self) -> None:
        print("Wau")

minki = Katze()
oskar = Hund()
```

## Vergleich zu Protocol

Wird etwas nicht implementiert, tritt der Fehler schon bei der Instanziierung auf und nicht erst beim Aufruf, wie bei Protocol.

Die Implementierung der abstrakten Methoden in der Unterklasse wird erzwungen.

## Verwendung

Abstrakte Base Klassen gehören zu ihren Unterklassen, was mehr zu einer Klassen-Hierarchie gehört, die dann wieder in anderen Teilen des Programms verwendet wird.

Falls die Implementierung bestimmter Methoden erzwungen werden soll.
