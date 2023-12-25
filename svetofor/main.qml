import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
Window {
    id:win
    minimumWidth: 375
    width: 375
    height: 720
    visible: true
    Rectangle{
        id: rect
        width: 300
        height: 600
        radius: 5
        color: "#C0C0C0"
        anchors.centerIn: parent
        GridLayout{
            columns: 1
            rows: 3
            rowSpacing: 16
            anchors.centerIn: rect
            Rect{
                border.color: "black"
                border.width: 2
                id: rect_red
                color: "#FF0033"
            }
            Rect{
                border.color: "black"
                border.width: 2
                id: rect_yellow
                color: "#FFFF33"
            }
            Rect{
                border.color: "black"
                border.width: 2
                id: rect_green
                color: "#99FF33"
            }

        }
        states:[
            State {
                name: "stop"
                PropertyChanges {target: rect_red; color: "#FF0033"}
                PropertyChanges {target:rect_yellow; color: "#303030"}
                PropertyChanges {target:rect_green; color: "#303030"}
            },
            State {
                name: "caution"
                PropertyChanges {target: rect_red; color: "#303030"}
                PropertyChanges {target:rect_yellow; color: "#FFFF33"}
                PropertyChanges {target:rect_green; color: "#303030"}
            },
            State {
                name: "go"
                PropertyChanges {target: rect_red; color: "#303030"}
                PropertyChanges {target:rect_yellow; color: "#303030"}
                PropertyChanges {target:rect_green; color: "#99FF33"}
            } ]

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                ColorAnimation {
                    target: rect_yellow
                    duration: 500 // 0.5 seconds
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    target: rect_green
                    duration: 500 // 0.5 seconds
                }
            },
            Transition {
                from: "go"
                to: "stop"
                ColorAnimation {
                    target: rect_red
                    duration: 500 // 0.5 seconds
                }
            }
        ]
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

    }

}
