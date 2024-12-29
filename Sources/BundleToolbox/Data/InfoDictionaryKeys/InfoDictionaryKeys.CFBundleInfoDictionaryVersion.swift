import let CoreFoundation.CFBundle.kCFBundleInfoDictionaryVersionKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleInfoDictionaryVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleinfodictionaryversionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleInfoDictionaryVersion``
	struct CFBundleInfoDictionaryVersion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleInfoDictionaryVersionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleInfoDictionaryVersion
{
	/// The info dictionary key for
	/// [`kCFBundleInfoDictionaryVersionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleinfodictionaryversionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleInfoDictionaryVersion``
	static var cfBundleInfoDictionaryVersion: Self {
		Self()
	}
}
