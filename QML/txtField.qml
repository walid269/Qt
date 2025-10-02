 TextField {
        id: mytxt
        x: 188
        y: 132
        width: 300
        height: 50
        placeholderText: qsTr("Name")
        font.pointSize: 20

        font.bold: true
        // validator: RegularExpressionValidator {
        //         regularExpression: /[0-9]+/
        //     }
        // echoMode: "Password"
        // passwordCharacter: "*"

        color: "#e67e22"
        onTextChanged:
        {
            console.log(mytxt.text)
        }

        background: Rectangle
        {
            border.color: mytxt.activeFocus ? "#e67e22" :  "#2980b9"
            border.width: 2
            radius: 10
        }

    }
