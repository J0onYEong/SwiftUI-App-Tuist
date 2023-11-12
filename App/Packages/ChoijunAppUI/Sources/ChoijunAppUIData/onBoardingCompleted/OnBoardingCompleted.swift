//
//  OnBoardingCompleted.swift
//
//
//  Created by 최준영 on 2023/11/12.
//

import Foundation

public protocol OnBoardingCompleted {
    func complete()
}

public final class DefaultOnBoardingCompleted: OnBoardingCompleted {
    let userDefaults: UserDefaults

    public init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }

    public func complete() {
        userDefaults.setValue(true, forKey: Keys.onBoardingCompleted.rawValue)
    }
}
