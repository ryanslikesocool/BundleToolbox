@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSEnvironmentKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsEnvironment``
	struct LSEnvironment: InfoDictionaryKey {
		public typealias Output = [String: Any]

		public static var infoDictionaryKey: String {
			kLSEnvironmentKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSEnvironment
{
	/// The info dictionary key for ``kLSEnvironmentKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSEnvironment``
	static var lsEnvironment: Self {
		Self()
	}
}
