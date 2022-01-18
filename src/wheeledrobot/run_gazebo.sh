#!/bin/bash

sudo killall gzserver
sudo killall gzclient
sudo killall rviz
sudo killall roscore
sudo killall rosmaster

roslaunch wheeledrobot_gazebo My_world.launch
