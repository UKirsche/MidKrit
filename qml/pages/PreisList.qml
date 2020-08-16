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
                    width:preisItem.width*2.3/3.5
                    horizontalAlignment: Text.AlignLeft
                }
                AppText {
                    text: modelData.preis
                    width: preisItem.width*1.2/3.5
                    horizontalAlignment: Text.AlignRight
                }
            }
        }
    }


    model: [

        { kategorie: "Unterkunft", text: "armselig (Strohsack)", preis:"1 SS" },
        { kategorie: "Unterkunft", text: "durschnittlich", preis: "5 SS" },
        { kategorie: "Unterkunft", text: "gut (Einzelzimmer) ", preis: "2 GS" },
        { kategorie: "Unterkunft", text: "für Pferd im Stall", preis: "1 GS" },

        { kategorie: "Miete in der Stadt pro Monat", text: "1 Raum", preis: "15-20 GS" },
        { kategorie: "Miete in der Stadt pro Monat", text: "1 Haus", preis: "50-200 GS" },

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

        { kategorie: "Übernachtung", text: "Zweipersonenzelt", preis: "20 GS" },
        { kategorie: "Übernachtung", text: "Vierpersonenzelt", preis: "30 GS" },
        { kategorie: "Übernachtung", text: "warme Decke", preis: "4 GS" },

        { kategorie: "Behälter", text: "wasserdichte Lederhülle", preis: "3 GS" },
        { kategorie: "Behälter", text: "5 Liter-Wasserschlauch", preis: "1 GS" },
        { kategorie: "Behälter", text: "metallbeschl. 20 Liter-Holztruhe", preis: "5 GS" },
        { kategorie: "Behälter", text: "20 Liter-Korb", preis: "8 SS" },
        { kategorie: "Behälter", text: "großer Sack für 50 kg", preis: "5 SS" },
        { kategorie: "Behälter", text: "kleiner Sack für 25 kg", preis: "2 SS" },
        { kategorie: "Behälter", text: "Lederrucksack für 25 kg", preis: "4 GS" },
        { kategorie: "Behälter", text: "Ledergürteltasche für 20 Münzen", preis: "2 GS" },
        { kategorie: "Behälter", text: "Lederbeutel für 20 Münzen", preis: "5 SS" },
        { kategorie: "Behälter", text: "1/20 Liter-Tuschegefäß", preis: "1 GS" },
        { kategorie: "Behälter", text: "1/4 Liter-Keramikamphore", preis: "5 SS" },
        { kategorie: "Behälter", text: "1 Liter-Keramikamphore", preis: "7 SS" },
        { kategorie: "Behälter", text: "1/4 Liter-Glasflasche", preis: "5 GS" },
        { kategorie: "Behälter", text: "1/2 Liter-Metallflasche", preis: "10 GS" },
        { kategorie: "Behälter", text: "1/4 Liter-Holzbecher", preis: "1 SS" },
        { kategorie: "Behälter", text: "1/4 Liter-Zinnbecher", preis: "2 GS" },
        { kategorie: "Behälter", text: "1/2 Liter-Tonkrug", preis: "3 SS" },
        { kategorie: "Behälter", text: "Gusseisentopf für 2 Liter", preis: "4 GS" },

        { kategorie: "Lichte und Feuer", text: "Feuerstein und Zunder", preis: "1 GS" },
        { kategorie: "Lichte und Feuer", text: "Feuertopf aus Ton", preis: "5 SS" },
        { kategorie: "Lichte und Feuer", text: "1 kg Holzkohle", preis: "5 SS" },
        { kategorie: "Lichte und Feuer", text: "10 Fackeln", preis: "3 SS" },
        { kategorie: "Lichte und Feuer", text: "10 Talgkerzen", preis: "1 SS" },
        { kategorie: "Lichte und Feuer", text: "10 Wachskerzen", preis: "2 GS" },
        { kategorie: "Lichte und Feuer", text: "Laterne", preis: "10 GS" },
        { kategorie: "Lichte und Feuer", text: "Laterne, abblendbar", preis: "15 GS" },
        { kategorie: "Lichte und Feuer", text: "1/4 Liter Lampenöl", preis: "5 SS" },
        { kategorie: "Lichte und Feuer", text: "1/4 Liter Zauberöl", preis: "20 GS" },

        { kategorie: "Stoff und Draht", text: "20 m Seil", preis: "1 GS" },
        { kategorie: "Stoff und Draht", text: "20 m Angelschnur", preis: "1 GS" },
        { kategorie: "Stoff und Draht", text: "20 m Garn", preis: "1 SS" },
        { kategorie: "Stoff und Draht", text: "2 m × 2 m Fischernetz", preis: "1 GS" },
        { kategorie: "Stoff und Draht", text: "1 m × 1 m Stoff", preis: "1 SS" },
        { kategorie: "Stoff und Draht", text: "1 m × 1 m Segeltuch", preis: "5 SS" },
        { kategorie: "Stoff und Draht", text: "Holzbalken (3 m × 10 cm × 10 cm)", preis: "1 GS" },
        { kategorie: "Stoff und Draht", text: "1 m Metallkette", preis: "10 GS" },
        { kategorie: "Stoff und Draht", text: "1 m Kupferdraht", preis: "1 GS" },
        { kategorie: "Stoff und Draht", text: "Hand- oder Fußfessel mit Kette", preis: "30 GS" },

        { kategorie: "Werkzeug", text: "Werkzeug (Hammer, Schaufel)", preis: "5 GS" },
        { kategorie: "Werkzeug", text: "10 große Nägel", preis: "1 SS" },
        { kategorie: "Werkzeug", text: "Nähnadel", preis: "8 SS" },
        { kategorie: "Werkzeug", text: "Angelhaken", preis: "2 SS" },
        { kategorie: "Werkzeug", text: "Wurfanker", preis: "10 GS" },
        { kategorie: "Werkzeug", text: "Eisenkeil", preis: "5 SS" },
        { kategorie: "Werkzeug", text: "Holzpflock", preis: "2 KS" },
        { kategorie: "Werkzeug", text: "Brecheisen", preis: "4 GS" },
        { kategorie: "Werkzeug", text: "Einbrecherwerkzeug", preis: "25 GS" },

        { kategorie: "Präzisionsinstrumente", text: "kleines Bronzeglöckchen", preis: "2 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Signalpfeife aus Metall", preis: "1 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Spiegel aus poliertem Metall", preis: "10 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Kristallspiegel", preis: "200 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Vergrößerungsglas (×2)", preis: "100 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Fernrohr (×2)", preis: "800 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Handwaage mit Wagschalen", preis: "5 GS" },
        { kategorie: "Präzisionsinstrumente", text: "Sanduhr", preis: "50 GS" },

        { kategorie: "Schreibmaterial", text: "Kreidestück", preis: "2 SS" },
        { kategorie: "Schreibmaterial", text: "Zeichenkohle", preis: "1 SS" },
        { kategorie: "Schreibmaterial", text: "Schreibpinsel", preis: "5 SS" },
        { kategorie: "Schreibmaterial", text: "1/20 Liter Tusche", preis: "2 GS" },
        { kategorie: "Schreibmaterial", text: "30 cm × 30 cm Pergament", preis: "1 GS" },
        { kategorie: "Schreibmaterial", text: "30 cm × 30 cm Papyrus", preis: "2 SS" },
        { kategorie: "Schreibmaterial", text: "Siegelwachs", preis: "1 GS" },

        { kategorie: "Heiler- und Priesterbedarf", text: "Erste Hilfe-Ausrüstung", preis: "30 GS" },
        { kategorie: "Heiler- und Priesterbedarf", text: "Erste Hilfe-Heilmittel", preis: "20 GS" },
        { kategorie: "Heiler- und Priesterbedarf", text: "religiöses Symbol an Kette (unedles Metall)", preis: "5 SS" },
        { kategorie: "Heiler- und Priesterbedarf", text: "religiöses Symbol an Kette (Edelmetall)", preis: "10 GS" },
        { kategorie: "Heiler- und Priesterbedarf", text: "1/4 Liter Weihwasser", preis: "10 GS" },

        { kategorie: "Musikinstrumente", text: "Flöte", preis: "5 GS" },
        { kategorie: "Musikinstrumente", text: "Harfe", preis: "100 GS" },
        { kategorie: "Musikinstrumente", text: "Laute", preis: "30 GS" },
        { kategorie: "Musikinstrumente", text: "Bronzehorn", preis: "20 GS" },
        { kategorie: "Musikinstrumente", text: "Trommel", preis: "5 GS" },


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

        { kategorie: "Fechtwaffen", text: "Florett", preis: "100 GS" },
        { kategorie: "Fechtwaffen", text: "Fuchtel", preis: "100 GS" },
        { kategorie: "Fechtwaffen", text: "Rapier", preis: "70 GS" },

        { kategorie: "Fesselwaffen", text: "Peitsche", preis: "8 GS" },
        { kategorie: "Fesselwaffen", text: "Garotte", preis: "5 GS" },
        { kategorie: "Fesselwaffen", text: "Bola", preis: "4 GS" },
        { kategorie: "Fesselwaffen", text: "Lasso", preis: "2 GS" },
        { kategorie: "Fesselwaffen", text: "Netz", preis: "2 GS" },

        { kategorie: "Kettenwaffen", text: "Kriegsflegel", preis: "30 GS" },
        { kategorie: "Kettenwaffen", text: "Morgenstern", preis: "40 GS" },
        { kategorie: "Kettenwaffen", text: "NunChaku", preis: "10 GS" },

        { kategorie: "Spießwaffen", text: "Leichter Speer", preis: "6 GS" },
        { kategorie: "Spießwaffen", text: "Stoßspeer", preis: "8 GS" },
        { kategorie: "Spießwaffen", text: "Lanze", preis: "13 GS" },

        { kategorie: "Schlagwaffen", text: "Barbarenstreitaxt", preis: "50 GS" },
        { kategorie: "Schlagwaffen", text: "Handaxt", preis: "10 GS" },
        { kategorie: "Schlagwaffen", text: "Keule", preis: "8 GS" },
        { kategorie: "Schlagwaffen", text: "Kriegshammer", preis: "12 GS" },
        { kategorie: "Schlagwaffen", text: "Ogerhammer", preis: "70 GS" },
        { kategorie: "Schlagwaffen", text: "Schlachtbeil", preis: "25 GS" },
        { kategorie: "Schlagwaffen", text: "Stabkeule", preis: "15 GS" },
        { kategorie: "Schlagwaffen", text: "Streitaxt", preis: "20 GS" },
        { kategorie: "Schlagwaffen", text: "Streitkolben", preis: "12 GS" },

        { kategorie: "Schwerter", text: "Anderthalbhänder", preis: "200 GS" },
        { kategorie: "Schwerter", text: "Bihänder", preis: "200 GS" },
        { kategorie: "Schwerter", text: "Krummsäbel", preis: "100 GS" },
        { kategorie: "Schwerter", text: "Langschwert", preis: "100 GS" },

        { kategorie: "Stangenwaffen", text: "Glefe", preis: "30 GS" },
        { kategorie: "Stangenwaffen", text: "Hellebarde", preis: "50 GS" },
        { kategorie: "Stangenwaffen", text: "Stielhammer", preis: "50 GS" },

        { kategorie: "Stichwaffen", text: "Dolch", preis: "5 GS" },
        { kategorie: "Stichwaffen", text: "Kurzschwert", preis: "20 GS" },
        { kategorie: "Stichwaffen", text: "Ochsenzunge", preis: "10 GS" },
        { kategorie: "Stichwaffen", text: "Stilett", preis: "5 GS" },

        { kategorie: "Stockwaffen", text: "Bo-Stab", preis: "10 GS" },
        { kategorie: "Stockwaffen", text: "Kampfstab", preis: "10 GS" },

        { kategorie: "Zauberstäbe", text: "Magierstab", preis: "15 GS" },
        { kategorie: "Zauberstäbe", text: "Magierstecken", preis: "20 GS" },

        { kategorie: "Stielwurfwaffen", text: "Wurfaxt", preis: "25 GS" },
        { kategorie: "Stielwurfwaffen", text: "Wurfeisen", preis: "30 GS" },
        { kategorie: "Stielwurfwaffen", text: "Wurfhammer", preis: "25 GS" },
        { kategorie: "Stielwurfwaffen", text: "Wurfkeule", preis: "12 GS" },

        { kategorie: "Wurfklingen", text: "Wurfmesser", preis: "10 GS" },
        { kategorie: "Wurfklingen", text: "Wurfpfeil", preis: "3 GS" },

        { kategorie: "Wurfscheiben", text: "Wurfscheibe", preis: "2 GS" },
        { kategorie: "Wurfscheiben", text: "Wurfstern", preis: "1 GS" },

        { kategorie: "Wurfspieße", text: "Speerschleuder", preis: "8 GS" },
        { kategorie: "Wurfspieße", text: "Wurfspeer", preis: "6 GS" },
        { kategorie: "Wurfspieße", text: "Wurfspieß", preis: "8 GS" },

        { kategorie: "Armbrüste", text: "leichte Armbrust", preis: "40 GS" },
        { kategorie: "Armbrüste", text: "schwere Armbrust", preis: "40 GS" },
        { kategorie: "Armbrüste", text: "Handarmbrust", preis: "100 GS" },
        { kategorie: "Armbrüste", text: "10 Armbrustbolzen", preis: "3 GS" },

        { kategorie: "Blasrohre", text: "Blasrohr, kurz", preis: "5 GS" },
        { kategorie: "Blasrohre", text: "Blasrohr, lang", preis: "8 GS" },
        { kategorie: "Blasrohre", text: "10 Blasrohrnadeln", preis: "1 GS" },

        { kategorie: "Bögen", text: "Bogen", preis: "15 GS" },
        { kategorie: "Bögen", text: "Kompositbogen", preis: "nur geschenkt" },
        { kategorie: "Bögen", text: "Kurzbogen", preis: "15 GS" },
        { kategorie: "Bögen", text: "Langbogen", preis: "40 GS" },
        { kategorie: "Bögen", text: "10 Pfeile", preis: "2 GS" },

        { kategorie: "Schleudern", text: "Schleuder", preis: "1 GS" },
        { kategorie: "Schleudern", text: "Stockschleuder", preis: "7 GS" },
        { kategorie: "Schleudern", text: "10 Bleikugeln", preis: "1 GS" },

        { kategorie: "Parierwaffen", text: "Kampfgabeln (Paar)", preis: "15 GS" },
        { kategorie: "Parierwaffen", text: "Parierdolch", preis: "8 GS" },

        { kategorie: "Schilde", text: "Buckler", preis: "10 GS" },
        { kategorie: "Schilde", text: "kleiner Schild", preis: "10 GS" },
        { kategorie: "Schilde", text: "großer Schild", preis: "15 GS" },

        { kategorie: "Rüstungen", text: "Textilrüstung (TR)", preis: "20 GS" },
        { kategorie: "Rüstungen", text: "Lederrüstung (LR)", preis: "30 GS" },
        { kategorie: "Rüstungen", text: "Kettenrüstung (KR)", preis: "100 GS" },
        { kategorie: "Rüstungen", text: "Plattenrüstung (PR)", preis: "500 GS" },
        { kategorie: "Rüstungen", text: "Vollrüstung (VR)", preis: "600 GS" },
        { kategorie: "Rüstungen", text: "gepolstertes Unterkleid", preis: "5 GS" },
        { kategorie: "Rüstungen", text: "Metallhandschuhe", preis: "30 GS" },
        { kategorie: "Rüstungen", text: "Hals- und Nackenschutz", preis: "20 GS" },
        { kategorie: "Rüstungen", text: "Lederhelm", preis: "5 GS" },
        { kategorie: "Rüstungen", text: "Metallhelm ohne Visier", preis: "35 GS" },
        { kategorie: "Rüstungen", text: "Metallhelm mit Visier", preis: "75 GS" },
        { kategorie: "Rüstungen", text: "Lederarmschienen", preis: "8 GS" },
        { kategorie: "Rüstungen", text: "Metallarmschienen", preis: "20 GS" },
        { kategorie: "Rüstungen", text: "Lederbeinschienen", preis: "10 GS" },
        { kategorie: "Rüstungen", text: "Metallbeinschienen", preis: "25 GS" },

        { kategorie: "Waffenzubehör", text: "einfacher Waffengürtel", preis: "2 GS" },
        { kategorie: "Waffenzubehör", text: "verzierter Waffengürtel", preis: "3 GS" },
        { kategorie: "Waffenzubehör", text: "einfache Schwertscheide", preis: "5 GS" },
        { kategorie: "Waffenzubehör", text: "verzierte Schwertscheide", preis: "20 GS" },
        { kategorie: "Waffenzubehör", text: "Köcher für 20 Pfeile", preis: "2 GS" },
        { kategorie: "Waffenzubehör", text: "Köcher für 30 Bolzen", preis: "2 GS" },
        { kategorie: "Waffenzubehör", text: "Ledertasche für 50 Bleikugeln", preis: "3 GS" },
        { kategorie: "Waffenzubehör", text: "einfache Dolchscheide", preis: "2 GS" },
        { kategorie: "Waffenzubehör", text: "verzierte Dolchscheide", preis: "6 GS" },
        { kategorie: "Waffenzubehör", text: "Schultergurt für 3 Wurfmesser", preis: "8 GS" },
        { kategorie: "Waffenzubehör", text: "Gurt für 5 Wurfpfeile", preis: "5 GS" },
        { kategorie: "Waffenzubehör", text: "Spezialanfertigungen", preis: "20 GS" },

        { kategorie: "Kleidung", text: "Hose", preis: "5 GS" },
        { kategorie: "Kleidung", text: "Rock, Kilt", preis: "3 GS" },
        { kategorie: "Kleidung", text: "Hemd", preis: "3 GS" },
        { kategorie: "Kleidung", text: "Tunika", preis: "5 GS" },
        { kategorie: "Kleidung", text: "Umhang", preis: "8 GS" },
        { kategorie: "Kleidung", text: "warme Oberbekleidung", preis: "30 GS" },
        { kategorie: "Kleidung", text: "Sandalen, Schuhe", preis: "5 GS" },
        { kategorie: "Kleidung", text: "Stiefel, halbhoch", preis: "8 GS" },
        { kategorie: "Kleidung", text: "Stiefel, bis zum Knie", preis: "15 GS" },
        { kategorie: "Kleidung", text: "Robe, Kutte, Kleid", preis: "15 GS" },
        { kategorie: "Kleidung", text: "Gürtel", preis: "2 GS" },
        { kategorie: "Kleidung", text: "Lederhandschuhe", preis: "3 GS" },
        { kategorie: "Kleidung", text: "Wollmütze", preis: "1 GS" },
        { kategorie: "Kleidung", text: "Stoffhut", preis: "2 GS" },
        { kategorie: "Kleidung", text: "Adelskleidung", preis: "Kosten x 5" },
        { kategorie: "Kleidung", text: "einfache Kleidung", preis: "Kosten /3" },

     ]

}
