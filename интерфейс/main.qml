import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Window {
    id: win
    minimumWidth: 375
    width: 375
    height: 720
    visible: true
    GridLayout{
        id: loColumn
        columns: 1
        rows: 3
        anchors.fill: parent

        Rect {
            color: "#ADD8E6" // Light Blue
            id: comp_1
            anchors.top: loColumn.top
            Layout.fillWidth: true

            Text {
                id: text_com1
                text: "Море волнуется"
                anchors.centerIn: comp_1
            }

            Button {
                id: button
                text: "Back"
                opacity: 0
                anchors {
                    top: comp_1.top
                    right: comp_1.right
                    topMargin: 10 // 10px отступ от верхнего края
                    rightMargin: 10 // 10px отступ от правого края
                }

                background: Rectangle {
                    implicitWidth: 50
                    implicitHeight: 20
                    color: "white"
                    radius: 4
                }

                onClicked: {
                    if (comp_3.state === "stage_3") {
                        comp_3.state = "stage_2";
                    } else if (comp_3.state === "stage_2") {
                        comp_3.state = "stage_1";
                    } else if (comp_3.state === "stage_1") {
                        comp_3.state = "start";
                    }
                }
            }
        }

        Rect {
            color: "#B0E0E6" // Powder Blue
            id: comp_2
            Layout.alignment: Qt.AlignCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 10

            Text {
                id: name
                text: qsTr("img")
                anchors.centerIn: comp_2
            }

            Image {
                id: photoPreview
                anchors.centerIn: comp_2
                source: "img"
            }
        }

        Rect {
            id: comp_3
            color: "white"
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true

            RowLayout {
                spacing: 6
                anchors.fill: parent

                Rect {
                    id: comp_4
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    color: "#1E90FF" // Dodger Blue
                    Text {
                        text: "1"
                        anchors.centerIn: comp_4
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (comp_3.state === "start") {
                                comp_3.state = "stage_1";
                            } else if (comp_3.state === "stage_2") {
                                comp_3.state = "stage_1";
                            } else if (comp_3.state === "stage_3") {
                                comp_3.state = "stage_1";
                            }
                        }
                    }
                }

                Rect {
                    id: comp_5
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    color: "#1E90FF" // Dodger Blue
                    Text {
                        text: "2"
                        anchors.centerIn: comp_5
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (comp_3.state === "start") {
                                comp_3.state = "stage_2";
                            } else if (comp_3.state === "stage_1") {
                                comp_3.state = "stage_2";
                            } else if (comp_3.state === "stage_3") {
                                comp_3.state = "stage_2";
                            }
                        }
                    }
                }

                Rect {
                    id: comp_6
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    color: "#1E90FF" // Dodger Blue
                    Text {
                        text: "3"
                        anchors.centerIn: comp_6
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (comp_3.state === "start") {
                                comp_3.state = "stage_3";
                            } else if (comp_3.state === "stage_1") {
                                comp_3.state = "stage_3";
                            } else if (comp_3.state === "stage_2") {
                                comp_3.state = "stage_3";
                            }
                        }
                    }
                }
            }

            states: [
                State {
                    name: "start"
                    PropertyChanges { target: text_com1; text: "Море волнуется" }
                    PropertyChanges { target: photoPreview; source: "img" }
                    PropertyChanges { target: comp_4; opacity: 1 }
                    PropertyChanges { target: comp_5; opacity: 1 }
                    PropertyChanges { target: comp_6; opacity: 1 }
                },
                State {
                    name: "stage_1"
                    PropertyChanges { target: text_com1; text: "Раз" }
                    PropertyChanges { target: photoPreview; source: "qrc:/3.png" }
                    PropertyChanges { target: button; opacity: 1 }
                    PropertyChanges { target: comp_4; opacity: 1 }
                    PropertyChanges { target: comp_5; opacity: 0.5 }
                    PropertyChanges { target: comp_6; opacity: 0.5 }
                },
                State {
                    name: "stage_2"
                    PropertyChanges { target: text_com1; text: "Два" }
                    PropertyChanges { target: photoPreview; source: "qrc:/2.png" }
                    PropertyChanges { target: button; opacity: 1 }
                    PropertyChanges { target: comp_4; opacity: 0.5 }
                    PropertyChanges { target: comp_5; opacity: 1 }
                    PropertyChanges { target: comp_6; opacity: 0.5 }
                },
                State {
                    name: "stage_3"
                    PropertyChanges { target: text_com1; text: "Три" }
                    PropertyChanges { target: photoPreview; source: "qrc:/1.png" }
                    PropertyChanges { target: button; opacity: 1 }
                    PropertyChanges { target: comp_4; opacity: 0.5 }
                    PropertyChanges { target: comp_5; opacity: 0.5 }
                    PropertyChanges { target: comp_6; opacity: 1 }
                }
            ]
            state: "start"
            transitions: [
                Transition {
                    from: "start"
                    to: "stage_1"
                    PropertyAnimation {
                        target: comp_5
                        property: "opacity"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: comp_6
                        property: "opacity"
                        duration: 500
                    }
                },
                Transition {
                    from: "stage_1"
                    to: "stage_2"
                    PropertyAnimation {
                        target: comp_4
                        property: "opacity"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: comp_6
                        property: "opacity"
                        duration: 500
                    }
                },
                Transition {
                    from: "stage_2"
                    to: "stage_3"
                    PropertyAnimation {
                        target: comp_4
                        property: "opacity"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: comp_5
                        property: "opacity"
                        duration: 500
                    }
                },
                Transition {
                    from: "stage_3"
                    to: "start"
                    PropertyAnimation {
                        target: comp_4
                        property: "opacity"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: comp_5
                        property: "opacity"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: comp_6
                        property: "opacity"
                        duration: 500
                    }
                }
            ]
        }
    }
}
