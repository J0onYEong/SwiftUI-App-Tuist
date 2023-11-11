//
//  ReminderSetiUpInitialView.swift
//
//
//  Created by 최준영 on 2023/11/08.
//

import SwiftUI
import UIComponents

struct ReminderSetiUpInitialView: View {
    @ObservedObject var screenModel: ReminderSetUpScreenModel

    var body: some View {
        VStack {
            Text("remindersetup_title", bundle: .module)
                .padding(.bottom, 20)

            Spacer()

            Text("remindersetup_text_1", bundle: .module)

            Spacer()

            Text("remindersetup_text_2", bundle: .module)

            Spacer()

            LottieView(filePath: Bundle.module.provideFilePath(name: "astronaut", ext: "json"), loopMode: .loop)
                .padding(10)

            Spacer()

            CTAButton(label: "remindersetup_continue".localized()) {
                screenModel.perform(action: .requestPushAuthorization)
            }

            Button("skip_button".localized()) {
                // TODO:
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ReminderSetiUpInitialView(screenModel: ReminderSetUpScreenModel())
        .environment(\.locale, .init(identifier: "de"))
}
