@available(macOS 10.7, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kNSSupportsAutomaticTerminationKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/nsSupportsAutomaticTermination``
	struct NSSupportsAutomaticTermination: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kNSSupportsAutomaticTerminationKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.7, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.NSSupportsAutomaticTermination
{
	/// The info dictionary key for ``kNSSupportsAutomaticTerminationKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/NSSupportsAutomaticTermination``
	static var nsSupportsAutomaticTermination: Self {
		Self()
	}
}
