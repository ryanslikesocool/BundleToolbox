import let CoreFoundation.CFBundle.kCFBundleDevelopmentRegionKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleDevelopmentRegionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundledevelopmentregionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleDevelopmentRegion``
	struct CFBundleDevelopmentRegion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleDevelopmentRegionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleDevelopmentRegion
{
	/// The info dictionary key for
	/// [`kCFBundleDevelopmentRegionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundledevelopmentregionkey)\.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleDevelopmentRegion``
	static var cfBundleDevelopmentRegion: Self {
		Self()
	}
}
