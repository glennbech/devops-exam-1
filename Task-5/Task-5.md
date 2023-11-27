# Oppgave 5

## A

Kontinueling integrasjon handler om at du ikke lager alt på en gang, men heller lager feks. applikasjonen din bit for bit. Ved å lage prosjekter på denne
måten vil det være lett å teste at alt nytt som legges til fungerer og det vil gjøre det lettere å se hvilken del av prosjektet som skaper eventuelle konflikter.
Dette gjør det lettere for utviklerene, da det kan være vanskelig å finne ut av problemer når du ikke er helt sikker på hvilke del av prosjektet som feiler når
en feks. legger til halve prosjektet i en commit.

Fordelene med CI er som tidligere nevt at prossessen til prosjektet går mye glattere. Selv om det kan føles ut som du bruker lengre tid på å gjøre mindre er CI en
fordel da en vil ikke ende opp med å stange i et stort problem på samme måte som en gjør uten det. Kodekvaliteten er høyere med CI da når en jobber på denne måtem 
er det vanlig å ha/lage en form for automatiserte tester som kjører for vær del av prosjektet. Dette gjør at når en legger til ny funksjonalitet vil du få klar 
feedback på om det crasher med tidligere funksjonalitet som sparer en for verdifull tid som hadde blitt brukt på problemsøking senere uten CI. I tillegg ved under
CI vil det være lettere å ta alle småfeilene kontinuelig og kvaliteten på prosjektet vil være bedre av denne grunn.

I prakis ved kontinuelig integrasjon på Github er det vanlig at hver utvikler har sin egen branch der de vil utvikler ny funskjonalitet, da en ikke vil ha kode
som ikke er 100% på main brach i denne type arbeidsforhold. Hver utvilker pusher ofte til sin branch med commit meldinger som forklarer. Dette gjør det lette for 
de andre utviklerene å hjelpe til om det skulle trengs. En vil integrere med main-branchen ofte i form av pull-requests og lage tester for koden en har skrevet, 
her er det fint å bruke Github Actions da det er veldig oversiktlig for resten av teamet å kunne se at testene kjører inne på Github uten å måtte laste ned koden
for å sjekke. I pull-request-stadiet har andre utviklere mulighet til å kommentere og gi tilbakemelding som er verdifult da en ikke alltid klarer å finne de beste
løsningene på egenhånd. Da vil det være mulig å endre på koden før en slår sammen koden med main brach. Når alt dette er gjennomført er det bare å "merge-e" med 
main brach og starte denne workflowen fra begynnelsen igjen.


## B1

Et SCRUM prosjekt skal bruke iterativ utvikling, altså prosjektet skal bestå av flere mindre utviklingsrunder som vi kaller for Sprints. En sprint består typsik
av oppbygging av backlog og spint-planlegging, daglige SCRUM-møter og på slutten av uka har en et sprint review og et sprint retrospective.

I et SCRUM prosjekt har en forskjellige roller som definerer hva slags oppgaver en har. Vi har en SCRUM-master som har ansvar med å hjelpe teamet å bruke SCRUM
prinsippene, i tillegg vil denne personen ha ansvar for å styre/ha kontrollen på de forksjellige møtene som holdes igjennom en typisk SCRUM sprint. Vi har også 
en produkteier som er personen som komuniserer kravene og forventingene (til feks. bedriften du jobber med) til SCRUM-master. Produkteier gir også vanligvis
en prioiteringsliste der de formidler hva som er mest viktig å få til. Til sist har vi utviklings-teamet som er de som er anvarlige for å utføre oppgavene for
å jobbe seg igjennom produkt-backlog-en.

Sprintplanleggingen er et møte på starten av en sprint der SCRUM-master og utviklings-teamet plukker ut oppgaver fra backlog-en, da den skal være sortert i en
prioritert rekkefølge, for å planlegge hva som er oppnålig i den kommende sprint-en.

Daglige SCRUM-møter er et møte der utviklings-teamet snakker sammen om hva de har jobbet med, oppnådd eller ikke fått til i løpet av dagen. Samt skal hvert 
medlem også snakke om hva planen deres er videre for morgendagen (gitt at møtet er på slutten av dagen, noe det ikke trenger å være).

