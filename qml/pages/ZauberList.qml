import QtQuick 2.0
import Felgo 3.0

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

ZauberList {

}

*/

ListPage {

    // TODO add your model
    model: [{ type: "Dweomerzauber", text: "Banana" },
        { type: "Dweomerzauber", text: "Bannen von Gift" },
        { type: "Dweomerzauber", text: "Bärenwut" },
        { type: "Dweomerzauber", text: "Baum" },
        { type: "Dweomerzauber", text: "Elfenfeuer" },
        { type: "Dweomerzauber", text: "Elfenklinge" },
        { type: "Dweomerzauber", text: "Erkennen von Gift" },
        { type: "Dweomerzauber", text: "Erkennen von Krankheit" },
        { type: "Dweomerzauber", text: "Feenfluch" },
        { type: "Dweomerzauber", text: "Feuerbienen" },
        { type: "Dweomerzauber", text: "Grüne Hand" },

        { type: "Wundertat", text: "Austreibung des Bösen" },
        { type: "Wundertat", text: "Bannen von Dunkelheit" },
        { type: "Wundertat", text: "Bannen von Finsterwerk" },
        { type: "Wundertat", text: "Bannen von Gift" },
        { type: "Wundertat", text: "Bannen von Dunkelheit" },
        { type: "Wundertat", text: "Blutmeisterschaft" },

        { type: "Zauberlied", text: "Das Lied der Feier" },
        { type: "Zauberlied", text: "Das Lied der Liebe" },
        { type: "Zauberlied", text: "Das Lied der Lockung" },
        { type: "Zauberlied", text: "Das Lied der Ruhe" },
        { type: "Zauberlied", text: "Das Lied der Tapferkeit" },
        { type: "Zauberlied", text: "Das Lied der Feier" },
        { type: "Zauberlied", text: "Das Lied der Feier" },
        { type: "Zauberlied", text: "Das Lied der Feier" },
        { type: "Zauberlied", text: "Das Lied der Feier" },
        { type: "Zauberlied", text: "Der einschläfernde Gesang" },
        { type: "Zauberlied", text: "Der frohlockende Gesan©çç©çg" },
        { type: "Zauberlied", text: "Bannen von Gift" },
        { type: "Zauberlied", text: "Bannen von Dunkelheit" },
        { type: "Zauberlied", text: "Blutmeisterschaft" },

    ]

    section.property: "type"

}
