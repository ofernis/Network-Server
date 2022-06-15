cmake_minimum_required(VERSION 3.10)
project(ContinuousBuild)

set(CMAKE_CXX_STANDARD 14)

add_executable(Queue_og queue.c queue_tests.c)
#add_executable(our_server queue.c request.c segel.c server.c)
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
