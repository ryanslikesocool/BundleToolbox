import DeclarativeCore
import Foundation

/// A key for accessing values in a bundle's info dictionary.
public protocol InfoDictionaryKey: InfoDictionaryObject where
	Input == Bundle
{
	/// The underlying info dictionary key.
	///
	/// Info dictionary key constants can be found in the documentation for
	/// [Information Property List](https://developer.apple.com/documentation/bundleresources/information-property-list)\.
	static var infoDictionaryKey: String { get }
}

// MARK: - Default Implementation

public extension InfoDictionaryKey {
	/// Retrieve and process the info dictionary object with the ``infoDictionaryKey``.
	func process(_ input: Input) throws -> Output {
		let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey)

		guard let resultValue = infoDictionaryValue as? Output else {
			throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: Output.self)
		}

		return resultValue
	}
}
