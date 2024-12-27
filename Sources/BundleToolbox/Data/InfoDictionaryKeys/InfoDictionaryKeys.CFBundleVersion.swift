import let CoreFoundation.CFBundle.kCFBundleVersionKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleversionkey)\.
	struct CFBundleVersion: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleVersionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleVersion
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleVersion``.
	static var cfBundleVersion: Self {
		Self()
	}
}
