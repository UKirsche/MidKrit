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

    AppText {
      width: parent.width
      font.pixelSize: sp(12)
      color: Theme.secondaryTextColor
      font.italic: true
      text: "Zeigt die kritischen Kampf-Ergebnisse der Tabellen ab Seite 88 nach Midgard 5 an. "
      wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    }


    AppText {
      width: parent.width
      wrapMode: Text.WrapAtWordBoundaryOrAnywhere
      font.pixelSize: sp(12)
      text: qsTr("Würfelergebnis eingeben:")
    }


    AppTextField {
      id: searchInput
      width: parent.width
      borderColor: '#000000'
      validator: IntValidator {bottom: 1; top: 100;}
      focus: true
      showClearButton: true
      placeholderText: qsTr("W100")
      inputMethodHints: Qt.ImhNoPredictiveText
      onEditingFinished: logic.setDiceResult(searchInput.text)
    }

    Quick2.RadioButton{
        checked: true
        text: qsTr("Kritischer Fehler beim Angriff")
        onClicked: logic.setKritType(0)
    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Schaden")
        onClicked: logic.setKritType(1)

    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Fehler bei der Abwehr")
        onClicked: logic.setKritType(2)

    }
    Quick2.RadioButton{
        text: qsTr("Kritischer Erfolg bei der Abwehr")
    }

  }
}

