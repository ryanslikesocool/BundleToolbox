@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleSpokenNameKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleSpokenName``
	struct CFBundleSpokenName: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleSpokenNameKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleName
{
	/// The info dictionary key for ``kCFBundleSpokenNameKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleSpokenName``
	static var cfBundleSpokenName: Self {
		Self()
	}
}
