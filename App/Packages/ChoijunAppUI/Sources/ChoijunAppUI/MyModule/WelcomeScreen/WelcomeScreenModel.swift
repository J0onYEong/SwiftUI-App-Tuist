//
//  File.swift
//  
//
//  Created by 최준영 on 2023/11/07.
//

import Foundation

public final class WelcomeScreenModel: ObservableObject {
    
    public init() { }
    
    var animationFilePath: String {
        guard let path = Bundle.module.path(forResource: "thinking_human_lottie", ofType: "json") else {
            preconditionFailure("Can't find lottie file!")
        }
        return path
    }
}
