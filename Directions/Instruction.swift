//
//  Instruction.swift
//  Directions
//
//  Created by TJ Usiyan on 2017/03/31.
//  Copyright © 2017 Buttons and Lights LLC. All rights reserved.
//

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

    let pointX = (beginingLocation.x - finalLocation.x)
    let pointY = (beginingLocation.y - finalLocation.y)
    let numberOfBlocks = pointX + pointY
    return numberOfBlocks
}


func calculateMultiBlocks(startingLocation: Location, instructions: [(CardinalDirection, Int)]) -> Location {

    var tLocation = startingLocation
    for instruction in instructions {
    
        if instruction.0 == .north {
        tLocation.y = tLocation.y + instruction.1
        }else if instruction.0 == .east {
        tLocation.x = tLocation.x + instruction.1
        }else if instruction.0 == .south {
        tLocation.y = tLocation.y - instruction.1
        }else{
        tLocation.x = tLocation.x - instruction.1
        }
    
    }
   return tLocation

}


