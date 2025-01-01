@available(macOS 10.15, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kTICapsLockLanguageSwitchCapableKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/tiCapsLockLanguageSwitchCapable``
	struct TICapsLockLanguageSwitchCapable: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kTICapsLockLanguageSwitchCapableKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.15, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.TICapsLockLanguageSwitchCapable
{
	/// The info dictionary key for ``kTICapsLockLanguageSwitchCapableKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/TICapsLockLanguageSwitchCapable``
	static var tiCapsLockLanguageSwitchCapable: Self {
		Self()
	}
}
