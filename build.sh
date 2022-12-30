#!/usr/bin/env bash


# The following are useful bash safety options, and while they may not be needed
# in the current incarnation of this script, they're useful to have for future
# work.

# exit when a command fails
set -e
# treat unset variables as an error
set -u
# make pipes fail if any part of them fail
set -o pipefail
# print commands as they run
set -x

# Change directory to where this script is located, no matter where we are run
# from. ${0} is the name of the script, then the %/* strips off all characters
# after the last slash in that name.
cd "${0%/*}"

# compile our masterpeice to html
pandoc --standalone --css style.css disaster.md --output Prehistoric_Disaster.html
