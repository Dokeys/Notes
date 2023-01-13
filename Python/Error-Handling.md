# ERROR HANDLING IN PYTHON

## Raise Error/Exception

Mit `raise` kann eine Exeption geworfen werden. Die aktuell ausgeführte Funktion wird abgebrochen. Wird die Exeption nicht abgefangen wird das Program an dieser Stelle beendet.

```python
class MyError(Exception):
    pass

def function_that_raise_an_error() -> None:
    print("Error function")
    raise MyError("my error message")
    print("This function is never executed")
```

**Output:**

```
Error function
Traceback (most recent call last):
  File "c:\Users\Dominik\Development\VSCode\PythonProjekte\ErrorTest\main.py", line 15, in <module>
    function_that_raise_an_error()
  File "c:\Users\Dominik\Development\VSCode\PythonProjekte\ErrorTest\main.py", line 10, in function_that_raise_an_error        
    raise MyError("my error message")
MyError: my error message
```

Damit nicht eine eigene Exception Klasse erstellt werden muss, kann eine schon vorhandene Klasse verwendet werden. Python kommt schon mit folgenden Exeptions:
[Built-in Exceptions; Python 3.11.1 documentation](https://docs.python.org/3/library/exceptions.html)

## Catch Error/Exception

`try` verhindert dass das Program bei einer Exception nicht beendet wird. Der `except` Block wird nur ausgeführt wenn im try Block eine Exception geworfen wird.

```python
    try:
        function_that_raise_an_error()
    except Exception as e:
        print("do something with the exception")
        print(e)
```

**Output:**

```
Error function
do something with the exception
my error message
```

Um den Code lesbarer zu machen oder zwischen verschiedenen Exceptions unterschiedlich zu agieren, können die Exceptions genauer abgegeben werden. 

```python
    except MyError as e:
        print("do something with the exception")
        print(e)
    except MyErrorTwo:
        print("Another exception that can come from function")
```

In einem `except` Block:

```python
    except (MyError, MyErrorTwo) as e:
        print("do something with the exception")
        print(e)
```

## Häufige Exceptions

- `FileNotFoundError` *bei open() zum lesen und schreiben von Dateien*
