import let CoreFoundation.CFBundle.kCFBundleLocalizationsKey

@available(iOS 2, macCatalyst 13, macOS 10.2, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleLocalizationsKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlelocalizationskey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleLocalizations``
	struct CFBundleLocalizations: InfoDictionaryKey {
		public typealias Output = [String]

		public static var infoDictionaryKey: String { kCFBundleLocalizationsKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10.2, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleLocalizations
{
	/// The info dictionary key for
	/// [`kCFBundleLocalizationsKey`](https://developer.apple.com/documentation/corefoundation/kcfbundlelocalizationskey)\.
	/// 
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleLocalizations``
	static var cfBundleLocalizations: Self {
		Self()
	}
}
