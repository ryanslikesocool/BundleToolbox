@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSMultipleInstancesProhibitedKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsMultipleInstancesProhibited``
	struct LSMultipleInstancesProhibited: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kLSMultipleInstancesProhibitedKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSMultipleInstancesProhibited
{
	/// The info dictionary key for ``kLSMultipleInstancesProhibitedKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSMultipleInstancesProhibited``
	static var lsMultipleInstancesProhibited: Self {
		Self()
	}
}
