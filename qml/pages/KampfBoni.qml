import QtQuick 2.0
import Felgo 3.0

ListPage {

    // TODO add your model
    model: [{ type: "Fruits", text: "Banana" },
        { type: "Fruits", text: "Apple" },
        { type: "Vegetables", text: "Potato" }]

    section.property: "type"

}
