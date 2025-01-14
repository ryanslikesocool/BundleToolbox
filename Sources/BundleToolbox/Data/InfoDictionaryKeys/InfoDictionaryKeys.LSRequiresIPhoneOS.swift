@available(iOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSRequiresIPhoneOSKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsRequiresIPhoneOS``
	struct LSRequiresIPhoneOS: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kLSRequiresIPhoneOSKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSRequiresIPhoneOS
{
	/// The info dictionary key for ``kLSRequiresIPhoneOSKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSRequiresIPhoneOS``
	static var lsRequiresIPhoneOS: Self {
		Self()
	}
}
