#!/bin/bash

SINK="@DEFAULT_SINK@"
SOURCE="@DEFAULT_SOURCE@"
STEP=1

notify_volume() {
    VOL=$(pactl get-sink-volume $SINK | awk '{print $5}')
    MUTE=$(pactl get-sink-mute $SINK | awk '{print $2}')
    if [ "$MUTE" = "yes" ]; then
        notify-send -h string:x-canonical-private-synchronous:volume -i audio-volume-muted "Volume: Muted"
    else
        notify-send -h string:x-canonical-private-synchronous:volume -i audio-volume-high "Volume: $VOL"
    fi
}

notify_mic() {
    VOL=$(pactl get-source-volume $SOURCE | awk '{print $5}')
    MUTE=$(pactl get-source-mute $SOURCE | awk '{print $2}')
    if [ "$MUTE" = "yes" ]; then
        notify-send -h string:x-canonical-private-synchronous:mic -i microphone-sensitivity-muted "Mic: Muted"
    else
        notify-send -h string:x-canonical-private-synchronous:mic -i microphone-sensitivity-high "Mic: $VOL"
    fi
}

case "$1" in
    --toggle)
        pactl set-sink-mute $SINK toggle
        notify_volume
        ;;
    --inc)
        pactl set-sink-volume $SINK +${STEP}%
        notify_volume
        ;;
    --dec)
        pactl set-sink-volume $SINK -${STEP}%
        notify_volume
        ;;
    --toggle-mic)
        pactl set-source-mute $SOURCE toggle
        notify_mic
        ;;
    --mic-inc)
        pactl set-source-volume $SOURCE +${STEP}%
        notify_mic
        ;;
    --mic-dec)
        pactl set-source-volume $SOURCE -${STEP}%
        notify_mic
        ;;
    *)
        echo "Usage: $0 {--toggle|--inc|--dec|--toggle-mic|--mic-inc|--mic-dec}"
        exit 1
        ;;
esac
