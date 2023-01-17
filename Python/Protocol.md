# PROTOCOL IN PYTHON

Mit Protocol wird ein Interface implementiert, dass definiert, welche Funktionen von dem Teil des Programms, dass sich auf das Interface bezieht, benötigt werden. In der Protocol-Klasse wird nur definiert, welche Methoden oder Attribute benötigt werden. Die Methode, Funktion oder Klasse, die mit der Protocol-Klasse arbeitet, muss nur über die dort angegebenen Attribute oder Methoden Bescheid wissen. Protokol limitiert bestimmte Zugriffe, so werden Abhängigkeiten verringert.

## Beispiel

```python
from typing import Protocol

class Bannana:
    def __init__(self, name: str, quantitiy: int, price: float) -> None:
        self.name = name
        self.quantity = quantitiy
        self.price = price

class Apple:
    def __init__(self, name: str, quantitiy: int, price: float, variety: str) -> None:
        self.name = name
        self.quantity = quantitiy
        self.price = price
        self.variety = variety

# Protocol prototype
class Product(Protocol):
    quantity: int
    price: float

    def a_method(self, number: int) -> None:
        """method protocol"""


# the function attribute works with the Bannana and Apple class
def calculate_product_price(product: Product) -> float:
    return product.price * product.quantity


apples = Apple("Apple", 20, 1.2, "Santana")
bannanas = Bannana("Bannana", 10, 0.80)

apples_price = calculate_product_price(apples)
print(f"{apples.name} price is {apples_price} €")

bannanas_price = calculate_product_price(bannanas)
print(f"{bannanas.name} price is {bannanas_price} €")   
```

## Vergleich zu abstracten Base Klassen

Die Klassen benötigten keine abstrakte Hauptklasse mehr. Die Klasse ist also nicht mehr abhängig anderen Teil des Programms, das mit der Klasse arbeitet.
Der Teil des Programms, das mit dem Protocol arbeitet, muss nur über die Parts Bescheid wissen, die im Protocol implementiert wurden.
Wird etwas nicht implementiert, tritt der Fehler erst beim Aufruf und nicht schon bei der Instanziierung auf.

Die Implementierung der abstrakten Methoden wird nicht erzwungen.

## Verwendung

Protocols gehören mehr zu dem Teil des Programms, das mit den Klassen arbeitet.
