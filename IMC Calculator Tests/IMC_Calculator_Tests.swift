//
//  IMC_Calculator_Tests.swift
//  IMC Calculator Tests
//
//  Created by Andrew Vale on 09/05/24.
//

import XCTest
@testable import IMC_Calculator

final class IMC_Calculator_Tests: XCTestCase {

    func testIMCCalculation() {
        let weight = 85.0
        let height = 1.69
        XCTAssertEqual(IMCCalculator.calculateIMC(weight: weight, height: height), 29.76, "O resultado deve ser 29.76")
    }
}