Sprint-review er den lengre versjonen av det dagelige SCRUM-møtet, her snakker utviklings-teamet og SCRUM-master om hva som er oppnådd iløpet av sprinten og 
evt. problemer/tilbakeslag som har oppstått.

Sprint-retrospective er også et møtet på slutten av sprinten der SCRUM-master og utviklings-teamet drøfter arbeidsprossesen fra den utførte sprinten og prøver
å identifisere områder der det kan forbedres som kan taes med videre til de neste sprintene.

En av hovedstyrkene til SCRUM-metodikken er hvor fleksibel en er under prossessen, sprintene skal absolutt ikke var lengre enn en månded og det vil da i værste
fall ikke ta lengre enn 4uker før teamet kan pivitere. Disse sprintene er en kort arbeidsperiode der en alltid ha et mål for hver sprint, dette kan oppstå som
motiverende for alle partene i SCRUM prosjektet. I tillegg er det posetivt at en alltid har møter der en snakker om arbeidet som blir gjort, da dette kan hjelpe
å skape bedre kommunikasjon i teamet og en vil få tilbakemelding eller mulighet til å forandre på prossesen etter hver sprint.

På den andre siden kan det være vanskelig å sette i gang for et team som aldri har jobbet sammen før, da du må bygge opp laget samtidig som du prøver å jobbe med
prosjektet. Det kan også spesielt bli vanskelig hvis det blir "for mange kokker", da det er vanskelig for medlemmer av teamet å få å med seg hva som skjer rundt
en og en vil miste "team-følsen"/sammarbeidet som er viktig for å ha god kommunikasjon. I tillegg til dette så må en ha en produkteier som er hands-on, som ikke 
alltid er det de ønsker. Uten det er det vanskelig for SCRUM-master å teamet å ha en glatt sprint-planlegging som vil prege alle sprintene og ting vil ta lengre 
tid da teamet må gjøre opp for mangelen av en backlog.


## B2

Vi kan dele opp i fem hovedprinsipper når en tenker på integrasjon av utvikling og drift. Under hvert punkt nevner jeg også styrkene til de forskjellige punktene.

Sammarbeid; er en ekstremt viktig del av DevOps prinsippene, så viktig at det er det navnet er bygget opp ifra da Dev står for development og Ops for Operations.
Her er hele målet at istedet for å jobbe mot hverandre og skylde problemene på hverandre må utviklerene og bedriften jobbe sammen for å komme fram til målet sitt.

Automatisering; er et punkt DevOps lener seg i stor grad på. Vi trenger å bruke forskjellige verktøy for å hjelpe oss å gjøre prossesene våre som testing og 
kompilering av prosjekter automatiserte for å hjelpe utviklerene med å spare tid. Når vi bruker disse verktøyene vil det også hjelpe med å gjøre marginen for feil
mindre da vi fjerner den manuelle eller heller menneskelige faktoren. 

Kontinuelig integrasjon og leveranse; altså CI og CD. Dette punktet omgår å øke kodekvaliteten ved å integrere koden ofte for å minimere feil og igjennom CD vil
en oppnå at koden blir testet gjennom automatisering.

Overvåknign og tilbakemelding; er vikitg i DevOps for å kunne monitorere prosjektet i sanntid. Ved å implimentere et overvåkningssystem med en form for logging
som tilbakemelding vil en sikre at eventuelle feil som oppstår når systemet kjører kan håndteres raskere, da du vil få en rekke nyttige feilmeldinger å jobbe med
en kan implimentere varsling i overvåkningen. Det gjør hvis systemet går ned får en satt igang med feilsøkingen.

Skalering; som viser til at viktigheten av å benytte mikrotjenester i prosjektet sitt da systemet vil være lettere å skalere når ikke all funksjonaliteten er 
avhenging av at alt annet i systemet må fungere. I tillegg øker det fleksibiliteten til systemet og det vil også være nyttig å ta i bruk en skybasert 
infrastruktur for å enkelt ha mulighet til å utvide systemet sitt uten å få en bottle-neck pga. mangel på hardware lokalt, skybaserte tjenester vil som regel lett
gi deg tilgang til å klikke på noen få knapper for å utvide kapasiteten din.

