//
//  File.swift
//  
//
//  Created by 최준영 on 2023/11/08.
//

import SwiftUI

public struct DefaultButtonAnimation: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 325, height: 50, alignment: .center)
            .background(.cyan)
            .foregroundStyle(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 4.0))
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}
