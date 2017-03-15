%Define initial and target position of robot
%Written by: Prajval and Lou
%% 
clear all
clc
close all

robot_initial_pos=[1, 2];
robot_final_pos=[5, 5];
f=pathplan(robot_initial_pos,robot_final_pos);
environment;
pos=[robot_initial_pos;f;robot_final_pos];
%plot(robot_initial_pos,'x');
%plot(robot_final_pos,'x');

plot([robot_initial_pos(1),f(1,1)],[robot_initial_pos(2),f(1,2)],'b','LineWidth',2)
plot([f(2,1),f(1,1)],[f(2,2),f(1,2)],'r','LineWidth',2)
plot([f(2,1),robot_final_pos(1)],[f(2,2),robot_final_pos(2)],'y','LineWidth',2)
%plot([robot_initial_pos(1),f(1,1)],[robot_initial_pos(2),f(1,2)])
plot(pos(:,1),pos(:,2),'x')