Use this image to enter into your docker servers virtual disk on a windows based docker system.

execute following command:


docker run -it --privileged --pid=host --name vmdisk johnarumemi/windows-vmdiska

Docker containers are "unprivileged" and cannot, for example, run a Docker daeom inside a Docker container".
This is because by default a container is not allowed to access any devices, but a "privileged"
container is given access to all devices.

When the operator executes docker run --privileged, Docker will enable access to all devices on the host as well as
set some configuration in AppArmor or SELinux to allow the container nearly all the same access to the host as processes running outside containers on the host.

If you want to limit access to a specific device or devices you can use the --device flag. 
It allows you to specify one or more devices that will be accessible within the container.
