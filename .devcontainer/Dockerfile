FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Install custom tools, runtime, etc.
USER root
RUN apt-get update && apt-get install -y \ 
    git wget flex bison gperf python3 python3-venv \
    cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 && \
    apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
RUN useradd vscode
RUN mkdir -p ~/esp && \
    cd ~/esp && \
    git clone --recursive https://github.com/espressif/esp-idf.git && \
    cd ~/esp/esp-idf && \
    ./install.sh esp32 && \
    ./install.sh esp32s2 && \
    rm -rf ~/esp/esp-idf/docs && \
    rm -rf ~/esp/esp-idf/examples
