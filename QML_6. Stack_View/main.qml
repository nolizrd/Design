import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    property int defMargin: 10

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page_red
    }

    My_Page {
        id: page_red
        backgroundColor: "red"
        buttonText: "To_Green"
        onButtonClicked: {
            stack_view.push(page_green)
        }
        secondButtonText: "To_yellow"
        onSecondButtonClicked: {
            stack_view.push(page_yellow)
        }
    }

    My_Page {
        id: page_green
        visible: false
        backgroundColor: "green"
        buttonText: "To_Yellow"
        onButtonClicked: {
            stack_view.push(page_yellow)
        }
        secondButtonText: "To_Red"
        onSecondButtonClicked: {
            stack_view.push(page_red)
        }
    }

    My_Page {
        id: page_yellow
        visible: false
        backgroundColor: "yellow"
        buttonText: "To_Red"
        onButtonClicked: {
            stack_view.push(page_red)
        }
        secondButtonText: "To_Green"
        onSecondButtonClicked: {
            stack_view.push(page_green)
        }
    }
}
