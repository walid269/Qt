SpinBox {
        id: mySpinBox
        anchors.centerIn: parent
        width: 200
        height: 50
        from: 0
        to: 100
        stepSize: 10
        editable: true

        validator: IntValidator {
            bottom: mySpinBox.from
            top: mySpinBox.to
        }

        contentItem: TextInput {
            text: mySpinBox.textFromValue(mySpinBox.value, mySpinBox.locale)
            font.pointSize: 15
            font.bold: true
            color: "#485460"
            selectionColor: "#0fbcf9"
            selectedTextColor: "#d2dae2"
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            validator: mySpinBox.validator

            onTextChanged: {
                // Update value when text changes manually
                let n = parseInt(text)
                if (!isNaN(n)) mySpinBox.value = Math.min(mySpinBox.to, Math.max(mySpinBox.from, n))
            }
        }

        // Up button
        up.indicator: Rectangle {
            implicitWidth: 40
            implicitHeight: 40
            x: parent.width - width - 5
            y: (parent.height - height) / 2
            radius: 20
            color: pressed ? "#ff3f34" : "#00d8d6"
            border.width: 3
            border.color: "#3c40c6"

            property bool pressed: false

            Text {
                text: "+"
                anchors.centerIn: parent
                font.pointSize: 20
                color: "#1e272e"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: parent.pressed = true
                onReleased: {
                    parent.pressed = false
                    mySpinBox.value += mySpinBox.stepSize
                }
            }
        }

        // Down button
        down.indicator: Rectangle {
            implicitWidth: 40
            implicitHeight: 40
            x: 5
            y: (parent.height - height) / 2
            radius: 20
            color: pressed ? "#ff3f34" : "#00d8d6"
            border.width: 3
            border.color: "#3c40c6"

            property bool pressed: false

            Text {
                text: "-"
                anchors.centerIn: parent
                font.pointSize: 20
                color: "#1e272e"
            }

            MouseArea {
                anchors.fill: parent
                onPressed: parent.pressed = true
                onReleased: {
                    parent.pressed = false
                    mySpinBox.value -= mySpinBox.stepSize
                }
            }
        }

        background: Rectangle {
            border.color: "#1e272e"
            border.width: 5
            radius: 25
        }

        onValueChanged: console.log("SpinBox Value Is :", value)
    }
