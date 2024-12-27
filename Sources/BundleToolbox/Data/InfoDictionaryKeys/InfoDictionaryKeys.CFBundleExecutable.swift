import let CoreFoundation.CFBundle.kCFBundleExecutableKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleExecutableKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablekey)\.
	struct CFBundleExecutable: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleExecutableKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleExecutable
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleExecutable``.
	static var cfBundleExecutable: Self {
		Self()
	}
}
