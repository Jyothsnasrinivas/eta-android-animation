#!/usr/bin/env sh

set -e

./gradlew assembleDebug
emulator @Nexus_5_API_23 -netdelay none -netspeed full
adb install -r /Users/jyothsnasrinivas/AndroidStudioProjects/EtaApplication/app/build/outputs/apk/debug/app-debug.apk

