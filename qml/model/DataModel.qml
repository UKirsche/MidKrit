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
       FehlerAbwehr,
       ErfolgAngriff,
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
                ueber:"",
                text:"Keine besonderen Auswirkungen"
            },{
                min:11,
                max:20,
                wert:"11-20",
                ueber:"Der Angreifer verliert kurz das Gleichgewicht.",
                text:"Er braucht etwas Zeit, um wieder kampfbereit zu sein, und kann in der folgenden Runde nicht an- greifen."
            },{
                min:21,
                max:35,
                wert:"21-35",
                ueber:"Der Angreifer lässt seine Waffe fallen.",
                text:"Sie fällt auf das Feld, auf dem er sich befindet.
                    Fäuste, Pranken usw. werden leicht geprellt und können in der folgenden Runde nicht eingesetzt werden."
            },{
                min:36,
                max:50,
                wert:"36-50",
                ueber:"Die Angriffswaffe wird zerstört.",
                text:"Bei magischen Waffen wird 1W6–1 gewürfelt; die Waffe wird nur zerstört, wenn das Ergebnis über dem höheren
                      bei den magischen Bonuswerte für Angriff und Schaden liegt. Bei Angriffen mit Fäusten, Zähnen usw. wird der
                      betreffende Körperteil geprellt und kann 10 min lang nicht einge- setzt werden."
            },{
                min:51,
                max:55,
                wert:"51-55",
                ueber:"Der Angreifer verletzt sich selbst.",
                text:"Im Nahkampf und Handgemenge mit einer Waffe erleidet er durch seine Ungeschicklichkeit 1W6–1 schweren Schaden.
                      Bei Angriffen mit der bloßen Hand und anderen natürlichen Waffen oder mit Wurfwaffen verliert der Angreifer
                      1W6–1 AP durch eine Muskelzerrung und kann eine Runde lang nicht angreifen. Bei einem Bogen- oder Arm-
                      brustschuss reißt die Sehne und verletzt den Schüt- zen leicht (1W6–1 AP Verlust). Sie kann in 1W6+3 Runden
                      durch eine neue ersetzt werden."
            },{
                min:56,
                max:60,
                wert:"56-60",
                ueber:"Der Angreifer trifft aus Versehen die nächststehen- de befreundete Person.",
                text:"Er fügt ihr 1W6–1 schweren Schaden zu. Befindet sich kein Gefährte in Reichweite, hat der Fehler keine Folgen.
                      Kommen mehrere Personen als Op- fer in Frage, wird eine von ihnen ausgewürfelt."
            },{
                min:61,
                max:70,
                wert:"61-70",
                ueber:"Der Angreifer läuft in die Waffe des Gegners hinein.",
                text:"Der Angegriffene darf sofort außer der Reihe einen zusätzlichen EW:Angriff machen, der nicht abgewehrt werden
                     darf."
            },{
                min:71,
                max:90,
                wert:"71-90",
                ueber:"Der Angreifer verstaucht sich den Fuß.",
                text:"Seine Bewegungsweite verringert sich für 2W6 Runden um ein Drittel. Bei einem Schuss mit Bogen oder Armbrust
                      schlägt die Sehne gegen den Arm des Abenteurers, der dadurch 1W6–1 AP ver- liert und eine Runde lang nicht
                     schießen kann."
            },{
                min:91,
                max:99,
                wert:"91-99",
                ueber:"Der Angreifer stolpert und stürzt zu Boden.",
                text:"Seine Bewegungsweite verringert sich für 2W6 Runden um ein Drittel. Bei einem Schuss mit Bogen oder Armbrust
                      schlägt die Sehne gegen den Arm des Abenteurers, der dadurch 1W6–1 AP ver- liert und eine Runde lang nicht
                     schießen kann."
            },{
                min:100,
                max:100,
                wert:"100",
                ueber:"Der Angreifer stürzt zu Boden und zerstört dabei seine Waffe.",
                text:"Bei einem Angriff mit natürlichen Waffen kann der betreffende Körperteil wie bei 36-50 10 min lang nicht
                      eingesetzt werden. Bei einem Angriff mit Schusswaffen fällt der Abenteurer nicht hin."
            }]




      /**
        Holt das Suchergebnis je nach Suchparameter (Kritischer Typ)
        zurück
        */
      function getFilteredResults(){
        switch (dataModel.kritDice){
            case DataModel.KritType.FehlerAngriff:
                return filterKategorie(basicKritFehlerAngriff)
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

