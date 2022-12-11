//
//  Environment+RelativeDateFormatter.swift
//  Do Whenever
//
//  Created by Joseph Quigley on 12/11/22.
//

import SwiftUI

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
private struct RelativeDateTimeFormatterKey: EnvironmentKey {
    static let defaultValue = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
}

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public extension EnvironmentValues {
    var relativeDateFormatter: RelativeDateTimeFormatter {
        get { self[RelativeDateTimeFormatterKey.self] }
        set { self[RelativeDateTimeFormatterKey.self] = newValue }
    }
}
