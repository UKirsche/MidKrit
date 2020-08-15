import QtQuick 2.0
import Felgo 3.0

ListPage {

    id:listPagePreise
    section.property: "kategorie"

    SectionSelect {
      id: sectionSelect
      anchors.right: parent.right
      target: listPagePreise.listView
      sectionProperty: "kategorie"
    }

    //Holt das Model aus der Listview und delegiert die einzelen Feldelemente weiter an die Column
    delegate: Component {
        Column{
            id:preisItem
            anchors.left: parent.left
            anchors.leftMargin: dp(10)
            width: parent.width-60
            Row {
                AppText {
                    text: modelData.text
                    width:preisItem.width*4/5
                    horizontalAlignment: Text.AlignLeft
                }
                AppText {
                    text: modelData.preis
                    width: preisItem.width/5
                    horizontalAlignment: Text.AlignRight
                }
            }
        }
    }


    model: [

        { kategorie: "Unterkunft", text: "armselig (Strohsack)", preis:"1 SS" },
        { kategorie: "Unterkunft", text: "durschnittlich", preis: "5 SS" },
        { kategorie: "Unterkunft", text: "gut (Einzelzimmer) ", preis: " 2 GS" },
        { kategorie: "Unterkunft", text: "für Pferd im Stall ", preis: " 1 GS" },

        { kategorie: "Verpflegung", text: "Lebenshaltung pro Tag", preis: "5 GS" },
        { kategorie: "Verpflegung", text: "Reiseverpflegung pro Tag", preis: "1 GS" },
        { kategorie: "Verpflegung", text: "Pferdefutter pro Tag", preis: "3 SS" },
        { kategorie: "Verpflegung", text: "Hundefutter pro Tag", preis: "2 SS" },
        { kategorie: "Verpflegung", text: "Greifvogelfutter pro Tag", preis: "1 SS" },
        { kategorie: "Verpflegung", text: "billiger Eintopf mit Brot", preis: "2 SS" },
        { kategorie: "Verpflegung", text: "guter Eintopf mit Brot ", preis: "5 SS" },
        { kategorie: "Verpflegung", text: "Stück Fleisch ", preis: "1 GS" },
        { kategorie: "Verpflegung", text: "gutes Mahl ", preis: "2 GS" },
        { kategorie: "Verpflegung", text: "exzellentes Mahl ", preis: "4 GS" },
        { kategorie: "Verpflegung", text: "Bankett mit mehreren Gängen ", preis: "10 GS" },

        { kategorie: "Lebensmittel", text: "Schweinefleisch", preis: "1 SS" },
        { kategorie: "Lebensmittel", text: "Hammelfleisch", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "Rindfleisch", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "Schinken", preis: "5 SS" },
        { kategorie: "Lebensmittel", text: "Geflügel", preis: "1-3 SS" },
        { kategorie: "Lebensmittel", text: "Wild", preis: "1 GS" },
        { kategorie: "Lebensmittel", text: "Fisch", preis: "1-3 SS" },
        { kategorie: "Lebensmittel", text: "Wurst", preis: "4 SS" },
        { kategorie: "Lebensmittel", text: "Brot", preis: "1-3 SS" },
        { kategorie: "Lebensmittel", text: "Käse", preis: "2-5 KS" },
        { kategorie: "Lebensmittel", text: "Butter", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "Ei", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Gemüse", preis: "1-5 SS" },
        { kategorie: "Lebensmittel", text: "Früchte", preis: "1-5 SS" },
        { kategorie: "Lebensmittel", text: "Milch", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "schwarzer Tee   ", preis: "1-5 SS" },
        { kategorie: "Lebensmittel", text: "Kräutertee", preis: "2-10 KS" },
        { kategorie: "Lebensmittel", text: "Apfelwein", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "Dünnbier", preis: "2 SS" },
        { kategorie: "Lebensmittel", text: "Vollbier", preis: "3 SS" },
        { kategorie: "Lebensmittel", text: "Starkbier", preis: "5 SS" },
        { kategorie: "Lebensmittel", text: "Wein", preis: "4-20 SS" },
        { kategorie: "Lebensmittel", text: "Branntwein", preis: "2-6 GS" },

        { kategorie: "Ausrüstung - Übernachtung", text: "Zweipersonenzelt", preis: "20 GS" },
        { kategorie: "Ausrüstung - Übernachtung", text: "Vierpersonenzelt", preis: "30 GS" },
        { kategorie: "Ausrüstung - Übernachtung", text: "warme Decke", preis: "4 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "wasserdichte Lederhülle", preis: "3 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "5 Liter-Wasserschlauch", preis: "1 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "metallbeschl. 20 Liter-Holztruhe", preis: "5 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "20 Liter-Korb", preis: "8 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "großer Sack für 50 kg", preis: "5 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "kleiner Sack für 25 kg", preis: "2 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "Lederrucksack für 25 kg", preis: "4 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "Ledergürteltasche für 20 Münzen", preis: "2 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "Lederbeutel für 20 Münzen", preis: "5 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/20 Liter-Tuschegefäß", preis: "1 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/4 Liter-Keramikamphore", preis: "5 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "1 Liter-Keramikamphore", preis: "7 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/4 Liter-Glasflasche", preis: "5 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/2 Liter-Metallflasche", preis: "10 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/4 Liter-Holzbecher", preis: "1 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/4 Liter-Zinnbecher", preis: "2 GS" },
        { kategorie: "Ausrüstung - Behälter", text: "1/2 Liter-Tonkrug", preis: "3 SS" },
        { kategorie: "Ausrüstung - Behälter", text: "Gusseisentopf für 2 Liter", preis: "4 GS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "Feuerstein und Zunder", preis: "1 GS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "Feuertopf aus Ton", preis: "5 SS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "1 kg Holzkohle", preis: "5 SS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "10 Fackeln", preis: "3 SS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "10 Talgkerzen", preis: "1 SS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "10 Wachskerzen", preis: "2 GS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "Laterne", preis: "10 GS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "Laterne, abblendbar", preis: "15 GS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "1/4 Liter Lampenöl", preis: "5 SS" },
        { kategorie: "Ausrüstung - Lichte und Feuer", text: "1/4 Liter Zauberöl", preis: "20 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "20 m Seil", preis: "1 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "20 m Angelschnur", preis: "1 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "20 m Garn", preis: "1 SS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "2 m × 2 m Fischernetz", preis: "1 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "1 m × 1 m Stoff", preis: "1 SS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "1 m × 1 m Segeltuch", preis: "5 SS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "Holzbalken (3 m × 10 cm × 10 cm)", preis: "1 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "1 m Metallkette", preis: "10 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "1 m Kupferdraht", preis: "1 GS" },
        { kategorie: "Ausrüstung - Soff und Draht", text: "Hand- oder Fußfessel mit Kette", preis: "30 GS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Werkzeug (Hammer, Schaufel)", preis: "5 GS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "10 große Nägel", preis: "1 SS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Nähnadel", preis: "8 SS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Angelhaken", preis: "2 SS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Wurfanker", preis: "10 GS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Eisenkeil", preis: "5 SS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Holzpflock", preis: "2 KS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Brecheisen", preis: "4 GS" },
        { kategorie: "Ausrüstung - Werkzeug", text: "Einbrecherwerkzeug", preis: "25 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "kleines Bronzeglöckchen", preis: "2 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Signalpfeife aus Metall", preis: "1 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Spiegel aus poliertem Metall", preis: "10 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Kristallspiegel", preis: "200 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Vergrößerungsglas (×2)", preis: "100 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Fernrohr (×2)", preis: "800 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Handwaage mit Wagschalen", preis: "5 GS" },
        { kategorie: "Ausrüstung - Präzisionsinstrumente", text: "Sanduhr", preis: "50 GS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "Kreidestück", preis: "2 SS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "Zeichenkohle", preis: "1 SS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "Schreibpinsel", preis: "5 SS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "1/20 Liter Tusche", preis: "2 GS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "30 cm × 30 cm Pergament", preis: "1 GS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "30 cm × 30 cm Papyrus", preis: "2 SS" },
        { kategorie: "Ausrüstung - Schreibmaterial", text: "Siegelwachs", preis: "1 GS" },
        { kategorie: "Ausrüstung - Heiler- und Priesterbedarf", text: "Erste Hilfe-Ausrüstung", preis: "30 GS" },
        { kategorie: "Ausrüstung - Heiler- und Priesterbedarf", text: "Erste Hilfe-Heilmittel", preis: "20 GS" },
        { kategorie: "Ausrüstung - Heiler- und Priesterbedarf", text: "religiöses Symbol an Kette (unedles Metall)", preis: "5 SS" },
        { kategorie: "Ausrüstung - Heiler- und Priesterbedarf", text: "religiöses Symbol an Kette (Edelmetall)", preis: "10 GS" },
        { kategorie: "Ausrüstung - Heiler- und Priesterbedarf", text: "1/4 Liter Weihwasser", preis: "10 GS" },
        { kategorie: "Ausrüstung - Musikinstrumente", text: "Flöte", preis: "5 GS" },
        { kategorie: "Ausrüstung - Musikinstrumente", text: "Harfe", preis: "100 GS" },
        { kategorie: "Ausrüstung - Musikinstrumente", text: "Laute", preis: "30 GS" },
        { kategorie: "Ausrüstung - Musikinstrumente", text: "Bronzehorn", preis: "20 GS" },
        { kategorie: "Ausrüstung - Musikinstrumente", text: "Trommel", preis: "5 GS" },


        { kategorie: "Tiere", text: "Zugpferd (150 kg)", preis: "80 GS" },
        { kategorie: "Tiere", text: "Packpferd (100 kg)", preis: "80 GS" },
        { kategorie: "Tiere", text: "Reitpferd", preis: "150 GS" },
        { kategorie: "Tiere", text: "Schlachtross", preis: "600 GS" },
        { kategorie: "Tiere", text: "Pony (70 kg)", preis: "50 GS" },
        { kategorie: "Tiere", text: "Esel (60 kg)", preis: "40 GS" },
        { kategorie: "Tiere", text: "Maultier (90 kg)", preis: "60 GS" },
        { kategorie: "Tiere", text: "Zugochse (250 kg)", preis: "120 GS" },
        { kategorie: "Tiere", text: "Reitkamel", preis: "150 GS" },
        { kategorie: "Tiere", text: "Lastkamel (150 kg)", preis: "120 GS" },
        { kategorie: "Tiere", text: "Kleinvieh (Maus, Huhn)", preis: "1-5 SS" },
        { kategorie: "Tiere", text: "Jagdhund", preis: "20 GS" },
        { kategorie: "Tiere", text: "Schlittenhund (30 kg)", preis: "20 GS" },
        { kategorie: "Tiere", text: "Kampfhund", preis: "50 GS" },
        { kategorie: "Tiere", text: "Greifvogel", preis: "50 GS" },
        { kategorie: "Tiere", text: "Reit", preis: "80 GS" },
        { kategorie: "Tiere", text: "Zugpferd (150 kg)", preis: "80 GS" },

        { kategorie: "Transportmittel", text: "Zaumzeug", preis: "3 GS" },
        { kategorie: "Transportmittel", text: "Sattel", preis: "30 GS" },
        { kategorie: "Transportmittel", text: "Satteltaschen", preis: "8 GS" },
        { kategorie: "Transportmittel", text: "Karren (einspännig)", preis: "70 GS" },
        { kategorie: "Transportmittel", text: "Karren (zweispännig)", preis: "150 GS" },
        { kategorie: "Transportmittel", text: "Wagen (vierspännig)", preis: "250 GS" },
        { kategorie: "Transportmittel", text: "Schlitten (sechsspännig)", preis: "80 GS" },
        { kategorie: "Transportmittel", text: "Skier", preis: "8 GS" },
        { kategorie: "Transportmittel", text: "Ruderboot (4 m lang)", preis: "100 GS" },
        { kategorie: "Transportmittel", text: "Kleinsegler (5 m lang)", preis: "200 GS" },
        { kategorie: "Transportmittel", text: "Kleinsegler (10 m lang)", preis: "800 GS" },

        { kategorie: "Reisekosten", text: "Fährverbindung über Fluss", preis: "SS" },
        { kategorie: "Reisekosten", text: "Überbringen einer Botschaft je 10 km", preis: "1 KS" },
        { kategorie: "Reisekosten", text: "Warentransport je 10 km und je 10 kg: Schiff", preis: "1 KS" },
        { kategorie: "Reisekosten", text: "Warentransport je 10 km und je 10 kg: mit Handelszug (nach Risiko)", preis: "3-10 KS" },
        { kategorie: "Reisekosten", text: "Reise je 10 km und Person: mit Karawane", preis: "5 KS" },
        { kategorie: "Reisekosten", text: "Reise je 10 km und Person: mit Reisekutsche (incl. 30 kg Gepäck)", preis: "3 SS" },
        { kategorie: "Reisekosten", text: "Reise je 10 km und Person: mit Handelsschiff (incl. 50 kg Gepäck)", preis: "1 SS" },
        { kategorie: "Reisekosten", text: "Reise je 10 km und Person: Pferdetransport zu Wasser", preis: "Kosten x 3" },

        { kategorie: "Waffen - Fechtwaffen", text: "Florett", preis: "100 GS" },
        { kategorie: "Waffen - Fechtwaffen", text: "Fuchtel", preis: "100 GS" },
        { kategorie: "Waffen - Fechtwaffen", text: "Rapier", preis: "70 GS" },
        { kategorie: "Waffen - Fechtwaffen", text: "", preis: "" },
        { kategorie: "Waffen - Fechtwaffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },
        { kategorie: "Waffen", text: "", preis: "" },



     ]

}
