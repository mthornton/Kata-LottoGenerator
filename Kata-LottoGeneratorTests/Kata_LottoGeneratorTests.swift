//
//  Kata_LottoGeneratorTests.swift
//  Kata-LottoGeneratorTests
//
//  Created by Michael Thornton on 2/26/21.
//

import XCTest
@testable import Kata_LottoGenerator

class Kata_LottoGeneratorTests: XCTestCase {

    override func setUpWithError() throws { }

    override func tearDownWithError() throws { }

    
    func testArraySize() throws {
        
        let numberOfItems = 10
        let range = 1...100
        
        let numbers = Lotto().randomArrayWithCountOf(numberOfItems, inRange: range)
        
        XCTAssertTrue(numbers.count == numberOfItems, "Expected array of size \(numberOfItems) but got \(numbers.count)")
    }
    
    
    func testForDuplicates() throws {
        
        let numberOfItems = 10
        let range = 1...10
        
        let numbers = Lotto().randomArrayWithCountOf(numberOfItems, inRange: range)
        
        for i in numbers {
            let nums = numbers.filter { (num) -> Bool in
                num == i
            }
            
            if nums.count != 1 {
                XCTFail("Duplicate of number \(i) found in \(numbers)")
            }
        }
        
    }

}
