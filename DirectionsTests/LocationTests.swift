//
//  LocationTests.swift
//  Directions
//
//  Created by TJ Usiyan on 2017/03/31.
//  Copyright © 2017 Buttons and Lights LLC. All rights reserved.
//

import XCTest
@testable import Directions

class LocationTests : XCTestCase {
    

    func testCalculateMultiBlocks() {
        
        
        let directions: [(Instruction, Int)] = [(.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51), (.left, 2), (.right, 78), (.right, 1), (.left, 4), (.right, 188), (.right, 1), (.left, 5), (.right, 5), (.right, 2), (.right, 3), (.left, 5), (.right, 3), (.right, 4), (.left, 1), (.right, 2), (.right, 2), (.right, 3), (.right, 2), (.left, 5), (.right, 2), (.left, 1), (.left, 4), (.right, 4), (.left, 4), (.right, 2), (.left, 3), (.left, 4), (.right, 2), (.left, 3), (.right, 3), (.right, 2), (.left, 2), (.left, 3), (.right, 4), (.right, 3), (.right, 1), (.left, 4), (.left, 2), (.left, 5), (.right, 4), (.right, 4), (.left, 1), (.right, 1), (.left, 5), (.left, 1), (.right, 3), (.right, 1), (.left, 2), (.right, 1), (.right, 1), (.right, 3), (.left, 4), (.left, 1), (.left, 3), (.right, 2), (.right, 4), (.right, 2), (.left, 2), (.right, 1), (.left, 5), (.right, 3), (.left, 3), (.right, 3), (.left, 1), (.right, 4), (.left, 3), (.left, 3), (.right, 4), (.left, 2), (.left, 1), (.left, 3), (.right, 2), (.right, 3), (.left, 2), (.left, 1), (.right, 4), (.left, 3), (.left, 5), (.left, 2), (.left, 4), (.right, 1), (.left, 4), (.left, 4), (.right, 3), (.right, 5), (.left, 4), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 5), (.right, 1), (.right, 1), (.right, 2), (.right, 1), (.right, 5), (.left, 1), (.left, 3), (.left, 5), (.right, 2), (.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51)]

        
        let (blocks, _) = calculateMultiBlocks(startingLocation: (0,0), fromFacingDirection: .north, instructions: directions)
        let numberOfBlocks = calculateBlocks((0,0), blocks)
        
