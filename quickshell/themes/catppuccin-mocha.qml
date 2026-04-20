pragma Singleton
import Quickshell
import QtQuick

Singleton {
    readonly property string font:  "CaskaydiaCove Nerd Font"

    readonly property color barBg:      Qt.rgba( 24/255,  24/255,  37/255, 1) // mantle
    readonly property color surface:    Qt.rgba( 49/255,  50/255,  68/255, 1) // surface0
    readonly property color accent:     Qt.rgba(137/255, 180/255, 250/255, 1) // blue
    readonly property color accentText: Qt.rgba( 17/255,  17/255,  27/255, 1) // crust
    readonly property color mutedText:  Qt.rgba(108/255, 112/255, 134/255, 1) // overlay0
    readonly property color text:       Qt.rgba(205/255, 214/255, 244/255, 1) // text
}
