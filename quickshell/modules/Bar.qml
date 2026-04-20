import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import "../components"
import "../themes"

PanelWindow {
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

            Workspaces {}

            Item { Layout.fillWidth: true }

            Clock {}
        }
    }
}
