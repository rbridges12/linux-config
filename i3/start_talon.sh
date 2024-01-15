#!/usr/bin/env sh

killall talon

while pgrep -x talon >/dev/null; do sleep 1; done

talon &