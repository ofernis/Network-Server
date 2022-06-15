cmake_minimum_required(VERSION 3.10)
project(ContinuousBuild)

set(CMAKE_CXX_STANDARD 14)

add_executable(ContinuousBuild queue.c queue.h queue_tests.c)
