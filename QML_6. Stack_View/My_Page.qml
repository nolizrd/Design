import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    id: root

    property alias backgroundColor: back_fon.color
    property alias buttonText: batton_nav.text
    property alias secondButtonText: second_batton_nav.text
    signal buttonClicked()
    signal secondButtonClicked()

    // Add a property to store the previous page
    property Item previousPage: null

    header: ToolBar {
        id: page_header
        height: 40

        RowLayout {
            ToolButton {
                id: back_btn
                Text {
                    text: "<-"
                    font.pixelSize: 24
                    visible: stack_view.depth > 1
                }
                onClicked: {
                    if (stack_view.depth > 1) {
                        stack_view.pop();
                    }
                }
            }

            Text {
                id: header_page_text
                anchors.centerIn: page_header
            }
        }
    }

    background: Rectangle {
        id: back_fon
    }

    Button {
        id: batton_nav
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            previousPage = page_green; // Set the next page here
            stack_view.push(page_green);
        }
    }

    Button {
        id: second_batton_nav
        anchors.right: batton_nav.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            previousPage = page_yellow; // Set the next page here
            stack_view.push(page_yellow);
        }
    }
}
