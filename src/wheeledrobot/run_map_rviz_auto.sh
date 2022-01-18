#!/bin/bash

cd FinalProject_ws
source devel/setup.bash
roslaunch follow_waypoints follow_waypoints.launch
roslaunch wheeledrobot map_rviz_amcl.launch
rostopic pub /start_journey std_msgs/Empty -1
wait

