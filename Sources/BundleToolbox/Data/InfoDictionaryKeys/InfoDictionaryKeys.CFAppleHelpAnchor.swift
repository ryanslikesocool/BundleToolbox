@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFAppleHelpAnchorKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfAppleHelpAnchor``
	struct CFAppleHelpAnchor: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFAppleHelpAnchorKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFAppleHelpAnchor
{
	/// The info dictionary key for ``kCFAppleHelpAnchorKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFAppleHelpAnchor``
	static var cfAppleHelpAnchor: Self {
		Self()
	}
}
