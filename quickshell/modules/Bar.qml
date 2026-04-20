import Quickshell
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import "../components"

PanelWindow {
    required property var modelData

    screen: modelData
    anchors.top: true
    anchors.left: true
    anchors.right: true
    implicitHeight: 30
    color: "#1a1b26"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 8

        Workspaces {}

        Item { Layout.fillWidth: true }

        Clock {}
    }
}
