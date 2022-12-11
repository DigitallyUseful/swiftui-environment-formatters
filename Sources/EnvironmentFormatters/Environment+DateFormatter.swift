//
//  Environment+DateFormatter.swift
//  Do Whenever
//
//  Created by Joseph Quigley on 12/11/22.
//

import SwiftUI

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
private struct DateFormatterKey: EnvironmentKey {
    static let defaultValue = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
}

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public extension EnvironmentValues {
    var dateFormatter: DateFormatter {
        get { self[DateFormatterKey.self] }
        set { self[DateFormatterKey.self] = newValue }
    }
}
