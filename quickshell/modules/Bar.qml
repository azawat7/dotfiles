import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import "../components"
import "../themes"

PanelWindow {
    id: root
    required property var modelData
    screen: modelData

    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 36
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        color: CatppuccinMocha.barBg

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: 1
            color: CatppuccinMocha.surface
        }

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 12
            anchors.rightMargin: 12
            spacing: 0

            Workspaces { screen: root.screen }

            Item { Layout.fillWidth: true }

            Clock {}
        }
    }
}
