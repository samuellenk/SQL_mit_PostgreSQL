# Schritte zum Import der Datenbank "pagila"

- notwendige Dateien liegen im Archiv [pagila-master.zip](https://github.com/samuellenk/SQL_mit_PostrgeSQL/blob/main/pagila/pagila-master.zip)

## Vorgehen

1. ```psql -c "CREATE DATABASE pagila;"```
2. ```psql -d pagila -f pagila-schema.sql```
3. ```psql -d pagila -f pagila-data.sql```

## weitere Infos zu "pagila"

- findest du [hier](https://github.com/devrimgunduz/pagila)

