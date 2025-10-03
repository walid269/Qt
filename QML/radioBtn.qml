Column {
        id: mainRow
        anchors.centerIn: parent
        spacing: 40

        Text {
            id: mytxt
            text: qsTr("Choose an option:")
            font.pixelSize: 18
            font.bold: true
            color: "#2c3e50"
        }

        // Reusable style for all RadioButtons
        RadioButton {
            id: radio_one
            text: "Option 1"
            font.pointSize: 14
            font.bold: true
            padding: 12
            spacing: 12   // spacing between indicator and text

            indicator: Rectangle {
                id: ind1
                width: 28
                height: 28
                radius: width / 2
                anchors.verticalCenter: parent.verticalCenter
                color: radio_one.checked ? "#e67e22" : "transparent"
                border.color: "#e67e22"
                border.width: 3
            }

            background: Rectangle {
                radius: 8
                border.color: radio_one.hovered ? "#d35400" : "#e67e22"
                border.width: 2
                color: radio_one.checked ? "#fad390" : "transparent"
            }

            onCheckedChanged: console.log("Option 1 checked:", radio_one.checked)
        }


        RadioButton {
            id: radio_two
            text: "Option 2"
            font.pointSize: 14
            font.bold: true
            padding: 12
            spacing: 12  // space between indicator and text

            indicator: Rectangle {
                width: 28
                height: 28
                radius: width / 2
                anchors.verticalCenter: parent.verticalCenter
                color: radio_two.checked ? "#27ae60" : "transparent"
                border.color: "#27ae60"
                border.width: 3
            }

            background: Rectangle {
                radius: 8
                border.color: radio_two.hovered ? "#229954" : "#27ae60"
                border.width: 2
                color: radio_two.checked ? "#badc58" : "transparent"
            }
        }

        RadioButton {
            id: radio_three
            text: "Option 3"
            font.pointSize: 14
            font.bold: true
            padding: 12
            spacing: 12

            indicator: Rectangle {
                width: 28
                height: 28
                radius: width / 2
                anchors.verticalCenter: parent.verticalCenter
                color: radio_three.checked ? "#8e44ad" : "transparent"
                border.color: "#8e44ad"
                border.width: 3
            }

            background: Rectangle {
                radius: 8
                border.color: radio_three.hovered ? "#6c3483" : "#8e44ad"
                border.width: 2
                color: radio_three.checked ? "#d2b4de" : "transparent"
            }
        }



    }
