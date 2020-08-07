import QtQuick 2.0
import Felgo 3.0

/**
  Seite zeigt Details zu den Fertigkeiten an. Properties werden über Model aus der Listpage gefüllt
  */
Page {

    title: qsTr("")
    property var modelFertigkeit;

    Column{
        id: contentCol
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.margins: contentPadding //In Mainpage gesetzt
        spacing: contentPadding
        Row{
            /**
              Erklärungstext für App
              */
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              text: "Name: "
            }
            /**
              Erklärungstext für App
              */
            AppText {
              text: modelFertigkeit.text
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
        Row{
            /**
              Erklärungstext für App
              */
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              text: "Kategorie: "
            }
            /**
              Erklärungstext für App
              */
            AppText {
              text: modelFertigkeit.kategorie
              wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }
        }
        Row{
            /**
              Erklärungstext für App
              */
            AppText {
              color: Theme.secondaryTextColor
              font.italic: true
              text: "Ungelernt: "
            }
            /**
              Erklärungstext für App
              */
            AppText {
              text: modelFertigkeit.ungelernt
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
      model: [modelFertigkeit]

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
