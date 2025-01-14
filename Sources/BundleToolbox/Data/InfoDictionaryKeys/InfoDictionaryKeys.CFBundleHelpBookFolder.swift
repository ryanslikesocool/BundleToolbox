@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleHelpBookFolderKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleHelpBookFolder``
	struct CFBundleHelpBookFolder: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFBundleHelpBookFolderKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleHelpBookFolder
{
	/// The info dictionary key for ``kCFBundleHelpBookFolderKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleHelpBookFolder``
	static var cfBundleHelpBookFolder: Self {
		Self()
	}
}
