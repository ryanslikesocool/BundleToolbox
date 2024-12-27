import let CoreFoundation.CFBundle.kCFBundleNameKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleNameKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlenamekey)\.
	struct CFBundleName: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleNameKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleName
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleName``.
	static var cfBundleName: Self {
		Self()
	}
}
