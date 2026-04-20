import QtQuick
import "../services"
import "../themes"

Text {
    color: CatppuccinMocha.text
    font.pixelSize: 12
    font.weight: Font.Medium
    font.letterSpacing: 0.5
    text: ClockService.time + "  ·  " + ClockService.date
}
