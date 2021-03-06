import QtQuick 2.0
import Felgo 3.0

import "pages"
import "model"


/**
  Komponente Kritischer Schaden verweist auf folgende weitereführend Flux-Elemente
  - DataModel (dataModel)
  - Logic (logic)
  - PageWrapper für Kritischen Schaden
  */
Item {
  anchors.fill: parent

  DataModel {
    id: dataModelKrit
    dispatcher: logicKrit
  }

  Logic{
    id: logicKrit
  }

  Hauptnavigation { }
}

