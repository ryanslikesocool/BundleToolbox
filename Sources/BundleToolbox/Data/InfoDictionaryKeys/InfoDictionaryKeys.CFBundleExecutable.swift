import let CoreFoundation.CFBundle.kCFBundleExecutableKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleExecutableKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablekey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleExecutable``
	struct CFBundleExecutable: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleExecutableKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleExecutable
{
	/// The info dictionary key for
	/// [`kCFBundleExecutableKey`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablekey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleExecutable``
	static var cfBundleExecutable: Self {
		Self()
	}
}
