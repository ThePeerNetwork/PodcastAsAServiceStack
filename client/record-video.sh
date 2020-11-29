#!/bin/bash

set -euo  pipefail

SCENE_NAME="StreamRemoteDesktop"
RECORD_LOCAL="no"


#DONT ALTER ANYTHING UNDER THIS LINE


if [ $RECORD_LOCAL == "no" ] ; then
obs --startstreaming --scene $SCENE_NAME
fi

if [ $RECORD_LOCAL == "yes" ] ; then
obs --startstreaming --scene $SCENE_NAME
fi



--startstreaming: Automatically start streaming.
--startrecording: Automatically start recording.
--startreplaybuffer: Start replay buffer.
--startvirtualcam: Start virtual camera (if available).

--collection <string>: Use specific scene collection.
--profile <string>: Use specific profile.
--scene <string>: Start with specific scene.

--studio-mode: Enable studio mode.
--minimize-to-tray: Minimize to system tray.
--portable, -p: Use portable mode.
--multi, -m: Don't warn when launching multiple instances.

--verbose: Make log more verbose.
--always-on-top: Start in 'always on top' mode.

--unfiltered_log: Make log unfiltered.

--disable-updater: Disable built-in updater (Windows/Mac only)

--version, -V: Get current version.
