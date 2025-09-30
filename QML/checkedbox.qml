CheckBox {
        id: myCheckBox
        height: 100
        width: 400
        checked: false
        anchors.centerIn: parent
        text:  "Check me"

        onCheckedChanged: {
            console.log("Status: "+ checked)
        }

        background: Rectangle {
            border.width: 5
            border.color: "#fdcb6e"
        }

        indicator: Rectangle {
            id: myCheckBoxindicator
            implicitHeight: 50
            implicitWidth: 50
            radius: 10
            color:"#ff7675"
        }

        // Rectangle to show/hide based on checkbox
        Rectangle {
            id: myRect
            visible: myCheckBox.checked
            color: "#00cec9"
            radius: 5
            anchors.fill: myCheckBoxindicator
            anchors.margins: 5
        }
    }
