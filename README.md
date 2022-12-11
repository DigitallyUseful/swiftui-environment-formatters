# Environment Formatters
This library provides DateFormatters and other formatter sugar to SwiftUI's `@Environment`.

## List of Formatters
* `Formatter` (Warning! This is the base class for all formatters, the `default` value of this environment key causes an `NSException`)
* `DateFormatter`
* `DateComponentsFormatter`
* `RelativeDateTimeFormatter`

## Example Usage:
To use a formatter, you reference its environment key in SwiftUI to get a default, or to provide customizations to different views (eg, short date names vs long names).

```swift
struct ContentView: View {
    @Environment(\.dateFormatter) var dateFormatter
    var body: some View {
        Text(Date(), formatter: dateFormatter) // Dec 11, 2022 at 1:26:30 PM
    }
}

struct ShortDateContentView: View {
    var shortDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    var body: some View {
        ContentView()
            .environment(\.dateFormatter, shortDateFormatter) // 12/11/22, 1:26 PM
    }
}
```
