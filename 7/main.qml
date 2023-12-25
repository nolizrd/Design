import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 340
    height: 650
    title: "Регистрация"

    background: Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "#D39B59" }
            GradientStop { position: 1; color: "#6E492A" }
        }
        Image {
            id: logo
            source: "qrc:/res/kuromi_white.png"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width / 1.5
            height: parent.height / 3
            fillMode: Image.PreserveAspectFit
        }

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 10

            RowLayout {
                spacing: 10
                width: parent.width

                Image {
                    id: dog
                    source: "qrc:/res/dog00.png"
                    width: 35
                    height: parent.height / 3
                }

                TextField {
                    id: login
                    placeholderText: "E-mail"
                    font.pixelSize: 14
                    background: null
                    color: "white"
                    Layout.fillWidth: true
                    Rectangle {
                        width: login.width
                        height: 2
                        color: "#C8C1B9"

                        anchors.left: dog.left // Align with the left of the dog image
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: login.bottom
                        anchors.topMargin: 1
                    }
                }
            }

            RowLayout {
                spacing: 16
                width: parent.width

                Image {
                    source: "qrc:/res/lock.png"
                    width: 35
                    height: parent.height / 3

                }

                TextField {
                    id: password
                    placeholderText: "Password"
                    font.pixelSize: 14
                    echoMode: TextInput.Password
                    background: null
                    color: "white"
                    Layout.fillWidth: true // Set the width to 272
                    Rectangle {
                        width: password.width
                        height: 2
                        color: "#C8C1B9"
                        anchors.left: dog.left // Align with the left of the dog image
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: password.bottom
                        anchors.topMargin: 1
                    }
                }
            }

            Button {
                        text: "Clear"
                        onClicked: {
                            login.text = "";
                            password.text = "";
                        }
                    }
            // Forgot password button
            MouseArea {
                anchors.top: password.bottom + 10
                id: forgotPasswordButton
                anchors.horizontalCenter: parent.horizontalCenter
                width: 272
                height: 20

                onClicked: {
                    console.log("Forgot password clicked")
                }

                Text {
                    anchors.centerIn: parent
                    text: "Forgot password?"
                    color: "white"
                    font.pixelSize: 12
                    font.underline: true
                }
            }

            // Continue with LOG button
            MouseArea {
                anchors.top: forgotPasswordButton.bottom + 10
                id: loginButton
                anchors.horizontalCenter: parent.horizontalCenter
                width: 272
                height: 40
                anchors.topMargin: 10
                onClicked: {
                    console.log("Нажата кнопка Login")
                }

                Rectangle {
                    anchors.horizontalCenter: loginButton.horizontalCenter
                    id: grad2
                    width: loginButton.width

                    height: loginButton.height
                    radius: height / 2
                    gradient: Gradient {
                        stops: [
                            GradientStop { position: 0.0; color: "#F9C487" },
                            GradientStop { position: 1.0; color: "#6E492A" }
                        ]
                    }

                    Rectangle {
                        id: logButton
                        anchors.horizontalCenter: grad2.horizontalCenter
                        anchors.verticalCenter: grad2.verticalCenter

                        width: loginButton.width-5
                        height: loginButton.height-5
                        radius: height / 2
                        color: "#FFFDFA"
                    }
                    Text {
                        anchors.centerIn: parent
                        text: "Login"
                        color: "brown"
                    }
                }
            }



            RowLayout {
                anchors.top: googleButton.bottom
                anchors.topMargin: 50
                anchors.horizontalCenter: googleButton.horizontalCenter
                spacing: 5

                            Rectangle {

                                width: 110
                                height: 1
                                color: "white"
                            }

                            Text {
                                text: "or"
                                color: "white"
                                font.pixelSize: 12
                            }

                            Rectangle {
                                width: 110
                                height: 1
                                color: "white"
                            }
                        }


            MouseArea {
                id: googleButton
                anchors.top: loginButton.bottom + 15
                anchors.horizontalCenter: parent.horizontalCenter
                width: 272
                height: 40



                Rectangle {

                        anchors.horizontalCenter: googleButton.horizontalCenter
                        id:grad1
                        width: 40
                        rotation: 90
                        height: 272
                        radius: height / 2
                        gradient: Gradient {
                                        stops: [
                                            GradientStop { position: 0.0; color: "#F9C487" },
                                            GradientStop { position: 1.0; color: "#6E492A" }
                                        ]
                                    }
                    Rectangle{
                        anchors.horizontalCenter: grad1.horizontalCenter
                        anchors.verticalCenter: grad1.verticalCenter
                    id: googleRect
                    rotation: 90
                    width: googleButton.width-5  // Set the width to 272
                    height: googleButton.height-5
                    radius: height / 2
                    color: "#6E492A"

                    Text {
                        rotation: 180
                        anchors.centerIn: parent
                        text: "Continue with Google"
                        color: "white"
                        font.underline: true
                    }
                }

                    MouseArea {
                                       anchors.fill: parent
                                       onClicked: {
                                           console.log("Continue with Google")
                                       }
                                   }
                    }



}
            // Continue with VK button
            MouseArea {
                id: vkButton
                anchors.top: googleButton.bottom + 10
                anchors.horizontalCenter: parent.horizontalCenter
                width: 0  // Set the width to 272
                height: 0

Rectangle{
    anchors.horizontalCenter: vkButton.horizontalCenter
    id:grad
    width: 40  // Set the width to 272
    rotation: 90
    height: 272
    radius: height / 2
    gradient: Gradient {
                    stops: [
                        GradientStop { position: 0.0; color: "#F9C487" },
                        GradientStop { position: 1.0; color: "#6E492A" }
                    ]
                }

                Rectangle {
                    anchors.horizontalCenter: grad.horizontalCenter
                    anchors.verticalCenter: grad.verticalCenter
                    id: vkRect
                    width: grad.width-5  // Set the width to 272
                    height: grad.height-5
                    radius: height / 2
                    color: "#6E492A"

                    Text {
                        rotation: 270
                        anchors.centerIn: parent
                        text: "Continue with VK"
                        color: "white"
                        font.underline: true
                    }

                }

                MouseArea {
                                   anchors.fill: parent
                                   onClicked: {
                                       console.log("Continue with VK")
                                   }
                               }
                }
            }
        }
    }
}
