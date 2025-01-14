@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSBackgroundOnlyKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsBackgroundOnly``
	struct LSBackgroundOnly: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kLSBackgroundOnlyKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSBackgroundOnly
{
	/// The info dictionary key for ``kLSBackgroundOnlyKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSBackgroundOnly``
	static var lsBackgroundOnly: Self {
		Self()
	}
}
