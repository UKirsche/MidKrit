import QtQuick 2.0
import Felgo 3.0

import "pages"
import "model"

/**
  Main-Item verweist auf
  - DataModel (dataModel)
  - Logic (logic)
  -
  */
Item {
  anchors.fill: parent

  DataModel {
    id: dataModel
    dispatcher: logic
  }

  Logic {
    id: logic
  }

  KritPageWrapper { }
}
