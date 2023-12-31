//
//  Bundle+Extension.swift
//
//
//  Created by 최준영 on 2023/11/11.
//

import Foundation

public extension Bundle {
    /// Return - String
    func provideFilePath(name: String, ext: String) -> String {
        guard let path = path(forResource: name, ofType: ext) else {
            preconditionFailure("can't find resource in this Bundle")
        }
        return path
    }
}
