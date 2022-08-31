# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full:2022-05-08-14-31-53

# Install custom tools, runtime, etc.
python3 -m pip install --upgrade pip
USER gitpod
RUN  pip install --upgrade platformio
RUN  pio pkg install -p espressif32@5.1.1
RUN  pio pkg install -t toolchain-esp32ulp -t framework-espidf -t tool-cmake -t tool-ninja -t toolchain-xtensa-esp32 -t tool-esptoolpy
