//
//  ReminderSetUpInteractor.swift
//
//
//  Created by 최준영 on 2023/11/12.
//

import ChoijunAppUIData
import Foundation

public protocol ReminderSetUpInteractor {
    func onBoardingFinished()
}

public final class DefaultReminderSetUpInteractor: ReminderSetUpInteractor {
    let onBoardingCompleted: DefaultOnBoardingCompleted

    public init(onBoardingCompleted: DefaultOnBoardingCompleted = DefaultOnBoardingCompleted()) {
        self.onBoardingCompleted = onBoardingCompleted
    }

    public func onBoardingFinished() {
        onBoardingCompleted.complete()
    }
}
