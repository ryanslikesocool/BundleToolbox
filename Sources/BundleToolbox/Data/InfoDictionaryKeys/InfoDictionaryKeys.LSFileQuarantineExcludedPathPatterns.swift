@available(macOS 10.5, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSFileQuarantineExcludedPathPatternsKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsFileQuarantineExcludedPathPatterns``
	struct LSFileQuarantineExcludedPathPatterns: InfoDictionaryKey {
		public typealias Output = [String]

		public static var infoDictionaryKey: String {
			kLSFileQuarantineExcludedPathPatternsKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSFileQuarantineExcludedPathPatterns
{
	/// The info dictionary key for ``kLSFileQuarantineExcludedPathPatternsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSFileQuarantineExcludedPathPatterns``
	static var lsFileQuarantineExcludedPathPatterns: Self {
		Self()
	}
}
