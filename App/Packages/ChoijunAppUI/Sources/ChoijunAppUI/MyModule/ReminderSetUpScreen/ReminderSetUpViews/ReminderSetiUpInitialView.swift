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
            Text("initial view - TODO")
                .padding(.bottom, 20)
            
            CTAButton(label: "Remind me!") {
                screenModel.perform(action: .requestPushAuthorization)
            }
            
            Button("No tanks") {
                //TODO
            }
        }
    }
}

#Preview {
    ReminderSetiUpInitialView(screenModel: ReminderSetUpScreenModel())
}
