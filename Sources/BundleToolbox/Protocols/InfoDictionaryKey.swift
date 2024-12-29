import DeclarativeCore
import Foundation

/// A key for accessing values in a bundle's info dictionary.
public protocol InfoDictionaryKey: InfoDictionaryObject where
	Input == Bundle,
	Output == Value
{
	/// The expected type of the value returned by
	/// [`object(forInfoDictionaryKey:)`](https://developer.apple.com/documentation/foundation/bundle/1408696-object)\.
	associatedtype Value

	/// The underlying info dictionary key.
	///
	/// Info dictionary key constants can be found in the documentation for
	/// [Information Property List](https://developer.apple.com/documentation/bundleresources/information-property-list)\.
	static var infoDictionaryKey: String { get }
}

// MARK: - Default Implementation

public extension InfoDictionaryKey {
	func process(_ input: Input) throws -> Output {
		let originalValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey)
		guard let castValue = originalValue as? Output else {
			throw InfoDictionaryError.castFailed(input: type(of: originalValue), output: Output.self)
		}
		return castValue
	}
}
