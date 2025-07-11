# Schritte zum Import der Datenbank "pagila"

## Hinweis

- für einen schnellen **Import** ist die Verwendung **auf dem PostgreSQL-Server empfohlen**, statt einem DB-Client wie DBeaver
- mehr zu *pagila* findest du im [GitHub Projekt](https://github.com/devrimgunduz/pagila)

## notwendige Dateien herunterladen

```bash
wget https://raw.githubusercontent.com/devrimgunduz/pagila/refs/heads/master/pagila-schema.sql
wget https://raw.githubusercontent.com/devrimgunduz/pagila/refs/heads/master/pagila-data.sql
```

## Import ausführen

```bash
psql -c "CREATE DATABASE pagila;"
psql -d pagila -f pagila-schema.sql
psql -d pagila -f pagila-data.sql
```

## Verifizierung

- über einen Client oder `psql` sollte man sich dann zu pagila verbinden können
- und im Schema diverse Tabellen, Views und andere Elemente sehen können
