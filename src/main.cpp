#include <iostream>
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Dense>

int main()
{
    Eigen::Matrix3d Rotation; 
    Rotation.setIdentity();
    std::cout<<Rotation<<std::endl;
    return 0;
}