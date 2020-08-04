import QtQuick 2.0
import Felgo 3.0

/*

*/

ListPage {

    model: [{ type: "Alltag", text: "Bootfahren" },
        { type: "Alltag", text: "Erste Hilfe" },
        { type: "Alltag", text: "Etikette" },
        { type: "Alltag", text: "Gerätekunde" },
        { type: "Alltag", text: "Geschäftssinn" },
        { type: "Alltag", text: "Glücksspiel" },
        { type: "Alltag", text: "Klettern" },
        { type: "Alltag", text: "Musizieren" },
        { type: "Alltag", text: "Reiten" },
        { type: "Alltag", text: "Schreiben" },
        { type: "Alltag", text: "Schwimmen" },
        { type: "Alltag", text: "Seilkunst" },
        { type: "Alltag", text: "Sprache" },
        { type: "Alltag", text: "Wagenlenken" },

        { type: "Freiland", text: "Naturkunde" },
        { type: "Freiland", text: "Pflanzenkunde" },
        { type: "Freiland", text: "Schleichen" },
        { type: "Freiland", text: "Spurensuche" },
        { type: "Freiland", text: "Tarnen" },
        { type: "Freiland", text: "Tierkunde" },
        { type: "Freiland", text: "Überleben" },

        { type: "Halbwelt", text: "Akrobatik" },
        { type: "Halbwelt", text: "Balancieren" },
        { type: "Halbwelt", text: "Betäuben" },
        { type: "Halbwelt", text: "Fälschen" },
        { type: "Halbwelt", text: "Gassenwissen" },
        { type: "Halbwelt", text: "Gaukeln" },
        { type: "Halbwelt", text: "Glücksspiel" },
        { type: "Halbwelt", text: "Klettern" },
        { type: "Halbwelt", text: "Stehlen" },

        { type: "Kampf", text: "Anführen" },
        { type: "Kampf", text: "Athletik" },
        { type: "Kampf", text: "Beidhändiger Kampf" },
        { type: "Kampf", text: "Betäuben" },
        { type: "Kampf", text: "Geländelauf" },
        { type: "Kampf", text: "Kampf in Vollrüstung" },
        { type: "Kampf", text: "Reiten" },
        { type: "Kampf", text: "Reiterkampf" },

        { type: "Körperbeherrschung", text: "Akrobatik" },
        { type: "Körperbeherrschung", text: "Athletik" },
        { type: "Körperbeherrschung", text: "Balancieren" },
        { type: "Körperbeherrschung", text: "Geländelauf" },
        { type: "Körperbeherrschung", text: "Klettern" },
        { type: "Körperbeherrschung", text: "Laufen" },
        { type: "Körperbeherrschung", text: "Meditieren" },
        { type: "Körperbeherrschung", text: "Schwimmen" },
        { type: "Körperbeherrschung", text: "Tauchen" },

        { type: "Sozial", text: "Anführen" },
        { type: "Sozial", text: "Beredsamkeit" },
        { type: "Sozial", text: "Etikette" },
        { type: "Sozial", text: "Gassenwissen" },
        { type: "Sozial", text: "Menschenkenntnis" },
        { type: "Sozial", text: "Verhören" },
        { type: "Sozial", text: "Verführen" },
        { type: "Sozial", text: "Verstellen" },
    ]

    section.property: "type"

}
