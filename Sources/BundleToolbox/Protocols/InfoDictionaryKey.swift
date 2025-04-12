import Foundation

/// A key for accessing values in a bundle's info dictionary.
public protocol InfoDictionaryKey: InfoDictionaryObject where
	Input == Bundle
{
	/// The underlying info dictionary key.
	///
	/// Info dictionary key constants can be found in the documentation for
	/// [Information Property List]( https://developer.apple.com/documentation/bundleresources/information-property-list ).
	static var infoDictionaryKey: String { get }

	/// Retrieve and process the info dictionary object with the ``infoDictionaryKey``.
	// Shadows `InfoDictionaryObject.process(_:)`
	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension InfoDictionaryKey {
	func processRelative<DictionaryValue>(
		_ input: [String: DictionaryValue]
	) throws -> Output {
		guard let dictionaryValue = input[Self.infoDictionaryKey] else {
			throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
		}
		guard let resultValue = dictionaryValue as? Output else {
			throw InfoDictionaryError.castFailed(from: dictionaryValue, to: Output.self)
		}
		return resultValue
	}
}

// MARK: - Default Implementation

public extension InfoDictionaryKey {
	func process(_ input: Input) throws -> Output {
		guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
			throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
		}
		guard let resultValue = infoDictionaryValue as? Output else {
			throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: Output.self)
		}
		return resultValue
	}

	// VALIDATE: Ensure that this implementation is preferred over the default when possible.
	func process(_ input: Input) throws -> Output where
		Output: RawRepresentable
	{
		guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
			throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
		}

		switch infoDictionaryValue {
			case let resultValue as Output:
				return resultValue
			case let rawValue as Output.RawValue:
				guard let resultValue = Output(rawValue: rawValue) else {
					throw InfoDictionaryError.conversionFailed(from: rawValue, to: Output.self)
				}
				return resultValue
			default:
				throw InfoDictionaryError.conversionFailed(from: infoDictionaryValue, to: Output.self)
		}
	}

	// VALIDATE: Ensure that this implementation is preferred over the default when possible.
	func process(_ input: Input) throws -> Output where
		Output: LosslessStringConvertible
	{
		guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
			throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
		}

		switch infoDictionaryValue {
			case let resultValue as Output:
				return resultValue
			case let stringValue as String:
				guard let resultValue = Output(stringValue) else {
					throw InfoDictionaryError.conversionFailed(from: stringValue, to: Output.self)
				}
				return resultValue
			default:
				throw InfoDictionaryError.conversionFailed(from: infoDictionaryValue, to: Output.self)
		}
	}

	// Do we actually want to provide a default implementation for URLs?
	// VALIDATE: Ensure that this implementation is preferred over the default when possible.
	func process(_ input: Input) throws -> Output where
		Output == URL
	{
		guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
			throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
		}

		switch infoDictionaryValue {
			case let resultValue as Output:
				return resultValue
			case let stringValue as String:
				guard let resultValue = Output(string: stringValue) else {
					throw InfoDictionaryError.conversionFailed(from: String.self, to: Output.self)
				}
				return resultValue
			default:
				throw InfoDictionaryError.conversionFailed(from: infoDictionaryValue, to: Output.self)
		}
	}
}
