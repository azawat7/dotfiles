import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import "../themes"

Row {
    spacing: 5

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            width: modelData.focused ? 28 : 22
            height: 22
            radius: 6
            color: modelData.focused ? CatppuccinMocha.accent : CatppuccinMocha.surface

            Behavior on width { NumberAnimation { duration: 120; easing.type: Easing.OutCubic } }
            Behavior on color { ColorAnimation { duration: 120 } }

            StyledText {
                anchors.centerIn: parent
                text: modelData.id
                color: modelData.focused ? CatppuccinMocha.accentText : CatppuccinMocha.mutedText
                font.pixelSize: 11
                font.weight: modelData.focused ? Font.Bold : Font.Normal

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
