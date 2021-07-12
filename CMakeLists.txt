cmake_minimum_required(VERSION 2.8)

project(docker_example) 

add_compile_options(-std=c++11) 

find_package(Eigen3 REQUIRED)

link_directories(${Eigen_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} "src/main.cpp") 

target_link_libraries(${PROJECT_NAME}
   ${Eigen_LIBRARIES}
   )