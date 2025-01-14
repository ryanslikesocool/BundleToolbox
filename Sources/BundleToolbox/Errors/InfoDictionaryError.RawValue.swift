extension InfoDictionaryError {
	enum RawValue {
		/// ## See Also
		/// - ``InfoDictionaryError/missingValue(forKey:)``
		case missingValue(key: String)

		/// ## See Also
		/// - ``InfoDictionaryError/missingBundleResource(named:)``
		case missingBundleResource(name: String)

		/// ## See Also
		/// - ``InfoDictionaryError/castFailed(from:to:)-7eand``
		/// - ``InfoDictionaryError/castFailed(from:to:)-7hmqo``
		case castFailed(input: Any.Type, output: Any.Type)

		/// ## See Also
		/// - ``InfoDictionaryError/conversionFailed(from:to:)-51h1u``
		/// - ``InfoDictionaryError/conversionFailed(from:to:)-34bpn``
		case conversionFailed(input: Any.Type, output: Any.Type)
	}
}

// MARK: - Sendable

extension InfoDictionaryError.RawValue: Sendable { }
