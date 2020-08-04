import QtQuick 2.0
import Felgo 3.0

import "../pages"
import "../model"


/**
  Main-Item verweist auf für die Kritische Komponente
  - DataModel (dataModel)
  - Logic (logic)
  -
  */
Item {
  anchors.fill: parent

  DataModelKrit {
    id: dataModelKrit
    dispatcher: logicKrit
  }

  LogicKrit {
    id: logicKrit
  }

  PageKritWrapper { }
}

