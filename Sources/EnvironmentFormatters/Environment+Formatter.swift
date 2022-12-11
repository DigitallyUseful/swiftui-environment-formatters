//
//  File.swift
//  
//
//  Created by Joseph Quigley on 12/11/22.
//

import SwiftUI

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
private struct FormatterKey: EnvironmentKey {
    static let defaultValue = {
        let formatter = Formatter()
        return formatter
    }()
}

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public extension EnvironmentValues {
    var valueFormatter: Formatter {
        get { self[FormatterKey.self] }
        set { self[FormatterKey.self] = newValue }
    }
}
