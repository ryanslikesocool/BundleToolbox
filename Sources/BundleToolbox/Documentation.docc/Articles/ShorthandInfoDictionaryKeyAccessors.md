# Shorthand Accessors

Simplify info dictionary key access.


## Overview

Shorthand info dictionary key accessors can greatly simplify accessing info dictionary values.


## Example

The declaration for ``InfoDictionaryObject/cfBundleName`` looks like this:
```swift
extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleName
{
	static var cfBundleName: Self {
		Self()
	}
}
```

```swift
func readBundleName(
	from bundle: Bundle
) throws -> String {
	var result: String

	// With a fully qualified initializer:
	result = try bundle.object(
		forInfoDictionaryKey: InfoDictionaryKeys.CFBundleName()
	)

	// With a shorthand accessor:
	result = try bundle.object(
		forInfoDictionaryKey: .cfBundleName
	)

	return result
}
```
