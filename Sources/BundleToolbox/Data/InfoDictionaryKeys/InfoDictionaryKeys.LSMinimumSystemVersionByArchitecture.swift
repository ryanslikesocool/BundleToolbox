import class Foundation.Bundle

@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSMinimumSystemVersionByArchitectureKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsMinimumSystemVersionByArchitecture``
	struct LSMinimumSystemVersionByArchitecture: InfoDictionaryKey {
		public typealias Output = [String: String]

		public static var infoDictionaryKey: String {
			kLSMinimumSystemVersionByArchitectureKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSMinimumSystemVersionByArchitecture
{
	/// The info dictionary key for ``kLSMinimumSystemVersionByArchitectureKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSMinimumSystemVersionByArchitecture``
	static var lsMinimumSystemVersionByArchitecture: Self {
		Self()
	}
}
