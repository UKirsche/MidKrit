import QtQuick 2.0
import Felgo 3.0

/**
  Seite zeigt Details zu den Fertigkeiten an. Properties werden über Model aus der Listpage gefüllt
  */
Page {

    title: qsTr("")
    property var modelZauber;

    Column{
        id: contentCol
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: contentPadding //In Mainpage gesetzt
        spacing: dp(2)

        /**
          Name
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(18)
              text: "Name: "
            }
            AppText {
              text: modelZauber.text
              fontSize: sp(18)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Art: Gedanke, Wort, Geste
          */
        Row{
            AppText {
              text: modelZauber.art
              font.italic: true
              fontSize: sp(10)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Prozess: Agens -> Reagens
          */
        Row{
            AppText {
              text: modelZauber.agens
              fontSize: sp(10)
              font.italic: true
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Linie
          */
        Row{
           LineItem {
                  points: [
                    {"x": 0, "y": 0},
                    {"x": contentCol.width/2, "y": 0}
                  ]
           }
        }

        /**
          AP-Kosten
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "AP-Verbrauch: "
            }
            AppText {
              text: modelZauber.ap
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Zauberdauer
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Zauberdauer: "
            }
            /**
              Erklärungstext für App
              */
            AppText {
              text: modelZauber.zd
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Reichweite
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Reichweite: "
            }
            AppText {
              text: modelZauber.reichweite
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Wirkungsziel
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Wirkungsziel: "
            }
            AppText {
              text: modelZauber.ziel
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Wirkungsbereich
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Wirkungsbereich: "
            }
            AppText {
              text: modelZauber.bereich
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Wirkungsdauer
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Wirkungsdauer: "
            }
            AppText {
              text: modelZauber.dauer
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }

        /**
          Ursprung
          */
        Row{
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              fontSize: sp(12)
              text: "Ursprung: "
            }
            AppText {
              text: modelZauber.ursprung
              fontSize: sp(12)
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
     }

    AppListView {
      id: listView
      width: parent.width
      anchors.top: contentCol.bottom
      anchors.bottom: parent.bottom
      anchors.margins:dp(5)
      visible: true

      // Show either the recents searches or the currently found locations depending on search mode
      model: [modelZauber]

      //Holt das Model aus der Listview und delegiert die einzelen Feldelemente weiter an die Column
      delegate: Component {
        Column{
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.margins: dp(15) //In Mainpage gesetzt
            spacing: contentPadding

            AppText {
              text: qsTr("\n"+modelData.beschreibung)
              width: parent.width
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
      }

      //Setzt den Leertext für die Listview
      emptyText.text: qsTr("Keine Beschreibung vorhanden.")
    }
}

