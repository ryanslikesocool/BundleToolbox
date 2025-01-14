@available(macOS 10.5, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSFileQuarantineEnabledKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsFileQuarantineEnabled``
	struct LSFileQuarantineEnabled: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kLSFileQuarantineEnabledKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.5, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSFileQuarantineEnabled
{
	/// The info dictionary key for ``kLSFileQuarantineEnabledKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSFileQuarantineEnabled``
	static var lsFileQuarantineEnabled: Self {
		Self()
	}
}
