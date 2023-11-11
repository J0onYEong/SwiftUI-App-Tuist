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
        return Bundle.module.provideFilePath(name: "thinking_human_lottie", ext: "json")
    }
}
