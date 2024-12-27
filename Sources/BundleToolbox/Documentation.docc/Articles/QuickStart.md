# Quick Start

## Using Info Dictionary Keys

This package provides a simple and type-safe way to access info dictionary values from
[`Bundle`](https://developer.apple.com/documentation/foundation/bundle)
in the form of the ``InfoDictionaryKey`` protocol.
```swift
import Foundation

func readCopyright(from bundle: Bundle) throws -> String {
	var result: String

	// Read attribute values with a fully qualified info dictionary initializer...
	result = try bundle.object(
		forInfoDictionaryKey: InfoDictionaryKeys.NSHumanReadableCopyright()
	)

	// ...or with a shorthand info dictionary key accessor.
	result = try bundle.object(
		forInfoDictionaryKey: .nsHumanReadableCopyright
	)

	return result
}
```

---


## Custom Info Dictionary Keys

Multiple info dictionary keys are provided by the package,
and more can be added with a simple declaration.
```swift
// Declare the info dictionary key...
struct MyCustomValueInfoDictionaryKey: InfoDictionaryKey {
	// The type of attribute value that the `infoDictionaryKey` points to.
	typealias Value = String

	// The key used to access the attribute value.
	static let infoDictionaryKey: String = "MyCustomValueKey"
}
```

In cases where the fully-qualified key name is verbose or used frequently,
it can be useful to declare a shorthand info dictionary key accessor.
```swift
extension InfoDictionaryObject where
	Self == MyCustomValueInfoDictionaryKey
{
	static var myCustomValue: Self {
		Self()
	}
}
```