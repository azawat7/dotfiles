pragma Singleton
import Quickshell

Singleton {
    readonly property string time: Qt.formatDateTime(clock.date, "hh:mm:ss")

    SystemClock {
        id: clock
        precision: SystemClock.Seconds
    }
}
