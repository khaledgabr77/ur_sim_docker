#!/bin/bash
# Author: Mohamed Abdelkader
# mohamedashraf123@gmail.com

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src/
git clone https://github.com/IntelRealSense/realsense-ros.git
git clone --depth 1 https://github.com/pal-robotics/ddynamic_reconfigure
cd realsense-ros/
git checkout ros1-legacy
cd ~/catkin_ws
rosdep install --from-paths src --ignore-src -r -y


# source /opt/ros/${ROS_DISTRO}/setup.bash; cd catkin_ws; catkin build -DCATKIN_ENABLE_TESTING=False -DCMAKE_BUILD_TYPE=Release