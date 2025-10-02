    ComboBox{
        id:myComboBox
        width:100
        height:40
        anchors.centerIn: parent
        currentIndex: 0
        model: myListModel

        ListModel{
            id: myListModel
            ListElement{key:"C"}
            ListElement{key:"C++"}
            ListElement{key:"Asm"}
            ListElement{key:"Kotlin"}
            ListElement{key:"Dart"}
            ListElement{key:"Python"}

        }

        onActivated:
        {
            console.log("Current Index is " + myComboBox.currentIndex)
            console.log("Current Index is " + myComboBox.currentText)
        }

        background: Rectangle
        {
            gradient:Gradient
            {
                GradientStop {position: 0.0;color: "#DBDBDB"}
                GradientStop {position: 0.0;color: "#A08963"}
            }
            radius: 10
        }

    }
