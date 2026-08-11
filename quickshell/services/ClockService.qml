pragma Singleton
import Quickshell

Singleton {
    readonly property string time: Qt.formatDateTime(clock.date, "hh:mm:ss")
    readonly property string date: Qt.formatDateTime(clock.date, "dd/MM/yyyy")

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
}
