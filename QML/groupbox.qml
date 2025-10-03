 GroupBox {
        title: "Crypter"
        background: Rectangle
        {
            border.color: "#e67e22"
            border.width: 3
            radius: 3
        }

        width: 200
        height: 100

        contentItem: Column {
            anchors.centerIn: parent
            spacing: 20

            ComboBox {
                id: myComboBox
                width: 100
                height: 40
                currentIndex: 0
                model: myListModel

                onActivated: function(index) {
                    console.log("Current Index is " + index)
                    console.log("Current Text is " + myComboBox.currentText)
                }

                background: Rectangle {
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#DBDBDB" }
                        GradientStop { position: 1.0; color: "#A08963" }
                    }
                    radius: 10
                }
            }

            TextField {
                id: mytxt
                width: 100
                height: 50
                placeholderText: qsTr("Name")
                font.pointSize: 20
                font.bold: true
                color: "#e67e22"

                validator: RegularExpressionValidator {
                    regularExpression: /[0-9]+/
                }

                onTextChanged: {
                    console.log("Text: " + mytxt.text)
                }

                background: Rectangle {
                    border.color: mytxt.activeFocus ? "#e67e22" : "#2980b9"
                    border.width: 2
                    radius: 10
                }
            }
        }

        ListModel {
            id: myListModel
            ListElement { key: "C" }
            ListElement { key: "C++" }
            ListElement { key: "Asm" }
            ListElement { key: "Kotlin" }
            ListElement { key: "Dart" }
            ListElement { key: "Python" }
        }
    }

