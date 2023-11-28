# PGR301 Eksamen - DevOps i skyen - Kandidat 2009

## Oppgave 1

### Beskrivelse av arbeid gjort

### 1A

Jeg fjernet hardkodingen av bucket name og byttet den ut med os.environ.get 
slik at en kan kjøre programmet og angi bøttenavnet når du vil kjøre programmet.
Dette gjør at en kan sjekke forskjellige bøtter uten å måtte endre på koden.

Jeg setter task1.yaml som mit github acions fil og passer på at jeg er under
riktig mappe altså ./kjell og at github vil ha tilgang til alle de teknologiene
som er i bruk som; SAM og python, samt checkout for å hente koden fra github repoet.
I tillegg har jeg lagt med configure-aws-credentials for å ha tilgang til AWS 
gjennom github. Så legger jeg inn linjer for å angi AWS credentials, for å angi
aws-access-id og aws-secret-access-key velger jeg å bruke Github secrets av 
sikkerhetsgrunner. Jeg valgte å hardkode inn aws-region, da jeg ikke så det
viktig å ha dette skjult.

I slutten av yaml filen kjører jeg sam build for å bygge koden og legger til
en if statement etter det for å sjekke at den gjelende git push-en er på main
branch, og hvis den er det deployer jeg sam applikasjonen med et definert
source og target.

## 1B

Først starter jeg med å spesifisere hva slags type applikasjon bilde skal
bygges som, som er Python og jeg velger å bruke /app som mappen det skal
bygges i. 

Deretter kopierer jeg applikajsonen og requirements.txt inn
i /app/ mappen.

Etter det kjører jeg pip install for å laste ned nødvendige dependencies
som er definert i requirements.txt.

Så definerer jeg de nødvendige miljøvariablene AWS_ACCESS_KEY_ID og
AWS_SECRET_ACCESS_KEY og setter dem til tomme strings da disse skal
bli satt når en kjører det byggde bilde med kommandoer.

Til slutt setter jeg opp en kommando for å kjøre den bygde applikasjonen
og definerer hva slags kode det er. CMD["python", "app.py"]

### For at alt skal funke når du fork-er repo-et

For å få programmet til å kjøre på din Github Actions til å kjøre på din egen
konto må du legge til repository secrets som skal hete. 
Hvis du er i tvil på hvor du legger det til er det under 
Settings->Secrets and variables->Actions->New repository secret

Navn på de to nødvendig secret-ene:

```shell
AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY
```

Hver av disse skal være et Actions Secret Name og du må fylle ut selve secret-en
med dine egene "credentials". Disse finner du inne i din egen AWS console ved å
trykke på:
Brukeren din oppe i høyre hjørnet -> Security Credential
Da skal det bare være å scrolle ned til Access keys og trykke "create access key"
hvis du ikke allerede har en tilgjengelig.

Hvis aws brukeren din er på annnen server enn eu-west-1 må du inn i .github/workflows/task1.yaml 
og endre aws-region til din region.

I tillegg må du endre ´´´--stack name´´´ på linje 24 i task1.yaml til noe unikt. Bytt også ```aws-region```
hvis eu-west-1 ikke er riktig. Denne filen ligger under .github/workflows/task1.yaml p

Da skal Github Actions fungere som det skal hos deg!


## Oppgave 2

### Beskrivelse av arbeid gjort

## 2A

Først legger jeg til hva docker trenger for å bygge bildet, i dette tilfellet
bruker jeg maven:3.6-jdk-11.  Så velger jeg hviken mappe alt skal havne i når
det er bygget og kaller den /app. Så kopierer jeg pom.xml og kilde koden inn
i /app for å så kjøre mvn package for å bygge applikasjonen.

Etter dette setter jeg opp miljøvariablene som skal hentes ut fra input i 
terminalen når en kjører dockerfilen.

For mitt andre steg velger jeg å bruke adoptopenjdk/openjdk11:alpine-slim 
for å bygge et mindere bilde og jeg kopierer det bildet fra /app/target, 
som ble bygget under det første steget. For å så velge hvor det bildet
fra steg to skal havne; /app/application.jar

Til slutt ekponerer jeg port 8080, for å dokumentere hvilken port som er
ment til å brukes og spesifiserer hvilket jar fil som skal kjøres med java.

## 2B



### Kommandoer for å starte en docker container
```shell
docker build -t ppe . 
docker run -p 8080:8080 -e AWS_ACCESS_KEY_ID=XXX -e AWS_SECRET_ACCESS_KEY=YYY -e BUCKET_NAME=kjellsimagebucket ppe
```

### For at alt skal funke når du fork-er repo-et
Gitt at Github Actions fungerte på forrige oppgave skal denne også fungere uten tiltak.

## Oppgave 3

Gitt at Github Actions fungerte på forrige oppgave skal denne også fungere uten tiltak.

## Oppgave 4

Laget et dashboard i terraform og en MetricConfig klasse, men kommer ikke lengre denne gang

## Oppgave 5

Ligger i mappen Task-5
