# PGR301 Eksamen - DevOps i skyen - Kandidat 2009

## Oppgave 1
For å få programmet til å kjøre på din Github Actions til å kjøre på din egen
konto må du legge til repository secrets som skal hete. 
Hvis du er i tvil på hvor du legger det til er det under 
Settings->Secrets and variables->Actions->New repository secret

Navn på de to nødvendig secret-ene:
´´´
AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY
´´´

Hver av disse skal være et Actions Secret Name og du må fylle ut selve secret-en
med dine egene "credentials". Disse finner du inne i din egen AWS console ved å
trykke på:
Brukeren din oppe i høyre hjørnet -> Security Credential
Da skal det bare være å scrolle ned til Access keys og trykke "create access key"
hvis du ikke allerede har en tilgjengelig.

Da skal Github Actions fungere som det skal hos deg!

## Oppgave 2

* Bruk følgene kommandoer for å starte en docker container:

```shell
docker build -t ppe . 
docker run -p 8080:8080 -e AWS_ACCESS_KEY_ID=XXX -e AWS_SECRET_ACCESS_KEY=YYY -e BUCKET_NAME=kjellsimagebucket ppe
```

Gitt at Github Actions fungerte på forrige oppgave skal denne også fungere uten tiltak.

## Oppgave 3

Gitt at din AWS ID er den sammme som min; 244530008913, er det ingenting du trenger å forandre.
Jeg antar at du har den samme da Github Actions ikke hadde fungert i Oppgave 2 hvis ikke, og annet
er ikke spesifisert noe ang dette i oppgaven.

## Oppgave 4

## Oppgave 5

Ligger i mappen Task5