import QtQuick
import "../services"

StyledText {
    text: ClockService.time + "  ·  " + ClockService.date
}
