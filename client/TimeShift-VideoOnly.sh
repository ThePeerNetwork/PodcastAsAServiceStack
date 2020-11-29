#!/bin/bash

set -euo  pipefail

SCENE_NAME="VideoOnly"
PROFILE_NAME="TSYSShow-TS-VideoOnly"
RECORD_LOCAL="no"


#DONT ALTER ANYTHING UNDER THIS LINE

#--scene <string>: Start with specific scene.
#If you have obs setup with specific scenes, you can easily control mic/desktop/camera as desired and simply alter the SCENE_NAME variable at top as needed

#--profile <string>: Use specific profile.
#Setup profiles in OBS for whatever endpoints you need (and make sure to alter the Stream Key as that will be your episode filename in the recorded file)

#Start obs with appropriate options as per variables at top of script....

if [ $RECORD_LOCAL == "no" ] ; then
obs --minimize-to-tray --startstreaming --scene $SCENE_NAME --profile $PROFILE_NAME
fi

if [ $RECORD_LOCAL == "yes" ] ; then
obs --minimize-to-tray --startstreaming --startrecording --scene $SCENE_NAME --profile $PROFILE_NAME
fi