        print("Number Of blocks after travelling from starting point is -> \(numberOfBlocks) ")
        XCTAssertEqual(numberOfBlocks, 284)
       
        
    }
    
    
    
    func testCalculateMultiBlocks2() {
        
        
        let directions2: [(CardinalDirection, Int)] = [(.east, 28), (.east, 8), (.north, 80), (.north, 7), (.east, 12), (.south, 21), (.west, 25), (.north, 29), (.east, 15), (.north, 58), (.east, 66), (.west, 16), (.south, 87), (.west, 1), (.east, 11), (.south, 99), (.west, 92), (.east, 55), (.north, 15), (.north, 23), (.north, 11), (.north, 28), (.south, 32), (.north, 9), (.south, 48), (.west, 9), (.east, 35), (.south, 68), (.north, 5), (.west, 81), (.north, 52), (.south, 9), (.east, 79), (.north, 22), (.west, 55), (.west, 29), (.south, 46), (.north, 76), (.north, 79), (.east, 4), (.east, 51), (.south, 18), (.north, 86), (.south, 39), (.north, 48), (.west, 35), (.west, 69), (.west, 76), (.north, 9), (.north, 58), (.east, 78), (.north, 84), (.east, 65), (.west, 65), (.west, 48), (.east, 97), (.north, 13), (.north, 40), (.north, 94), (.west, 22), (.west, 10), (.east, 67), (.south, 56), (.east, 92), (.east, 20), (.north, 31), (.north, 47), (.east, 16), (.west, 75), (.west, 28), (.north, 19), (.west, 6), (.east, 42), (.east, 83), (.north, 47), (.north, 17), (.north, 38), (.north, 28), (.north, 43), (.north, 95), (.west, 27), (.west, 30), (.south, 7), (.east, 17), (.north, 97), (.north, 12), (.north, 17), (.north, 8), (.south, 37), (.west, 41), (.east, 14), (.east, 68), (.north, 51), (.east, 57), (.west, 21), (.north, 55), (.west, 94), (.south, 61), (.south, 14), (.west, 9), (.south, 78), (.north, 94), (.north, 70), (.east, 36), (.east, 71), (.west, 75), (.north, 99), (.east, 22), (.north, 22), (.west, 42), (.north, 24), (.south, 17), (.east, 0), (.south, 20), (.east, 95), (.east, 94), (.south, 89), (.north, 74), (.south, 44), (.north, 82), (.south, 17), (.north, 28), (.south, 16), (.south, 51), (.south, 97), (.north, 2), (.north, 53), (.north, 33), (.south, 51), (.south, 7), (.south, 12), (.west, 69), (.west, 14), (.north, 17), (.south, 64), (.west, 10), (.east, 18), (.south, 36), (.north, 91), (.north, 2), (.north, 95), (.east, 64), (.west, 88), (.east, 13), (.east, 7), (.south, 85), (.north, 71), (.east, 38), (.south, 83), (.west, 87)]
        
        let mainTest2 = multyTravel2(startLocation: (0,0), instruction: directions2)
        let blocks = calculateBlocks((0, 0), mainTest2)
        print("Printing number of blocks basically but something is wrong \(blocks)")
        XCTAssertEqual(blocks, 382)
        
    }
    
    
    
    
    
    func testOrigin() {
        
        let (resultLocation, resultDirection) = travel(startLocation: (0, 0), fromFacingCLocation: .north, instruction: (.right, 5))
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((5, 0), .east)
        
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
        
    }
    
    
    func testMultyTravel() {
    
        let (resultLocation, resultDirection) = multyTravel(startLocation: (0, 0), facingDirection: .north, instruction: [(.right, 2)])
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((2, 0), .east)
        
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
     
    }
    
        
    
    
    
    func testCaculation() {
    
    let startinglocation = calculateBlocks((0,0), (4, 0))
    let expected = 4
    XCTAssert(startinglocation == expected)
    
    }
    
    
    func testCaculation2() {
        
        let startinglocation = calculateBlocks((0, 0), (10, 2))
        let expected = 12
        XCTAssert(startinglocation == expected)
        
    }
    
    
    
    
    func testBadInstructions() {
    
        let directions: [(BadInstructions, Int)] = [(.right, 87),(.right, 12),(.south, 39),(.left, 52),(.right, 45),
                          (.east, 34),(.east, 62),(.right, 33),(.right, 20),(.left, 42),(.south, 6),
                          (.west, 26),
                          (.west, 55),
                          (.south, 91),
                          (.left, 18),
                          (.south, 10),
                          (.east, 61),
                          (.west, 82),
                          (.right, 54),
                          (.east, 46),
                          (.left, 49),
                          (.south, 71),
                          (.left, 38),
                          (.south, 35),
                          (.east, 87),
                          (.south, 35),
                          (.left, 12),
                          (.north, 97),
                          (.south, 46),
                          (.right, 61),
                          (.right, 59),
                          (.right, 13),
                          (.north, 58),
                          (.west, 2),
                          (.east, 10),
                          (.left, 56),
                          (.right, 53),
                          (.east, 42),
                          (.north, 88),
                          (.north, 60),
                          (.east, 87),
                          (.north, 15),
                          (.north, 20),
                          (.west, 92),
                          (.north, 62),
                          (.north, 39),
                          (.left, 95),
                          (.right, 4),
                          (.west, 62),
                          (.right, 29),
                          (.north, 72),
                          (.right, 31),
                          (.left, 72),
                          (.north, 29),
                          (.right, 30),
                          (.left, 41),
                          (.north, 80),
                          (.right, 22),
                          (.west, 65),
                          (.south, 99),
                          (.east, 31),
                          (.right, 19),
                          (.north, 80),
                          (.west, 43),
                          (.east, 96),
                          (.left, 88),
                          (.north, 77),
                          (.east, 41),
                          (.south, 76),
                          (.right, 65),
                          (.south, 48),
                          (.left, 71),
                          (.right, 96),
                          (.east, 85),
                          (.east, 29),
                          (.south, 45),
                          (.left, 70),
                          (.south, 23),
                          (.left, 3),
                          (.west, 26),
                          (.east, 83),
                          (.west, 65),
                          (.north, 20),
                          (.north, 76),
                          (.left, 9),
                          (.left, 6),
                          (.left, 16),
                          (.south, 75),
                          (.left, 73),
                          (.left, 16),
                          (.right, 15),
                          (.east, 73),
                          (.south, 46),
                          (.right, 22),
                          (.east, 78),
                          (.left, 70),
                          (.right, 10),
                          (.north, 97),
                          (.west, 18),
                          (.south, 23),
                          (.north, 9),
                          (.west, 21),
                          (.right, 58),
                          (.east, 21),
                          (.south, 22),
                          (.south, 35),
                          (.west, 37),
                          (.north, 33),
                          (.south, 51),
                          (.left, 48),
                          (.south, 18),
                          (.south, 97),
                          (.east, 41),
                          (.east, 98),
                          (.south, 14),
                          (.north, 32),
                          (.west, 10),
                          (.east, 70),
                          (.left, 38),
                          (.east, 2),
                          (.west, 6),
                          (.south, 25),
                          (.east, 16),
                          (.west, 39),
                          (.south, 70),
                          (.left, 38),
                          (.left, 21),
                          (.left, 91),
                          (.east, 33),
                          (.right, 90),
                          (.right, 31),
                          (.left, 57),
                          (.left, 68),
                          (.north, 31),
                          (.west, 52),
                          (.north, 79),
                          (.south, 6),
                          (.south, 5),
                          (.north, 41),
                          (.right, 67),
                          (.west, 8),
                          (.north, 55),
                          (.left, 21),
                          (.right, 38),
                          (.north, 85),
                          (.north, 7),
                          (.left, 6),
                          (.north, 21),
                          (.left, 55),
                          (.north, 85),
                          (.left, 66),
                          (.east, 6),
                          (.north, 38),
                          (.east, 7),
                          (.left, 50),
                          (.right, 63),
                          (.right, 94),
                          (.east, 70),
                          (.east, 43),
                          (.north, 99),
                          (.right, 29),
                          (.south, 45),
                          (.south, 97),
                          (.right, 24),
                          (.south, 60),
                          (.right, 34),
                          (.right, 23),
                          (.right, 60),
                          (.left, 0),
                          (.south, 52),
                          (.east, 48),
                          (.north, 8),
                          (.north, 47),
                          (.north, 24),
                          (.east, 73),
                          (.right, 80),
                          (.east, 1),
                          (.east, 41),
                          (.east, 98),
                          (.east, 46),
                          (.north, 44),
                          (.west, 75),
                          (.north, 35),
                          (.west, 28),
                          (.west, 62),
                          (.left, 85),
                          (.south, 8),
                          (.north, 49),
                          (.east, 84),
                          (.right, 22),
                          (.east, 96),
                          (.right, 38),
                          (.right, 70),
                          (.north, 66),
                          (.south, 75),
                          (.east, 27),
                          (.north, 76),
                          (.east, 30),
                          (.east, 85),
                          (.north, 4)]
        
        let finalTravel = turnWithBadInstructions((0,0), badInstructions: directions)
        // print(finalTravel)
        let distanceTraveled = calculateBlocks((0,0), finalTravel)
        print("Lets finish up with this nonesence \(distanceTraveled)")
    
    }
    
    
   
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
