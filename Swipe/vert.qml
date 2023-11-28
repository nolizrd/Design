import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "SwipeView Example"

    SwipeView {
        id: swipeView
        currentIndex: 0
        anchors.fill: parent
        orientation: Qt.Vertical
        Item {
            id: redPage
            width: swipeView.width
            height: swipeView.height

            Rectangle {
                width: parent.width
                height: parent.height
                color: "red"
            }
        }

        Item {
            id: yellowPage
            width: swipeView.width
            height: swipeView.height

            Rectangle {

                width: parent.width
                height: parent.height
                color: "yellow"
            }
        }

        Item {
            id: greenPage
            width: swipeView.width
            height: swipeView.height
            Rectangle {
                width: parent.width
                height: parent.height
                color: "green"
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        interactive: SwipeView.ForceElasticity
        count: swipeView.count
        currentIndex: swipeView.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
