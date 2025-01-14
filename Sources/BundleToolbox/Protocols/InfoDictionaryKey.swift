import class Foundation.Bundle

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
		guard let rawValue = infoDictionaryValue as? Output.RawValue else {
			throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: Output.RawValue.self)
		}
		guard let resultValue = Output(rawValue: rawValue) else {
			throw InfoDictionaryError.conversionFailed(from: rawValue, to: Output.self)
		}
		return resultValue
	}
}
