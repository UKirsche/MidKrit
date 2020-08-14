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

            width:parent.width-60
            anchors.left: parent.left
            anchors.leftMargin: dp(10)
            Row {
                width: parent.width
                AppText {
                    text: modelData.text
                    width:parent.width*4/5
                    horizontalAlignment: Text.AlignLeft
                }
                AppText {
                    text: modelData.preis
                    width: parent.width/5
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

        { kategorie: "Verpflegung", text: "billiger Eintopf mit Brot ", preis: " 2 SS" },
        { kategorie: "Verpflegung", text: "guter Eintopf mit Brot ", preis: " 5 SS" },
        { kategorie: "Verpflegung", text: "Stück Fleisch ", preis: " 1 GS" },
        { kategorie: "Verpflegung", text: "gutes Mahl ", preis: " 2 GS" },
        { kategorie: "Verpflegung", text: "exzellentes Mahl ", preis: " 4 GS" },
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
        { kategorie: "Lebensmittel", text: "Gemüse", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Früchte", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Milch", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "schwarzer Tee   ", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Kräutertee", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Apfelwein", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Dünnbier", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Vollbier", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Starkbier", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Wein", preis: "3 KS" },
        { kategorie: "Lebensmittel", text: "Branntwein", preis: "3 KS" },

        { kategorie: "Ausrüstung", text: "Zweipersonenzelt", preis: "20 GS" },
        { kategorie: "Ausrüstung", text: "Vierpersonenzelt", preis: "30 GS" },
        { kategorie: "Ausrüstung", text: "warme Decke", preis: "4 GS" },
        { kategorie: "Ausrüstung", text: "wasserdichte Lederhülle", preis: "3 GS" },
        { kategorie: "Ausrüstung", text: "Lederrucksack für 25 kg", preis: "4 GS" },
        { kategorie: "Ausrüstung", text: "Lederrucksack für 25 kg", preis: "4 GS" },
        { kategorie: "Ausrüstung", text: "Lederrucksack für 25 kg", preis: "4 GS" },


        { kategorie: "Tiere", text: "Zugpferd (150 kg)", preis: "80 GS" },
     ]

}
