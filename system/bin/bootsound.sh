#!/system/bin/sh

echo PLAY bootup tone
#enable
#bootsound /system/media/audio/ui/bootup.wav -v 72 -D hw:0,0
tinymix "QUIN_MI2S_RX Audio Mixer MultiMedia1"   "1"
tinyplay /system/media/audio/ui/bootup.wav -v 72 -D hw:0,0
tinymix "QUIN_MI2S_RX Audio Mixer MultiMedia1"   "0"
echo STOP bootup tone
#disable
exit
