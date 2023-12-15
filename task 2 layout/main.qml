import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id: win
    minimumWidth: 375
    width: 375
    height: 720
    visible: true
    title: qsTr("Layouts")

    GridLayout {
        id: loColumn
        columns: 1
        rows: 3
        anchors.fill: parent

        Comp {
            color: "#ADD8E6"
            id: comp_1
            anchors.top: loColumn.top
            Layout.fillWidth: true
            Text {
                text: "Header"
                anchors.centerIn: comp_1
                font.pixelSize: 16
            }
        }

        Comp {
            color: "#E0FFFF"
            id: comp_2
            Layout.alignment: Qt.AlignCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 10
            Text {
                text: "Content"
                anchors.centerIn: comp_2
                font.pixelSize: 16
            }
        }

        Comp {
            id: comp_3
            color: "#708090"
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            RowLayout {
                spacing: 6
                anchors.fill: parent

                Comp {
                    color: "#ADD8E6"
                    id: comp_4
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    Text {
                        text: "1"
                        anchors.centerIn: comp_4
                        font.pixelSize: 16
                    }
                }

                Comp {
                    color: "#ADD8E6"
                    id: comp_5
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    Text {
                        text: "2"
                        anchors.centerIn: comp_5
                        font.pixelSize: 16
                    }
                }

                Comp {
                    color: "#ADD8E6"
                    id: comp_6
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    Text {
                        text: "3"
                        anchors.centerIn: comp_6
                        font.pixelSize: 16
                    }
                }
            }
        }
    }
}
