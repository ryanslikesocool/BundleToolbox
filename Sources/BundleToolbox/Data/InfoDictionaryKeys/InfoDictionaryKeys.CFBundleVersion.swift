import let CoreFoundation.CFBundle.kCFBundleVersionKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleversionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleVersion``
	struct CFBundleVersion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleVersionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleVersion
{
	/// The info dictionary key for
	/// [`kCFBundleVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleversionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleVersion``
	static var cfBundleVersion: Self {
		Self()
	}
}
