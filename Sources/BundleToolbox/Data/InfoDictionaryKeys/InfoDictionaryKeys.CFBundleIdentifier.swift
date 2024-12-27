import let CoreFoundation.CFBundle.kCFBundleIdentifierKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleIdentifierKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleidentifierkey)\.
	///
	/// - Remark: Using the
	/// [`bundleIdentifier`](https://developer.apple.com/documentation/foundation/bundle/1418023-bundleidentifier)
	/// property on the bundle is preferred over this key.
	struct CFBundleIdentifier: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleIdentifierKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIdentifier
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleIdentifier``.
	///
	/// - Remark: Using the
	/// [`bundleIdentifier`](https://developer.apple.com/documentation/foundation/bundle/1418023-bundleidentifier)
	/// property on the bundle is preferred over this key.
	static var cfBundleIdentifier: Self {
		Self()
	}
}
