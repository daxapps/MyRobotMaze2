//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(myRobot: ComplexRobotObject) {
      
    // You may want to paste your Part 1 implementation of moveComplexRobot() here
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        
//        print(checkWalls(myRobot))
        
//        if robotIsBlocked{
//            randomlyRotateRightOrLeft(myRobot)
//        }else{
//            continueStraightOrRotate(myRobot)
//        }
        // Step 2.1c
        // TODO: Save the return value of checkWalls() to a constant called myWallInfo.
        let myWallInfo = checkWalls(myRobot)
        
        // Step 2.2a
        // Categorize the robot's current location based on the number of walls
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        
        // TODO: Define the constant, isTwoWayPath
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        
        // TODO: Define the constant, isDeadEnd
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        // Step 2.2b
        // Test whether the values of the above constants are correct
//        print(isThreeWayJunction)
//        print(isTwoWayPath)
//        print(isDeadEnd)
        
        // Step 2.3a
        // Three-way Path - else-if statements
        
        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        }
        
        // TODO: If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(myRobot)
        }
        
        // Step 2.3b
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        if isTwoWayPath && !robotIsBlocked {
            myRobot.move()
        }
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should randomly rotate.
        if isTwoWayPath && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        }
        
        
        // Step 2.3c
        // Dead end - else-if statements
        
        // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
        if isDeadEnd {
            if robotIsBlocked {
                myRobot.rotateRight()
            } else {
                myRobot.move()
            }
        }
        
        // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
}












