//
//  File.swift
//  
//
//  Created by 최준영 on 2023/11/13.
//

import SwiftUI
import ChoijunAppUI

public struct ChoijunPackage {
    private let config: ChoijunPacakgeCinfig
    
    public init(config: ChoijunPacakgeCinfig) {
        self.config = config
    }
}

public extension ChoijunPackage {
    
    var wasAlreadyOnboarded: Bool {
        return false
    }
    
    func start() -> AnyView {
        //TODO: configuration에 전달한 온보딩 다음뷰 표시하기
        return AnyView(WelcomeScreen())
    }
}
