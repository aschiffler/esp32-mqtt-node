# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2022-05-08-14-31-53

# Install custom tools, runtime, etc.
RUN sudo apt-get install git wget flex bison gperf python3 python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
RUN 
USER gitpod
RUN mkdir -p ~/esp & \
    cd ~/esp & \
    git clone --recursive https://github.com/espressif/esp-idf.git
RUN cd ~/esp/esp-idf & \
    ./install.sh esp32