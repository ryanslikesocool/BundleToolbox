/// ## Topics
///
/// ### Errors
///
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
	static func missingValue(forKey infoDictionaryKey: String) -> Self {
		Self(rawValue: .missingValue(key: infoDictionaryKey))
	}

	static func missingBundleResource(named name: String) -> Self {
		Self(rawValue: .missingBundleResource(name: name))
	}

	static func castFailed(from inputType: Any.Type, to outputType: Any.Type) -> Self {
		Self(rawValue: .castFailed(input: inputType, output: outputType))
	}

	static func castFailed<Input>(from inputValue: borrowing Input, to outputType: Any.Type) -> Self {
		castFailed(from: Input.self, to: outputType)
	}

	static func conversionFailed(from inputType: Any.Type, to outputType: Any.Type) -> Self {
		Self(rawValue: .conversionFailed(input: inputType, output: outputType))
	}

	static func conversionFailed<Input>(from inputValue: borrowing Input, to outputType: Any.Type) -> Self {
		conversionFailed(from: Input.self, to: outputType)
	}
}
