@available(macOS 12.1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUISupportsTrueScreenSizeOnMacKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/uiSupportsTrueScreenSizeOnMac``
	struct UISupportsTrueScreenSizeOnMac: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kUISupportsTrueScreenSizeOnMacKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 12.1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UISupportsTrueScreenSizeOnMac
{
	/// The info dictionary key for ``kUISupportsTrueScreenSizeOnMacKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UISupportsTrueScreenSizeOnMac``
	static var uiSupportsTrueScreenSizeOnMac: Self {
		Self()
	}
}
