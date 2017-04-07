//
//  Instruction.swift
//  Directions
//
//  Created by TJ Usiyan on 2017/03/31.
//  Copyright © 2017 Buttons and Lights LLC. All rights reserved.
//
enum BadInstructions {
    case north
    case east
    case south
    case west
    case right
    case left
}


enum Instruction {
    case left
    case right
}

typealias Location = (x: Int, y: Int)


func turn(_ instruction: Instruction, fromFacing original: CardinalDirection) -> CardinalDirection {
    
    if original == .north && instruction == .left // this left or right can be seperated in to true or false
    {
        return .west
    }else if original == .north && instruction == .right {
        return .east
    }else if original == .east && instruction == .left {
        return .north
    }else if original == .east && instruction == .right {
        return .south
    }else if original == .south && instruction == .left {
        return .east
    }else if original == .south && instruction == .right {
     return .west
    }else if original == .west && instruction == .left {
        return .south
    }else{
    return .north
    }
}


func move(_ facingDirection: CardinalDirection, _ location: Location, _ blocks: Int) -> Location {

    switch facingDirection {
    case .north:
        return (location.x, location.y + blocks)
    case .east:
        return (location.x + blocks, location.y)
    case .south:
        return (location.x, location.y - blocks)
    case .west:
        return (location.x - blocks, location.y)
      }
    
    
}


func travel(startLocation: Location, fromFacingCLocation: CardinalDirection, instruction: (Instruction, blocks: Int)) -> (Location, CardinalDirection) {
    let newInstruction = turn(instruction.0, fromFacing: fromFacingCLocation)
    let newLocation = move(newInstruction, startLocation, instruction.blocks)

     return (newLocation, newInstruction)
}



func multyTravel(startLocation: Location, facingDirection: CardinalDirection, instruction: [(Instruction, Int)]) -> (Location, CardinalDirection) {
    
    
    var currentDirection = facingDirection
    var currentLocation = startLocation
    
    for (instructions, blocks) in instruction {
    currentDirection = turn(instructions, fromFacing: currentDirection)
    currentLocation = move(currentDirection, currentLocation, blocks)
    }

    return (currentLocation, currentDirection)
}


func calculateBlocks(_ beginingLocation: Location, _ finalLocation: Location) -> Int {

    let pointX = (finalLocation.x - beginingLocation.x)
    let pointY = (finalLocation.y - beginingLocation.y)
    let numberOfBlocks = pointX + pointY
    return numberOfBlocks
}


func calculateMultiBlocks(startingLocation: Location, fromFacingDirection: CardinalDirection,  instructions: [(Instruction, Int)]) -> (Location, CardinalDirection) {

    var currentFacingDirection = fromFacingDirection
    var currentLocation = startingLocation
    
    for (instruction, numberOfBlocks) in instructions {
    
    currentFacingDirection = turn(instruction, fromFacing: currentFacingDirection)
    currentLocation = move(currentFacingDirection, currentLocation, numberOfBlocks)

    
    }
   return (currentLocation, currentFacingDirection)

}






/////Step 2




func multyTravel2(startLocation: Location, instruction: [(CardinalDirection, Int)]) -> Location {
    
    
    var travelDistance = startLocation
    
    for (coordination, blocks) in instruction {
    
        switch coordination {
        case .east:
          travelDistance.x = travelDistance.x + blocks
        case .west:
            travelDistance.x = travelDistance.x - blocks
        case .north:
            travelDistance.y = travelDistance.y + blocks
        case .south:
            travelDistance.y = travelDistance.x - blocks
        
        }
    }
    return travelDistance
}


////////////Turn2 fuction for Cardinal Direction


func turnWithBadInstructions(_ startingPoint: Location, badInstructions: [(BadInstructions, Int)]) -> Location {
    var currentFacingDirection: BadInstructions = .north
    var currentLocation = startingPoint
    for (coordination, blocks) in badInstructions {
    
        switch coordination {
        case .north:
            currentLocation.y = currentLocation.y + blocks
            currentFacingDirection = .north
        case .east:
            currentLocation.x = currentLocation.x + blocks
            currentFacingDirection = .east
        case .south:
            currentLocation.y = currentLocation.y - blocks
            currentFacingDirection = .south
        case .west:
            currentLocation.x = currentLocation.x - blocks
            currentFacingDirection = .west
        case .left:
            if currentFacingDirection == .north {
                currentLocation.x = currentLocation.x - blocks
                currentFacingDirection = .west
            }else if currentFacingDirection == .east{
                currentLocation.y = currentLocation.y - blocks
                currentFacingDirection = .east
            }else if currentFacingDirection == .south {
                currentLocation.x = currentLocation.x + blocks
                currentFacingDirection = .south
            }else{
                currentFacingDirection = .west
                currentLocation.y = currentLocation.y - blocks
            }
        case .right:
            if currentFacingDirection == .north {
                currentLocation.x = currentLocation.x + blocks
                currentFacingDirection = .east
            }else if currentFacingDirection == .east{
                currentLocation.y = currentLocation.y - blocks
                currentFacingDirection = .south
            }else if currentFacingDirection == .south {
                currentLocation.x = currentLocation.x - blocks
                currentFacingDirection = .west
            }else{
                currentFacingDirection = .north
                currentLocation.y = currentLocation.y + blocks
            }
        }
    }
    return currentLocation
}




