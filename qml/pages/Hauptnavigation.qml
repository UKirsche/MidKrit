import QtQuick 2.0
import Felgo 3.0

/**
  Startseite
  */
Page {

  //use theme setting for padding, aligns content with navigation bar items
  readonly property real contentPadding: dp(Theme.navigationBar.defaultBarItemPadding)

  // make page navigation-stack public, so app-demo launcher can track navigation changes and log screens with Google Analytics
  property alias childNavigationStack: navStack

  useSafeArea: false // fill whole screen

  NavigationStack {
    id: navStack

    // Wrapper page
    Page {
      Navigation {
        id: navigation
        navigationMode: navigationModeTabs

        NavigationItem {
          id: fertigkeitenList
          title: qsTr("Fertigkeiten")
          icon: IconType.barcharto
          FertigkeitenList {}
        }

        NavigationItem {
          id: zauberList
          title: qsTr("Zauber")
          icon: IconType.magic
          ZauberList {}
        }

        NavigationItem {
          id: preisList
          title: qsTr("Preise")
          icon: IconType.money
          PreisList {}
        }

        NavigationItem {
          id: kampfBoni
          title: qsTr("Kampfboni")
          icon: IconType.dashboard
          KampfBoni {}
        }

        NavigationItem {
          title: qsTr("Kritisch")
          icon: IconType.bolt
          PageKrit {}
        }
      }
    }
  }
}
