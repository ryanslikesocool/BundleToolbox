@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleAllowMixedLocalizationsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleDevelopmentRegion``
	struct CFBundleAllowMixedLocalizations: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kCFBundleAllowMixedLocalizationsKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleAllowMixedLocalizations
{
	/// The info dictionary key for ``kCFBundleAllowMixedLocalizationsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleAllowMixedLocalizations``
	static var cfBundleAllowMixedLocalizations: Self {
		Self()
	}
}
