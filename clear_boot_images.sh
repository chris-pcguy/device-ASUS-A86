#!/bin/bash

# in order to prevent accidental booting

adb shell "dd if=/dev/zero of=/dev/block/by-name/boot bs=2048"
adb shell "dd if=/dev/zero of=/dev/block/by-name/recovery bs=2048"

