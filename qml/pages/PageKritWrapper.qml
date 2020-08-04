import QtQuick 2.0
import Felgo 3.0

/**
  NavStack für Seite.
  */
Page {

  //use theme setting for padding, aligns content with navigation bar items
  readonly property real contentPadding: dp(Theme.navigationBar.defaultBarItemPadding)

  // make page navigation-stack public, so app-demo launcher can track navigation changes and log screens with Google Analytics
  property alias childNavigationStack: navStack

  useSafeArea: false // fill whole screen

  NavigationStack {
    id: navStack

    /**
      Startseite
      */
    PageKrit {
    }
  }
}
