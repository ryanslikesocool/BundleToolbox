# ``InfoDictionaryKey``

## Example

Info dictionary keys are declared similarly to a SwiftUI
[`EnvironmentKey`]( https://developer.apple.com/documentation/swiftui/environmentkey ).
In most cases, declaring a new info dictionary key is as simple as knowing the key string and value type.

For example, the implementation for ``InfoDictionaryKeys/CFBundleName`` looks like this:
```swift
extension InfoDictionaryKeys {
	struct CFBundleName: InfoDictionaryKey {
		// The type of value that the key points to.
		// In this case, a `String`.
		public typealias Output = String

		// The underlying string for the attribute key.
		public static var infoDictionaryKey: String {
			// The `CoreFoundation` module already declares this constant for us,
			// so we can use that instead of declaring it manually.
			kCFBundleNameKey as String
		}
	}
}
```
