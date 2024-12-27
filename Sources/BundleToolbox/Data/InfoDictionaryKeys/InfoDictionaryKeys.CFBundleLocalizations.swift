import let CoreFoundation.CFBundle.kCFBundleLocalizationsKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleLocalizationsKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlelocalizationskey)\.
	struct CFBundleLocalizations: InfoDictionaryKey {
		public typealias Value = [String]

		public static var infoDictionaryKey: String { kCFBundleLocalizationsKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleLocalizations
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleLocalizations``.
	static var cfBundleLocalizations: Self {
		Self()
	}
}
