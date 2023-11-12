//
//  ReminderSetUpDataTest.swift
//
//
//  Created by 최준영 on 2023/11/12.
//

@testable import ChoijunAppUIData
import Foundation
import XCTest

final class OnBoardingCompletedModelTest: XCTestCase {
    private var target: OnBoardingCompleted!

    override func setUp() {
        target = DefaultOnBoardingCompleted()
    }

    override func tearDown() {
        target = nil
    }

    func test_userdefaults_working() {
        target.complete()

        XCTAssertEqual(UserDefaults.standard.bool(forKey: Keys.onBoardingCompleted.rawValue), true)
    }
}
