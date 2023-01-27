# SQLITE DATENBANK IN PYTHON

Sqlite ist eine einfache Möglichkeit um Informationen in einer Datenbank zu speichern, ohne SQL, MariaDB oder andere Datenbankten auf dem System installieren zu müssen. `sqlite3` gehört zum Python Standart Package.

## Datenbank erstellen und öffnen

```python
import sqlite3

connection= sqlite3.connect("database_name.db")
```

Für eine In-Memory-Datenbank `":memory:"` als Datei angeben. Dann wird die Datenbank nur im RAM gespeichert.

## SQL Befehle ausführen

### Tabelle erstellen

Zum ausführen von SQL Befehlen wird ein Cursor benötigt.

```python
cursor = conn.cursor()
```

Mit execute können nun Befehle ausgeführt werden, wie Tabelle erstellen

```python
cursor.execute("""CREATE TABLE employees (
    firstname text
    lastname text
    age integer
    )""")

connection.commit()
```

Datenbank schließen

```python
connection.close()
```

### Daten in Tabelle schreiben

```python
command.execute("INSERT INTO employees VALUES  ('Dominik', 'Knoll', 32)")"
```

### Daten aus Tabelle lesen

```python
command.execute("SELECT * FROM employees WHERE lastname='Knoll')
print(command.fetchone()) # für einen employe
print(command.fetchall()) # für mehrere employees mit dem selben Nachnamen
```


