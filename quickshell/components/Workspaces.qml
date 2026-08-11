import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../themes"

Row {
    spacing: 5
    property var screen

    property var hyprMonitor: Hyprland.monitorFor(screen)

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            visible: hyprMonitor !== null && modelData.monitor === hyprMonitor
            readonly property bool activeOnScreen: hyprMonitor !== null && hyprMonitor.activeWorkspace !== null && hyprMonitor.activeWorkspace.id === modelData.id

            width: activeOnScreen ? 28 : 22
            height: 22
            radius: 6
            color: activeOnScreen ? CatppuccinMocha.accent : CatppuccinMocha.surface

            Behavior on width { NumberAnimation { duration: 120; easing.type: Easing.OutCubic } }
            Behavior on color { ColorAnimation { duration: 120 } }

            StyledText {
                anchors.centerIn: parent
                text: modelData.id
                color: activeOnScreen ? CatppuccinMocha.accentText : CatppuccinMocha.mutedText
                font.pixelSize: 11
                font.weight: activeOnScreen ? Font.Bold : Font.Normal

                Behavior on color { ColorAnimation { duration: 120 } }
            }

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: Hyprland.dispatch("workspace " + modelData.id)
            }
        }
    }
}
