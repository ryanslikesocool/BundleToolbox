import let CoreFoundation.CFBundle.kCFBundleInfoDictionaryVersionKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleInfoDictionaryVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleinfodictionaryversionkey)\.
	struct CFBundleInfoDictionaryVersion: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleInfoDictionaryVersionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleInfoDictionaryVersion
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleInfoDictionaryVersion``.
	static var cfBundleInfoDictionaryVersion: Self {
		Self()
	}
}
