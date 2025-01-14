/// ## Topics
/// ### Errors
/// - ``missingValue(forKey:)``
/// - ``missingBundleResource(named:)``
/// - ``castFailed(from:to:)-7eand``
/// - ``castFailed(from:to:)-7hmqo``
/// - ``conversionFailed(from:to:)-51h1u``
/// - ``conversionFailed(from:to:)-34bpn``
public struct InfoDictionaryError {
	private let rawValue: RawValue

	private init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension InfoDictionaryError: Sendable { }

// MARK: - Error

extension InfoDictionaryError: Error { }

// MARK: - Convenience

public extension InfoDictionaryError {
	/// - Parameter infoDictionaryKey:
	static func missingValue(
		forKey infoDictionaryKey: String
	) -> Self {
		Self(rawValue: .missingValue(key: infoDictionaryKey))
	}

	/// - Parameter name:
	static func missingBundleResource(
		named name: String
	) -> Self {
		Self(rawValue: .missingBundleResource(name: name))
	}

	/// - Parameters:
	///   - inputType: The input type of the cast.
	///   - outputType: The output type of the cast.
	static func castFailed(
		from inputType: Any.Type,
		to outputType: Any.Type
	) -> Self {
		Self(rawValue: .castFailed(input: inputType, output: outputType))
	}

	/// - Parameters:
	///   - inputValue: The input value of the cast.
	///   - outputType: The output type of the cast.
	static func castFailed<Input>(
		from inputValue: borrowing Input,
		to outputType: Any.Type
	) -> Self {
		castFailed(from: Input.self, to: outputType)
	}

	/// - Parameters:
	///   - inputType: The input type of the conversion.
	///   - outputType: The output type of the conversion.
	static func conversionFailed(
		from inputType: Any.Type,
		to outputType: Any.Type
	) -> Self {
		Self(rawValue: .conversionFailed(input: inputType, output: outputType))
	}

	/// - Parameters:
	///   - inputValue: The input value of the conversion.
	///   - outputType: The output type of the conversion.
	static func conversionFailed<Input>(
		from inputValue: borrowing Input,
		to outputType: Any.Type
	) -> Self {
		conversionFailed(from: Input.self, to: outputType)
	}
}
