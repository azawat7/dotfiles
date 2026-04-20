import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Row {
    spacing: 4

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            width: 24
            height: 24
            radius: 4
            color: modelData.focused ? "#7aa2f7" : "#3b4261"

            Text {
                anchors.centerIn: parent
                text: modelData.id
                color: "white"
                font.pixelSize: 12
            }

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + modelData.id)
            }
        }
    }
}
