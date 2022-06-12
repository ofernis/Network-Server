cmake_minimum_required(VERSION 3.0.0)
project(queue_og VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(Queue_og queue.c queue_tests.c)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
