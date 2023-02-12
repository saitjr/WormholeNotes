#!/bin/sh

#  ci_post_xcodebuild.sh
#  WormholeNotes
#
#  Created by tangjiarong on 2023/2/1.
#  

echo "run ci_post_xcodebuild.sh"

ruby ./src/hooks/ci_post_xcodebuild.rb
