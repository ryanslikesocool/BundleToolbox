@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSRequiresNativeExecutionKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsRequiresNativeExecution``
	struct LSRequiresNativeExecution: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kLSRequiresNativeExecutionKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSRequiresNativeExecution
{
	/// The info dictionary key for ``kLSRequiresNativeExecutionKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSRequiresNativeExecution``
	static var lsRequiresNativeExecution: Self {
		Self()
	}
}
