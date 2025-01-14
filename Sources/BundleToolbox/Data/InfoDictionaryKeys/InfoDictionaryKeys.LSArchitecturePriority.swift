@available(macOS 10.1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSArchitecturePriorityKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsArchitecturePriority``
	struct LSArchitecturePriority: InfoDictionaryKey {
		public typealias Output = [String]

		public static var infoDictionaryKey: String {
			kLSArchitecturePriorityKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSArchitecturePriority
{
	/// The info dictionary key for ``kLSArchitecturePriorityKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSArchitecturePriority``
	static var lsArchitecturePriority: Self {
		Self()
	}
}
