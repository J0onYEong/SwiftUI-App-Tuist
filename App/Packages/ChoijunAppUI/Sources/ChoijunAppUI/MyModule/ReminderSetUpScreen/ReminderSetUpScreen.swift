//
//  ReminderSetUpScreen.swift
//
//
//  Created by 최준영 on 2023/11/08.
//

import SwiftUI

struct ReminderSetUpScreen: View {
    @StateObject private var screenModel: ReminderSetUpScreenModel

    public init(screenModel: ReminderSetUpScreenModel = ReminderSetUpScreenModel()) {
        _screenModel = StateObject(wrappedValue: screenModel)
    }

    var body: some View {
        switch screenModel.viewState {
        case .initial:
            ReminderSetiUpInitialView(screenModel: screenModel)
        case .pushNotificationAllowed:
            PushNotificationAllowedView(screenModel: screenModel)
        case .pushNotificiationRejected:
            PushNotificiationRejectedView(screenModel: screenModel)
        }
    }
}

#Preview {
    ReminderSetUpScreen()
}
