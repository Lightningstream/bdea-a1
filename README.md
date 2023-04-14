# bdea-a1
## Installation
Beispiel:
```
docker-compose build --progess=plain
docker exec -it {container-name-mongo-db} bash
mongoimport --username root --authenticationDatabase admin --db test --collection video_games --file video_games.json --jsonArray
## Danach Passwort für die Datenbank eingeben
```
Zeppelin interpreter für mongo db einrichten:
```
docker inspect {container-mongo-db}
IpAddress heraussuchen
```
in Appache Zeppelin oben rechts -> Interpreter -> mongodb suchen:
- mongo.shell.path: mongosh
- mongo.server.host: Ip-Addresse des Mongo-containers
- mongo.server.database: test
- mongo.server.authenticationDatabase: admin
- mongo.server.username: root
- mongo.server.password: example 

Danach auf Zeppelin klicken:
- import note -> Select JSON File/IPYNB File -> notebook_staubach.zpln auswählen

Danach run all paragraphs

