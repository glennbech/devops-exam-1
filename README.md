# PGR301 Eksamen - DevOps i skyen - Kandidat 2009

## Oppgave 1
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

I tillegg må du endre ´´´--stack name´´´ på linje 24 i task1.yaml til noe unikt. Denne filen ligger under
.github/workflows/task1.yaml

Da skal Github Actions fungere som det skal hos deg!

## Oppgave 2

* Bruk følgene kommandoer for å starte en docker container:

```shell
docker build -t ppe . 
docker run -p 8080:8080 -e AWS_ACCESS_KEY_ID=XXX -e AWS_SECRET_ACCESS_KEY=YYY -e BUCKET_NAME=kjellsimagebucket ppe
```

Gitt at Github Actions fungerte på forrige oppgave skal denne også fungere uten tiltak.

## Oppgave 3

Gitt at Github Actions fungerte på forrige oppgave skal denne også fungere uten tiltak.

## Oppgave 4

Laget et dashboard i terraform og en MetricConfig klasse, men kommer ikke lengre denne gang

## Oppgave 5

Ligger i mappen Task-5