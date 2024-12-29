# Custom Processing

Customize info dictionary key processing.


## Overview

In some circumstances, additional processing may be desired for an info dictionary key.


## Example

This example loads an
[`NSImage`](https://developer.apple.com/documentation/appkit/nsimage)
with the name provided by the value for the info dictionary key
``kCFBundleIconNameKey`` from the containing bundle
by declaring a custom implementation for
``InfoDictionaryKey/process(_:)``.
```swift
import AppKit

extension InfoDictionaryKeys {
	struct NSBundleIcon: InfoDictionaryKey {
		static var infoDictionaryKey: String {
			kCFBundleIconNameKey
		}

		// The associated `Output` type is inferred
		// from the function's return type.
		func process(_ input: Bundle) throws -> NSImage {
			// Retrieve the `infoDictionaryValue` from the given `Bundle`.
			guard
				let infoDictionaryValue: Any = input.object(forInfoDictionaryKey: Self.infoDictionaryKey)
			else {
				throw InfoDictionaryError
					.unexpectedNil
			}

			// Cast the `infoDictionaryValue` to the expected type for the `infoDictionaryKey` (`String`).
			guard
				let iconName: String = infoDictionaryValue as? String
			else {
				throw InfoDictionaryError
					.castFailed(from: infoDictionaryValue, to: String.self)
			}

			// Load the image with the `iconName` from the `input` bundle.
			guard
				let resultValue: NSImage = input.image(forResource: iconName)
			else {
				throw InfoDictionaryError
					.conversionFailed(from: iconName, to: NSImage.self)
			}

			// Return the processed `resultValue`.
			return resultValue
		}
	}
}
```

- Remark: The functionality shown in this example is provided by ``InfoDictionaryKeys/CFBundleIconName/asNSImage(in:)``.


## See Also

- ``InfoDictionaryKey/process(_:)``
