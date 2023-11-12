//
//  ReminderSetUpScreenModel.swift
//
//
//  Created by 최준영 on 2023/11/08.
//

import ChoijunAppUIDomain
import Foundation

public final class ReminderSetUpScreenModel: ObservableObject {
    @Published var viewState: ReminderSetUpState = .initial

    let interactor: ReminderSetUpInteractor

    init(interactor: ReminderSetUpInteractor = DefaultReminderSetUpInteractor()) {
        self.interactor = interactor
    }
}

public extension ReminderSetUpScreenModel {
    func perform(action: ReminderSetUpAction) {
        switch action {
        case .requestPushAuthorization:
            // TODO: Request Auth
            print("Request Auth")
        case .skip:
            // TODO: nextScreen
            interactor.onBoardingFinished()
        }
    }
}
