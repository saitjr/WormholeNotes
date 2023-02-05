#!/bin/sh

#  ci_post_clone.sh
#  WormholeNotes
#
#  Created by tangjiarong on 2023/2/1.
#  

echo "run ci_post_clone.sh"

pwd

ruby -v 

ruby ./ci_scripts/src/hooks/ci_post_clone.rb

exit 1
