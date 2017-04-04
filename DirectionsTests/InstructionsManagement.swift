//
//  InstructionsManagement.swift
//  Directions
//
//  Created by Alisher Abdukarimov on 4/2/17.
//  Copyright © 2017 Buttons and Lights LLC. All rights reserved.
//

import XCTest
@testable import Directions


class InstructionsMovementTest: XCTestCase {
    
    
    func testMoveGrid(){
        
        let result = move(.east, (x: 0, y: 0), 4)
        let expected: Location = Location(x: 4, y: 0)
        XCTAssert(result == expected)
    
    
    }
    
    
    
    func testMoveGridNorth(){
        
        let result = move(.north, (x: 0, y: 0), 4)
        let expected: Location = Location(x: 0, y: 4)
        XCTAssert(result == expected)
    
    }
    
    
    func testMoveGridSouth(){
        
        let result = move(.south, (x: 0, y: 0), 4)
        let expected: Location = Location(x: 0, y: -4)
        XCTAssert(result == expected)
        
    }
    
    
    func testMoveGridWest(){
        
        let result = move(.west, (x: 0, y: 0), 4)
        let expected: Location = Location(x: -4, y: 0)
        XCTAssert(result == expected)
        
    }

}
