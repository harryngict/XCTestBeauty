//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Hoang Nguyen on 19/11/23.
//

@testable import Example
import XCTest
import XCTestBeauty

final class ExampleTests: XCTestCase, XCTestBeauty {
    override func setUp() {
        super.setUp()

        let given = given("Given condition") { _ in
            // Put your given codition here
        }

        when("When the test case is execution") {
            // Execution test case
        }

        then("Then the expectation should be") { _ in
            // Then XCTAssert to compare the expectation and result
        }
    }

    override func tearDown() {
        super.tearDown()
    }
}
