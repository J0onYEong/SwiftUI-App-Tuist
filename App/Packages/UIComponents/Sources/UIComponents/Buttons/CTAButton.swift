//
//  CTAButton.swift
//
//
//  Created by 최준영 on 2023/11/08.
//

import SwiftUI

public struct CTAButton: View {
    let label: String
    let action: () -> Void

    public init(label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }

    public var body: some View {
        Button("\(label)") {
            action()
        }
        .buttonStyle(DefaultButtonAnimation())
    }
}

#Preview {
    CTAButton(label: "123") {
        print("Hello CTA")
    }
}
