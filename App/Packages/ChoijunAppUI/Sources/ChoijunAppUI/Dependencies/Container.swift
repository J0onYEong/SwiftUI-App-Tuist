//
//  Container.swift
//
//
//  Created by 최준영 on 2023/11/13.
//

import Factory
import SwiftUI

extension Container {
    var screenAfterOnBoarding: Factory<AnyView> {
        Factory(self) {
            preconditionFailure("You have to register dependency manually")
        }
    }
}