Utfordringene til DevOps kan være forskjellige, det kommer ann på utganspunktet til bedriften. Hvis en har en bedrift som har gjort ting på samme måte, med samme 
utvikler i årevis kan det være krevene å få alle over på DevOps da en kanskje må endre hele arbeidkulturen. I tillegg får en teamet sitt til å måtte bli kjent
med nye verktøy og må bygge opp sine ferdigheter fra bunn hvis de aldri har vært borti det før. Det vil altså ta en stund før en vil kunne sammenlikne arbeids-
styrken til hvordan det var før, spesielt med tanke på automatiseringen, som igjen vil gå utover den kontinuelige leveransen. Dette kan være kompleks å sette
igang med, dette vil spesielt gjelde for store systemer som allerede er bygget uten DevOps når en bytter over til det.

## B3

Både DevOps og SCRUM har et stort fokus på sammarbeid, da begge metologiene ser på dette som et viktig punkt for å oppnå suksess i et prosjekt. SCRUM har mer 
fokus på sammarbeid med produkteier for å oppnå det forventede resultatet da DevOps ikke har noe spesielle utsangn om dette, men heller fokuserer på å jobbe
sammen med drift-delen av systemet for å komme fram til løsninger raskere. Begge metologiene har også fokus på iterativ utvikling, selv om de gjør det på
forskjellige måter. Der DevOps bruker CI og CD med automatisering, har SCRUM en mer manuell løsning som kan svekke dem i det lange løpet, men de vil begge nyte
en form for bedre generell kodevalitet og vil være fleksible til forandring ved å arbeide interativt. Det må da sies at hvis en jobber på et prosjekt der en er 
avhening av å trenge automatisering er det lurt å velge DevOps, spesielt ved systemer som ofte kommer til å trenge mange små endringer over tid. På motsatt side
kan dette ta lengre tid (i det korte løpet) hvis du har et team som ikke er kjent med DevOps fra før, da dette krever implimentering som kan være kompleks.
Dette kan spesielt gjelde hvis en skal lage en monolitt, da er det gunstigere å ta i bruk SCRUM for da en heller kan lene seg på sprint-justeringer for 
forandringer av prosjektet. SCRUM metologien nevner ikke noe om mirkotjenester som DevOps tar i bruk. DevOps har også stor fokus på kontinuelig leveranse, så 
selvom begge metologiene vil nyte en generell bedre kodevalitet enn uten, vil DevOps vinne over SCRUM her da sytemet der vil bruke automatiseringen for å oppnå
et mer robust og pålitelig system fordi det blant annet ikke er avhenging av manuell testing som innbærer den menneskelige faktoren. 

## C
### Selv om jeg ikke klarte å gjennomføre oppgave 4, "feedback", har jeg tanker om hvordan og hvorfor en vil gjøre det.


Når en har laget den nye funskjonaliteten er det vikitg å kunne klart definere hva intensjonen til den er, om den faktisk gjør noe nyttig som vil bedre systemet.
Når en har gjort dette er det lettere å sette opp metrics for systemet, disse skal da måle deffinerte aspekter fra ny funskjonalitet. I tillegg er det fint å legge
til overvåkningalarmer som kan gi deg beskjed om noe uventet skjer med systemet mens det kjører, som feks. "overload" på systemet, da vil systemet være mer sikkert
når en blir varslet med en gang ting får galt. Å skape metrics er verdigfult for CI og CD, men kan også være nyttig for bedriten selv, da en feks kan bruke metrics 
til å se hvor ofte den nye funskjoaliteten blir brukt av brukere. Under prossesen vil vi bruke CI og CD for å raskt disturbere de nye oppdateringene til systemet, 
dette innbærer å automatisere tester slik at en kan sikre kompatibilitet med tidligere funsjonalitet. Etter du har satt opp metrics vil en ha en form for 
visualisering av dataen, og en må sette opp et Terraform dashboard og vise de mest relevant metric-ene, dette steget gjør det enklere for flere medlemmer av 
prosjektet å følge med på driften av systemet. Til slutt er det også flott å ha en mulighet for å få tilbakemeldinger ang. den nye funsjonaliteten, da dette sikrer
at produktet passer behovet til en bruker.