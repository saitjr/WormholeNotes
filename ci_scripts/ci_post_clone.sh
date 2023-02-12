#!/bin/sh

#  ci_post_clone.sh
#  WormholeNotes
#
#  Created by tangjiarong on 2023/2/1.
#  

echo "run ci_post_clone.sh start"

pwd

ruby -v

exit

echo $CI_START_CONDITION

if [[ "$CI_START_CONDITION" != "manual" ]];
then
  echo "CI_START_CONDITION=$CI_START_CONDITION 不是手动触发，不处理"
  exit 1
fi

ruby ./src/hooks/ci_post_clone.rb

echo "run ci_post_clone.sh end"
