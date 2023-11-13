//
//  Dependencies.swift
//
//
//  Created by 최준영 on 2023/11/13.
//

import Factory
import SwiftUI

public final class Dependencies {
    public static let shared = Dependencies()

    private init() {}

    public func register(onBoardingAfterView: AnyView) {
        Container.shared.screenAfterOnBoarding.register { onBoardingAfterView }
    }
}
