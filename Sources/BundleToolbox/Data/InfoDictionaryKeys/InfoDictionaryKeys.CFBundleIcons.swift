@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleIconsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleIcons``
	struct CFBundleIcons: InfoDictionaryKey {
		public typealias Output = [String: Any]

		public static var infoDictionaryKey: String { kCFBundleIconsKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIcons
{
	/// The info dictionary key for ``kCFBundleIconsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIcons``
	static var cfBundleIcons: Self {
		Self()
	}
}
