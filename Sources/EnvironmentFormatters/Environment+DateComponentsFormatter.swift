//
//  Environment+DateComponentsFormatter.swift
//  Do Whenever
//
//  Created by Joseph Quigley on 12/11/22.
//

import SwiftUI

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
private struct DateComponentsFormatterKey: EnvironmentKey {
    static let defaultValue = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
}

@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public extension EnvironmentValues {
    var dateComponentsFormatter: DateComponentsFormatter {
        get { self[DateComponentsFormatterKey.self] }
        set { self[DateComponentsFormatterKey.self] = newValue }
    }
}
