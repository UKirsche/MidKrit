import QtQuick 2.5
import Felgo 3.0
import QtQuick.Controls 2.0 as Quick2


Page {
  title: qsTr("Midgard-Kritter")
  id: kritPage

  Quick2.ButtonGroup {
      buttons: contentCol.children
  }

  Column {
    id: contentCol
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.margins: contentPadding //In Mainpage gesetzt
    spacing: contentPadding

    /**
      Erklärungstext für App
      */
    AppText {
      width: parent.width
      color: Theme.secondaryTextColor
      font.italic: true
      text: "Zeigt die kritischen Kampf-Ergebnisse der Tabellen ab Seite 88 nach Midgard 5 an. "
      wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }

    /**
      Label für Würfelergebnis-Eingabe
      */
    AppText {
      width: parent.width
      font.bold:true
      wrapMode: Text.WrapAtWordBoundaryOrAnywhere
      text: qsTr("Würfelergebnis eingeben:")
    }


    /**
      Eingabefeld für das Würfelergebnis
      */
    AppTextField {
      id: diceInput
      width: parent.width
      font.pixelSize: sp(20)
      borderColor: '#000000'
      backgroundColor: "#F3F4F6"
      validator: IntValidator {bottom: 1; top: 100;}
      focus: true
      showClearButton: true
      placeholderText: qsTr("W100")
      inputMethodHints: Qt.ImhNoPredictiveText
      onEditingFinished: logicKrit.setDiceResult(diceInput.text)
    }

    /**
      Checkboxen für Art des kritischen Ereignisses
      */
    Quick2.RadioButton{
        checked: true
        text: qsTr("Kritischer Fehler beim Angriff")
        onClicked: logicKrit.setKritType(0)
    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Schaden")
        onClicked: logicKrit.setKritType(1)

    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Fehler bei der Abwehr")
        onClicked: logicKrit.setKritType(2)

    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Erfolg bei der Abwehr")
        onClicked: logicKrit.setKritType(3)
    }

  }

  /**
    Suchergebnisse für Kritische Typen in der ListView
    */
  AppListView {
    id: listView
    width: parent.width
    anchors.top: contentCol.bottom
    anchors.bottom: parent.bottom

    visible: true

    // Show either the recents searches or the currently found locations depending on search mode
    model: dataModelKrit.results

    //Holt das Model aus der Listview und delegiert die einzelen Feldelemente weiter an die Column
    delegate: Component {
      Column{
          anchors.left: parent.left
          anchors.top: parent.top
          anchors.right: parent.right
          anchors.margins: dp(30) //In Mainpage gesetzt
          spacing: contentPadding

          AppText {
            text: qsTr("\nResultat für Bereich: "+modelData.wert)
            width: parent.width
            font.pixelSize: sp(14)
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
          }

          AppText {
            text: qsTr(modelData.ueber)
            width: parent.width
            font.pixelSize: sp(12)
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.italic: true
          }

          AppText {
            text: modelData.text
            width: parent.width
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
          }
      }
    }

    //Setzt den Leertext für die Listview
    emptyText.text: qsTr("Nix eingegeben.")
  }
}

