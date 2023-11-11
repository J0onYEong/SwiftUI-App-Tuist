//
//  ReminderSetUpScreenModel.swift
//
//
//  Created by 최준영 on 2023/11/08.
//

import Foundation

public final class ReminderSetUpScreenModel: ObservableObject {
    @Published var viewState: ReminderSetUpState = .initial
}

public extension ReminderSetUpScreenModel {
    func perform(action: ReminderSetUpAction) {
        switch action {
        case .requestPushAuthorization:
            print("Request Auth")
        case .skip:
            print("Noting")
        }
    }
}
