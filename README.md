# MobileRobotics
Msc Robotic Final Project at Middlesex University 2022

firstly run roscore 

$ git clone https://github.com/CodeWithJo/MobileRobotics.git

$ cd ~/FinalProject_ws

$ catkin_make

$ rosdep install --from-paths src --ignore-src -r -y

$ cd FinalProject_ws

$ source devel/setup.bash

$ roslaunch follow_waypoints follow_waypoints.launch

$ roslaunch wheeledrobot map_rviz_amcl.launch

$ rostopic pub /start_journey std_msgs/Empty -1
