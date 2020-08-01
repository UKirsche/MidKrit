import QtQuick 2.0
import Felgo 3.0

/**
  Implementation für Datenlogik
  */
Item {

    // property to configure target dispatcher / logic
    property alias dispatcher: logicConnection.target

    //Holt das zuletzt gesuchte Model zurück
    //also: KritFehlerAngriff,KritSchadenAngriff,KritFehlerAbwehr oder KritErfolgAbwehr
    readonly property var results: _.getFilteredResults()

    property int diceThrow:0

    enum KritType {
       FehlerAngriff,
       ErfolgAngriff,
       FehlerAbwehr,
       ErfolgAbwehr
    }

    property var kritDice: DataModel.KritType.FehlerAngriff

    //Sortiere Modell je nach eingehendem Signal
    Connections {
        id:logicConnection

        onSetDiceResult: {
            diceThrow=dice
            _.getFilteredResults();
        }

        onSetKritType:{
            kritDice=typeKrit
        }

    }

    //Private Item zum Filtern der Daten
    Item {
      id: _ //private members
      property var basicKritFehlerAngriff:[{
                min:1,
                max:10,
                wert:"1-10",
                ueber:"Keine besonderen Auswirkungen",
                text:""
            },{
                min:11,
                max:20,
                wert:"11-20",
                ueber:"Der Angreifer verliert kurz das Gleichgewicht",
                text:"Er braucht etwas Zeit, um wieder kampfbereit zu sein, und kann in der folgenden Runde nicht angreifen."
            },{
                min:21,
                max:35,
                wert:"21-35",
                ueber:"Der Angreifer lässt seine Waffe fallen",
                text:"Sie fällt auf das Feld, auf dem er sich befindet. Fäuste, Pranken usw. werden leicht geprellt und können in der folgenden Runde nicht eingesetzt werden."
            },{
                min:36,
                max:50,
                wert:"36-50",
                ueber:"Die Angriffswaffe wird zerstört",
                text:"Bei magischen Waffen wird 1W6–1 gewürfelt; die Waffe wird nur zerstört, wenn das Ergebnis über dem höheren bei den magischen Bonuswerte für Angriff und Schaden liegt. Bei Angriffen mit Fäusten, Zähnen usw. wird der betreffende Körperteil geprellt und kann 10 min lang nicht eingesetzt werden."
            },{
                min:51,
                max:55,
                wert:"51-55",
                ueber:"Der Angreifer verletzt sich selbst",
                text:"Im Nahkampf und Handgemenge mit einer Waffe erleidet er durch seine Ungeschicklichkeit 1W6–1 schweren Schaden.Bei Angriffen mit der bloßen Hand und anderen natürlichen Waffen oder mit Wurfwaffen verliert der Angreifer 1W6–1 AP durch eine Muskelzerrung und kann eine Runde lang nicht angreifen. Bei einem Bogen- oder Armbrustschuss reißt die Sehne und verletzt den Schützen leicht (1W6–1 AP Verlust). Sie kann in 1W6+3 Runden durch eine neue ersetzt werden."
            },{
                min:56,
                max:60,
                wert:"56-60",
                ueber:"Der Angreifer trifft aus Versehen die nächststehende befreundete Person",
                text:"Er fügt ihr 1W6–1 schweren Schaden zu. Befindet sich kein Gefährte in Reichweite, hat der Fehler keine Folgen. Kommen mehrere Personen als Opfer in Frage, wird eine von ihnen ausgewürfelt."
            },{
                min:61,
                max:70,
                wert:"61-70",
                ueber:"Der Angreifer läuft in die Waffe des Gegners hinein",
                text:"Der Angegriffene darf sofort außer der Reihe einen zusätzlichen EW:Angriff machen, der nicht abgewehrt werden darf."
            },{
                min:71,
                max:90,
                wert:"71-90",
                ueber:"Der Angreifer verstaucht sich den Fuß",
                text:"Seine Bewegungsweite verringert sich für 2W6 Runden um ein Drittel. Bei einem Schuss mit Bogen oder Armbrust schlägt die Sehne gegen den Arm des Abenteurers, der dadurch 1W6–1 AP verliert und eine Runde lang nicht schießen kann."
            },{
                min:91,
                max:99,
                wert:"91-99",
                ueber:"Der Angreifer stolpert und stürzt zu Boden",
                text:"Bei Armbrust- oder Bogenschuss reißt stattdessen die Sehne und verletzt den Schützen leicht (1W6–1 AP Verlust - s. 51-55). Im Handgemenge hat dieser Wurf dieselben Folgen wie 71-90."
            },{
                min:100,
                max:100,
                wert:"100",
                ueber:"Der Angreifer stürzt zu Boden und zerstört dabei seine Waffe",
                text:"Bei einem Angriff mit natürlichen Waffen kann der betreffende Körperteil wie bei 36-50 10 min lang nicht eingesetzt werden. Bei einem Angriff mit Schusswaffen fällt der Abenteurer nicht hin."
            }]

      property var basicKritFehlerAbwehr:[{
                min:1,
                max:10,
                wert:"1-10",
                ueber:"Keine besonderen Auswirkungen",
                text:""
            },{
                min:11,
                max:20,
                wert:"11-20",
                ueber:"Der Angegriffene verliert kurz das Gleichgewicht",
                text:"Er braucht etwas Zeit, um wieder kampfbereit zu sein, und kann in der folgenden Runde nicht angreifen."
            },{
                min:21,
                max:30,
                wert:"21-30",
                ueber:"Die Verteidigungswaffe ist zerstört",
                text:"Benutzt der Abenteurer weder Schild noch Parierwaffe, hat dieser Wurf dieselben Folgen wie 81-90. Bei magischen Waffen wird 1W6–1 gewürfelt; die Waffe wird nur zerstört, wenn das Ergebnis größer als ihr magischer Abwehrbonus ist."
            },{
                min:31,
                max:40,
                wert:"31-40",
                ueber:"Der Angegriffene lässt seine Verteidigungswaffe fallen",
                text:"Die Waffe fällt ihm zu Füßen. Benutzt er weder Schild noch Parierwaffe, hat dieser Wurf dieselben Folgen wie 41-50."
            },{
                min:41,
                max:50,
                wert:"41-50",
                ueber:"Der Verteidiger wird nach hinten gedrängt (Nahkampf), oder der Schwung seiner Ausweichbewegung reißt ihn mit (Fernkampf)",
                text:"Im Nahkampf bewegt sich der Angegriffene 1 m geradlinig vom Gegner weg, wenn ihn kein massives Hindernis daran hindert - selbst wenn er dadurch in ein Lagerfeuer oder einen Abgrund hineingerät. Der Angreifer kann sofort folgen und den Kontakt aufrechterhalten, wenn er will. Im Fernkampf bewegt sich der Angegriffene von seinem Standort aus um 1 m nach links (bei 1-2 mit 1W6), nach rechts (bei 3-4), nach vorne (5) bzw. nach hinten (6), wenn ihn kein Hindernis daran hindert.\nIm Handgemenge hat der Wurf dieselben Folgen wie 51-60."
            },{
                min:51,
                max:60,
                wert:"51-60",
                ueber:"Die Sicht des Angegriffenen wird behindert",
                text:"Er kann in der folgenden Runde nicht angreifen, da er Blut oder Schweiß aus den Augen wischen oder eine verrutschte Kopfbedeckung zurechtrücken muss."
            },{
                min:61,
                max:70,
                wert:"61-70",
                ueber:"Der Verteidiger gibt sich eine Blöße",
                text:"Im Nahkampf oder Handgemenge darf der Angreifer sofort außer der Reihe einen zusätzlichen EW:Angriff machen, der nicht abgewehrt werden darf. Im Fernkampf kann der Angegriffene dem nächsten Schuss oder Wurf (in der laufenden oder folgenden Runde, nicht aber später) nicht ausweichen und daher keinen WW:Abwehr würfeln."
            },{
                min:71,
                max:80,
                wert:"71-80",
                ueber:"Der Angegriffene verstaucht sich den Fuß",
                text:"Seine Bewegungsweite verringert sich für 2W6 Runden um ein Drittel."
            },{
                min:81,
                max:90,
                wert:"81-90",
                ueber:"Der Verteidiger prallt unglücklich mit seinem Gegner zusammen (Nahkampf und Handgemenge) oder gegen ein Hindernis (Fernkampf) und ist kurzzeitig benommen.",
                text:"Im Nahkampf oder Handgemenge kann er in der folgenden Runde weder angreifen noch abwehren. Sein Gegner leidet unter denselben Folgen - aber nur, wenn ihm ein PW:Gewandtheit misslingt. Im Fernkampf kann der Angegriffene wie bei 61-70 dem nächsten Schuss nicht ausweichen und darf außerdem in dieser und der folgenden Runde nicht mehr angreifen."
            },{
                min:91,
                max:99,
                wert:"91-99",
                ueber:"Der Angegriffene rutscht aus und stürzt zu Boden",
                text:"Im Handgemenge hat dieser Wurf dieselben Folgen wie 61-70."
            },{
                min:100,
                max:100,
                wert:"100",
                ueber:"Der Angegriffene stürzt und verliert das Bewusstsein",
                text:"Er kommt nach 1W6 Runden wieder zu sich."
            }]

      property var basicKritSchaden:[{
                min:1,
                max:10,
                wert:"1-10",
                ueber:"normaler schwerer Schaden",
                text:"Keine besonderen Auswirkungen"
            },{
                min:11,
                max:20,
                wert:"11-20",
                ueber:"kurzer Schock",
                text:"Das Opfer kann durch den Schock der Verwundung eine Runde lang nicht angreifen."
            },{
                min:21,
                max:30,
                wert:"21-30",
                ueber:"Rumpftreffer mit Rippenbrüchen",
                text:"1W3 Rippen des Opfers brechen."
            },{
                min:31,
                max:35,
                wert:"31-35",
                ueber:"Rumpftreffer mit Rippenbrüchen",
                text:"1W3 Rippen des Opfers brechen."
            },{
                min:36,
                max:40,
                wert:"36-40",
                ueber:"schwere Verletzung der Wirbelsäule *",
                text:"Nur ein wuchtiger Hieb, z.B. mit einer Schlagwaffe, einer zweihändigen Hiebwaffe, einem Morgenstern, einem Kampfstab oder mit einer Pranke, richtet diese Art von kritischem Schaden an. Treffer mit anderen Waffen verursachen normalen schweren Schaden."
            },{
                min:41,
                max:47,
                wert:"41-47",
                ueber:"schwere Verletzung am rechten Arm †",
                text:"(Blut): Mit 20% wird der Arm abgetrennt (bei einer Waffe mit Schneide) oder dauerhaft verkrüppelt. Mit Armschutz führt auch der Treffer mit einer scharfen Waffe nicht zum Abtrennen, sondern nur zur Verkrüppelung des Armes. Treffer mit Stich-, Wurf- oder Schusswaffen haben keine derart schwerwiegenden Auswirkungen."
            },{
                min:48,
                max:55,
                wert:"48-55",
                ueber:"schwere Verletzung am linken Arm †",
                text:"Wie 41-47."
            },{
                min:56,
                max:64,
                wert:"56-64",
                ueber:"schwere Verletzung am rechten Bein †",
                text:"(Blut): Mit 20% wird das Bein abgetrennt (ohne Beinschutz bei einer Waffe mit Schneide) oder dauerhaft verkrüppelt. Treffer mit Stich-, Wurf- oder Schusswaffen haben keine derart schwerwiegenden Auswirkunge"
            },{
                min:65,
                max:73,
                wert:"65-73",
                ueber:"Der Angreifer trifft aus Versehen die nächststehende befreundete Person.",
                text:"Wie 56-64."
            },{
                min:74,
                max:80,
                wert:"74-80",
                ueber:"schwerer Kopftreffer *",
                text:"Helmlose Opfer verlieren zusätzlich zum normalen Schaden 1W3 LP und AP."
            },{
                min:81,
                max:85,
                wert:"81-85",
                ueber:"Treffer im Gesicht",
                text:"Das Aussehen des Getroffenen sinkt durch eine entstellende Narbe dauerhaft um ein Zehntel (mindestens aber um 1). Der Träger eines Helms mit Visier ist vor dieser Art von Schaden sicher."
            },{
                min:86,
                max:89,
                wert:"86-89",
                ueber:"Kopftreffer mit Hörschaden *",
                text:"Wie 74-80 und zusätzlich schwere Verletzung am Ohr. Helmträger sind vor dieser Art von Schaden sicher. "
            },{
                min:90,
                max:93,
                wert:"90-93",
                ueber:"Augenverletzung",
                text:"Der Träger eines Helms mit Visier ist vor dieser Art von Schaden sicher."
            },{
                min:94,
                max:96,
                wert:"94-96",
                ueber:"Halstreffer",
                text:"(Blut): Eine spitze oder scharfe Waffe verletzt die Halsschlagader. Eine stumpfe Waffe verursacht eine schwere Halswirbelverletzung."
             },{
                min:97,
                max:97,
                wert:"97",
                ueber:"schwere Schädelverletzung *",
                text:"Wie 74-80, aber bei helmlosen Abenteurern erhöht sich der Zusatzschaden auf 1W6 LP und AP. Fällt das Opfer ins Koma, sinkt seine Intelligenz durch Hirnschäden dauerhaft um ein Zehntel (mindestens aber um 1)."
             },{
                min:98,
                max:99,
                wert:"98-99",
                ueber:"Augenverlust",
                text:"Bei einem Treffer mit einer scharfen oder spitzen Waffe oder einer Schusswaffe verliert das Opfer ein Auge. Der Träger eines Helms mit Visier ist vor dieser Art von Schaden sicher."
            },{
                min:100,
                max:100,
                wert:"100",
                ueber:"tödlicher Treffer",
                text:"Ein Treffer ins Herz, an der Kehle usw. tötet den Getroffenen augenblicklich."
            }]

      property var basicKritErfolgAbwehr:[{
                min:1,
                max:10,
                wert:"1-10",
                ueber:"Keine besonderen Auswirkungen",
                text:""
            },{
                min:11,
                max:30,
                wert:"11-30",
                ueber:"Die Waffenhand des Angreifers wird geprellt",
                text:"In der folgenden Runde kann er mit dieser Hand nicht angreifen. Tiere verlieren einen Angriff mit Pranke, Zähnen, Stachel usw.."
            },{
                min:31,
                max:40,
                wert:"31-40",
                ueber:"Der Angreifer wird entwaffnet",
                text:"Die Waffe fliegt vom Angreifer aus gesehen geradlinig um 1W6–1 m nach links. Bei waffenlosen Angriffen gibt es keine besonderen Auswirkungen."
            },{
                min:41,
                max:50,
                wert:"41-50",
                ueber:"Der Angreifer wird entwaffnet",
                text:"Die Waffe fliegt nach rechts (s. 31-40)."
            },{
                min:51,
                max:60,
                wert:"51-60",
                ueber:"Der Angreifer wird entwaffnet",
                text:"Die Waffe fliegt nach hinten (s. 31-40)."
            },{
                min:61,
                max:80,
                wert:"61-80",
                ueber:"Der Angreifer stürzt zu Boden",
                text:"Er ist vom Abwehrenden umgestoßen worden oder gestolpert. In einem Handgemenge treten keine besonderen Folgen auf."
            },{
                min:81,
                max:95,
                wert:"81-95",
                ueber:"Der Angreifer wird leicht verwundet",
                text:"Er verliert 1W6 AP."
            },{
                min:96,
                max:99,
                wert:"96-99",
                ueber:"Der Angreifer wird schwer verwundet.",
                text:"Er erleidet 1W6 schweren Schaden."
            },{
                min:100,
                max:100,
                wert:"100",
                ueber:"Der Angreifer verliert das Bewusstsein",
                text:"Er stürzt zu Boden und kommt erst 1W6 Runden später wieder zu sich."
            }]



      /**
        Holt das Suchergebnis je nach Suchparameter (Kritischer Typ)
        zurück
        */
      function getFilteredResults(){
        switch (dataModel.kritDice){
            case DataModel.KritType.FehlerAngriff:
                return filterKategorie(basicKritFehlerAngriff)
            case DataModel.KritType.ErfolgAngriff:
                return filterKategorie(basicKritSchaden)
            case DataModel.KritType.FehlerAbwehr:
                return filterKategorie(basicKritFehlerAbwehr)
            case DataModel.KritType.ErfolgAbwehr:
                return filterKategorie(basicKritErfolgAbwehr)
            default:
                return []

        }
      }

      /**
        Filtert die korrekte Kategorie aus dem Json-Array mit
        Hilfe der Min- und Maxwerte und des Würfelergebnisses
        */
      function filterKategorie(kritArray){
        const resultFiltered = kritArray.filter(katJson=> {
             try {
               var min = katJson.min;
               var max = katJson.max;
               return dataModel.diceThrow>= min && dataModel.diceThrow<=max
             } catch(ex) {
               console.error("Could not parse server response as JSON:", ex)
               return
             }
          })
        return resultFiltered;
      }

    }
}

