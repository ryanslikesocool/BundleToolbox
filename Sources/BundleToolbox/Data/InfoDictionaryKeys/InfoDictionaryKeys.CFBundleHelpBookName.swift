@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleHelpBookNameKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleHelpBookName``
	struct CFBundleHelpBookName: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFBundleHelpBookNameKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleHelpBookName
{
	/// The info dictionary key for ``kCFBundleHelpBookNameKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleHelpBookName``
	static var cfBundleHelpBookName: Self {
		Self()
	}
}
