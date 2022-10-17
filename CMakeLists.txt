cmake_minimum_required(VERSION 3.16)
set(CMAKE_BINARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/esp-web-flash/build)

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(cedalo_mqtt_esp32)

target_add_binary_data(cedalo_mqtt_esp32.elf "main/mqtt_broker_cert.pem" TEXT)