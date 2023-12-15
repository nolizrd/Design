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
            color: "#87CEEB" // Sky Blue
            id: comp_1
            anchors.top: loColumn.top
            Layout.fillWidth: true
            Text {
                id: text_com1
                text: "Море волнуется"
                anchors.centerIn: comp_1
            }
        }
        Comp {
            color: "#ADD8E6" // Light Blue
            id: comp_2
            Layout.alignment: Qt.AlignCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 10
            Text {
                id: name
                text: qsTr("Большая волна в Канагаве-Кацусика Хокусай")
                anchors.centerIn: comp_2
            }
            Image {
                id: photoPreview
                anchors.centerIn: comp_2
                source: "img"
            }
        }
        Comp {
            id: comp_3
            color: "#4682B4" // Steel Blue
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            RowLayout {
                spacing: 6
                anchors.fill: parent
                Comp {
                    id: comp_4
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    color: mouse.containsMouse ? "#87CEEB" : "#4682B4" // Sky Blue or Steel Blue
                    Text {
                        text: "1"
                        anchors.centerIn: comp_4
                    }
                    MouseArea {
                        id: mouse
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked: {
                            console.log("area clicked com4")
                            photoPreview.source = "qrc:/3.png"
                            text_com1.text = "Раз"
                            comp_4.opacity = 1
                            comp_5.opacity = 0.5
                            comp_6.opacity = 0.5
                        }
                    }
                }
                Comp {
                    id: comp_5
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    color: mouse1.containsMouse ? "#87CEEB" : "#4682B4" // Sky Blue or Steel Blue
                    Text {
                        text: "2"
                        anchors.centerIn: comp_5
                    }
                    MouseArea {
                        id: mouse1
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked: {
                            console.log("area clicked com5")
                            photoPreview.source = "qrc:/2.png"
                            text_com1.text = "Два"
                            comp_4.opacity = 0.5
                            comp_5.opacity = 1
                            comp_6.opacity = 0.5
                        }
                    }
                }
                Comp {
                    id: comp_6
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    color: mouse2.containsMouse ? "#87CEEB" : "#4682B4" // Sky Blue or Steel Blue
                    Text {
                        text: "3"
                        anchors.centerIn: comp_6
                    }
                    MouseArea {
                        id: mouse2
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked: {
                            console.log("area clicked com6")
                            photoPreview.source = "qrc:/1.png"
                            text_com1.text = "Три"
                            comp_4.opacity = 0.5
                            comp_5.opacity = 0.5
                            comp_6.opacity = 1
                        }
                    }
                }
            }
        }
    }
}
