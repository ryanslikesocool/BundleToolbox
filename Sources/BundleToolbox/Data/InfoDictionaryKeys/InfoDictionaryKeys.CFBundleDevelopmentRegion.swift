import let CoreFoundation.CFBundle.kCFBundleDevelopmentRegionKey

public extension InfoDictionaryKeys {
	/// The attribute key for
	/// [`kCFBundleDevelopmentRegionKey`](https://developer.apple.com/documentation/corefoundation/kcfbundledevelopmentregionkey)\.
	struct CFBundleDevelopmentRegion: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleDevelopmentRegionKey as String }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleDevelopmentRegion
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleDevelopmentRegion``.
	static var cfBundleDevelopmentRegion: Self {
		Self()
	}
}
