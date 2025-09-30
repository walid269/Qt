Button
    {
        id: helloBtn
        height: 200
        width: 200
        text: "Hello BTN"
        anchors.centerIn: parent

        Text
        {
            id: mytxt
            text: "CLick Me"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.verticalAlignment
            elide: Text.ElideRight
            font.pointSize: 20
            font.bold: true
        }


        onClicked:
        {
            console.log("Btn is Clicked")
        }

        background: Rectangle
        {
            color: helloBtn.pressed ? "#2980b9" : "#e67e22"
            radius: 5
        }

    }
