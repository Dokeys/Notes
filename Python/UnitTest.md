# UnitTest

Seinen eigenen Code zu testen bringt Sicherheit, Lesbarkeit und eine bessere Struktur in den eigenen Code. Die Implementierung benötigt aber viel Zeit, die sich nicht immer rechnet.

Tests in einem Ordner mit Namen `"tests/"` mit Modulname *test_(modulname).py* speichern.

## unittest

Unittest gehört zur Standart Library von Python. Test-Methoden müssen mit dem Namen *test_* starten.

```python
import unittest

class TestCalc(unittest.TestCase):
    def test_add(self):
        result = calc.add(10, 5)
        self.assertEqual(result, 15)
```

Test ausführen mit `$ python -m unittest test_module_name.py` oder `$ pytest`.

Zum auführen in IDE, zu Testmodul hinzufügen:

```python
if __name__ == '__main__':
    unittest.main()
```

### assert Methoden

| Method                                                                                                                                                       | Checks that            | New in |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------- | ------ |
| [`assertEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertEqual "unittest.TestCase.assertEqual")                         | `a == b`               |        |
| [`assertNotEqual(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotEqual "unittest.TestCase.assertNotEqual")                | `a != b`               |        |
| [`assertTrue(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertTrue "unittest.TestCase.assertTrue")                               | `bool(x) is True`      |        |
| [`assertFalse(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertFalse "unittest.TestCase.assertFalse")                            | `bool(x) is False`     |        |
| [`assertIs(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIs "unittest.TestCase.assertIs")                                  | `a is b`               | 3.1    |
| [`assertIsNot(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNot "unittest.TestCase.assertIsNot")                         | `a is not b`           | 3.1    |
| [`assertIsNone(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNone "unittest.TestCase.assertIsNone")                         | `x is None`            | 3.1    |
| [`assertIsNotNone(x)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsNotNone "unittest.TestCase.assertIsNotNone")                | `x is not None`        | 3.1    |
| [`assertIn(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIn "unittest.TestCase.assertIn")                                  | `a in b`               | 3.1    |
| [`assertNotIn(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotIn "unittest.TestCase.assertNotIn")                         | `a not in b`           | 3.1    |
| [`assertIsInstance(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertIsInstance "unittest.TestCase.assertIsInstance")          | `isinstance(a, b)`     | 3.2    |
| [`assertNotIsInstance(a, b)`](https://docs.python.org/3/library/unittest.html#unittest.TestCase.assertNotIsInstance "unittest.TestCase.assertNotIsInstance") | `not isinstance(a, b)` | 3.2    |

[unittest — Unit testing framework &#8212; Python 3.11.1 documentation](https://docs.python.org/3/library/unittest.html#unittest.TestCase.debug)

### assert Exception

`self.assertRaises(ValueError, Funktions-Name, Funktions-Parameter)`

```python
def test_no_dictionary_file(self) -> None:
    self.assertRaises(
        FileNotFoundError, read_dictionary, "model/tests/not_there.dict"
    )
```

```python
with self.assertRaises(ValueError):
    read_dictionary("model/tests/not_there.dict")
```

## pytest

pytest ist nicht im Standart Package und muss zusätzlich installiert werden. Es wird von vielen Entwicklern benutzt, da es einfacher zu händeln ist.

Pythest kann ohne Klasse und Import verwendet werden:

```python
def test_something() -> None:
    var = 1
    assert var == 1
```

### Coverage report

Ein Coverage report kann mit `$ pytest --cov` aufgerufen werden.

Für eine bessere Übersicht kann ein Html Coverage Report erstellt werden. Dieser wird mit `$ coverage html` erstellt. Anschließend befindet sich der Html Bericht unter htmlcov/ im Projektordner.

## assert Exceptions

```python
import pytest

def test_divide_by_zero():
    with pytest.raises(ZeroDivisionError):
        1 / 0
```

oder

```python
import pytest

def test_divide_by_zero():
    with pytest.raises(ZeroDivisionError, match='division by zero'):
        1 / 0
```
