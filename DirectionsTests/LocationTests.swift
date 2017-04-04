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

        
        let (mainTest2) = multyTravel(startLocation: (0,0), facingDirection: .east, instruction: directions)
        let blocks = calculateBlocks((0, 0), mainTest2.0)
       
        print("Number Of blocks \(blocks)")
        XCTAssertEqual(blocks, 370)
        
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
    
        
    
    // ((x:0, y:0), (x: 10, y: 2))
    
    func testCaculation() {
    
    let startinglocation = calculateBlocks((0,0), (4, 0))
    let expected = -4
    XCTAssert(startinglocation == expected)
    
    }
    
    
    func testCaculation2() {
        
        let startinglocation = calculateBlocks((0, 0), (10, 2))
        let expected = -12
        XCTAssert(startinglocation == expected)
        
    }
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
