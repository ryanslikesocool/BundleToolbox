import let CoreFoundation.CFBundle.kCFBundleNameKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleNameKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlenamekey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleName``
	struct CFBundleName: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleNameKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleName
{
	/// The info dictionary key for
	/// [`kCFBundleNameKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlenamekey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleName``
	static var cfBundleName: Self {
		Self()
	}
}
