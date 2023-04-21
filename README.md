
# Football-Dataprocessing

Dataprocessing opdracht Simon - 4588169


## Setup Guide

### Back End
1. Installeer XAMP en start apache en mysql

2. Voeg de world_cup_2022 database toe in MySQL met behulp van world_cup_2022.sql bestand (Maak eerst de database aan met de naam "world_cup_2022").

3. Open het Java project in Intellij en voeg het volgende toe aan application.properties:
    ```
	spring.jpa.hibernate.ddl-auto=update
    * spring.datasource.url=jdbc:mysql://${MYSQL_HOST:localhost}:3306/world_cup_2022
    * spring.datasource.username=root
    * spring.datasource.password=
	spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
    ```
Het kan zijn dat regels waar een * achter zit gewijzigd moeten worden naar de instellingen van het gebruikte apparaat.

4. Als er errors zijn dan kan het zijn dat de maven dependencies opnieuw geinstallerd moet worden.

5. Als er geen errors zijn dan kan de applicatie gestart worden en met postman requests uitgevoerd worden.

###
Front End

1. Ga in cmd naar de locatie van de voetbal-dataprocessing-frontend

2. Voer "npm i" in de cmd in

3. Voer "code ." in om de code te zien

4. Voer "npm start " in om de applicatie te starten (visualisatie is alleen te zien als xamp en spring boot api aan staan)

## User Guide

### Endpoints
De endpoints zijn:

- localhost:8080/goalscorers
- localhost:8080/results
- localhost:8080/shootouts
- localhost:8080/json
- localhost:8080/xml

De endpoints kunnen met deze calls geroepen worden:

- GET ALL: localhost:8080/{endpoint}
- GET BY ID: localhost:8080/{endpoint}/{id}
- POST: localhost:8080/json
- POST: localhost:8080/xml
- PUT: localhost:8080/{endpoint}/{id}
- DELETE: localhost:8080/{endpoint}/{id}

## Posts en Puts voorbeelden:

### Goalscorers

json
```
{
    "goalscorer_id": 1,
    "date": "2022-11-20",
    "home_team": "Qatar",
    "away_team": "Ecuador",
    "team": "Ecuador",
    "scorer": "Enner Valencia",
    "minute": 16,
    "own_goal": false,
    "penalty": true
}
```

XML
```
<goalscorer>
    <goalscorer_id>1</goalscorer_id>
    <date>2022-11-20</date>
    <home_team>Qatar</home_team>
    <away_team>Ecuador</away_team>
    <team>Ecuador</team>
    <scorer>Enner Valencia</scorer>
    <minute>55</minute>
    <own_goal>false</own_goal>
    <penalty>true</penalty>
</goalscorer>
```
### Results

json
```
{
    "result_id": 1,
    "date": "2022-11-20",
    "home_team": "Qatar",
    "away_team": "Ecuador",
    "home_score": 0,
    "away_score": 2,
    "tournament": "FIFA World Cup",
    "city": "Al Khor",
    "country": "Qatar",
    "neutral": false
}
```

XML
```
<result>
    <result_id>1</result_id>
    <date>2022-11-20</date>
    <home_team>Qatar</home_team>
    <away_team>Ecuador</away_team>
    <home_score>0</home_score>
    <away_score>2</away_score>
    <tournament>FIFA World Cup</tournament>
    <city>Al Khor</city>
    <country>Qatar</country>
    <neutral>false</neutral>
</result>
```
### Shootouts

json
```
{
    "shootout_id": 1,
    "date": "2022-12-05",
    "home_team": "Japan",
    "away_team": "Croatia",
    "winner": "Croatia"
}
```

XML
```
<shootout>
    <shootout_id>1</shootout_id>
    <date>2022-12-05</date>
    <home_team>Japan</home_team>
    <away_team>Croatia</away_team>
    <winner>Croatia</winner>
</shootout>
```
