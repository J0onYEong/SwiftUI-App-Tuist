//
//
//
//  Created by 최준영 on 2023/11/08.
//

import XCTest
@testable import ChoijunAppUI

final class ReminderSetUpScreenModelTests: XCTestCase {
    
    private var sut: ReminderSetUpScreenModel!
    
    override func setUp() {
        sut = ReminderSetUpScreenModel()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_initial_view_state() {
        XCTAssertEqual(sut.viewState, .initial)
    }
}
