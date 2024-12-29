# Quick Start

## Using Info Dictionary Keys

This package provides a simple and type-safe way to access info dictionary values from
[`Bundle`](https://developer.apple.com/documentation/foundation/bundle)
in the form of the ``InfoDictionaryKey`` protocol.
```swift
import Foundation

func readCFBundleName(
	from bundle: Bundle
) throws -> String {
	var result: String

	// Read the value with a fully qualified initializer...
	result = try bundle.object(
		forInfoDictionaryKey: InfoDictionaryKeys.CFBundleName()
	)

	// ...or with a shorthand accessor.
	result = try bundle.object(
		forInfoDictionaryKey: .cfBundleName
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
	// The type of info dictionary value that the `infoDictionaryKey` points to.
	typealias Output = String

	// The key used to access the info dictionary value.
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
