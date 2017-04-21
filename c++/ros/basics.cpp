// https://www.youtube.com/watch?v=PGZMlzBlMmw&list=PLSzYQGCXRW1HSDb_dXJ52tkcjZQB5PmhR&index=2


#include "ros/ros.h"


int main(int argc, char **argv)
{
	// Initiate new ROS node named "talker"
	ros::init(argc, argv, "talker");
	ros::NodeHandle n;
	
	velocity_publisher = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
	ros::Rate loop_rate(10);	// 10 messages per second
	
	ROS_INFO("\n\n\n ********START TESTING*********\n");
	
	
	
	