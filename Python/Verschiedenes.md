# VERSCHIEDENES FÜR PYTHON

## Modul mit pip installieren

```
py -m pip install modulname
```

## Farbiger Consolen Output

```python
from termcolor import colored

def write_something_in_red(text: str) -> None:
    print(colored(text, "red"))
```
