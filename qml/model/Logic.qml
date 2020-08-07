import QtQuick 2.0
import Felgo 3.0

/**
  Eventbus für kritische Events zum Neusortieren des Models
  */
Item {

  signal setDiceResult(int dice)
  signal setKritType(int typeKrit)
}
