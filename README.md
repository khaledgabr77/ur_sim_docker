# logistics_system_sim_docker
Docker image of a simulation environment for a logistics system, including robotic arm, conveyor belt and packages/parcels. 

* Ubuntu 20
* ROS `noetic` + Moveit!
* Gazebo 11
* Dev tools e.g. VSCode

# Building Docker Image
* Docker should be installed
* Clone this package `git clone https://github.com/mzahana/logistics_system_sim_docker.git`
* Build docker image
    ```bash
    cd logistics_system_sim_docker/docker
    make logistics_system_noetic_cuda11.7
    ```

# Run
* Run the following script to enter the docker container `logistics_system_sim`
    ```bash
    cd logistics_system_sim_docker
    ./run_logistics_container.sh
    ```
# Clone Packages
* You will need to clone some packages from source, such as the UR robots
* Add these packages in the shared volume. The shared volume in the host machine is in `$HOME/logistics_system_sim_shared_volume/`. And it is located inside the container in `/home/user/shared_volume`. This allows to share material easily between the container and the host machine. The `catkin_ws` is located inside the shared volume. ROS packages cloned from source should be inside the `catkin_ws/src` inside the shared volume.