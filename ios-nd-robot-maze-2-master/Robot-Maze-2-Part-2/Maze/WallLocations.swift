//
//  CollectingDataAboutWalls.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/6/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        // You may want to paste your Part 1 implementation of isFacingWall() here
        switch(direction) {
        case .Up:
            if cell.top {
                isWall = true
            }
        case .Left:
            if cell.left {
                isWall = true
            }
        case .Down:
            if cell.bottom {
                isWall = true
            }
        case .Right:
            if cell.right {
                isWall = true
            }
        }
        
        return isWall
    }
    
    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check is there is a wall at the top of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        // Step 2.1a
        // TODO: Check if there is a wall at the bottom of the current cell
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls += 1
        }
        // TODO: Check if there is a wall to the left of the current cell
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        // Step 2.1b
        // TODO: Test the checkWalls function.
        // print statement in ControlCenter.swift file
        // TODO: Return a tuple representing the bools for top, right, down & left, and the number of walls
        // This tuple is a placeholder
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)
    }
}