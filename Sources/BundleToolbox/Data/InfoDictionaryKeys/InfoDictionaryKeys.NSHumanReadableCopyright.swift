@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kNSHumanReadableCopyrightKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/nsHumanReadableCopyright``
	struct NSHumanReadableCopyright: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kNSHumanReadableCopyrightKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.NSHumanReadableCopyright
{
	/// The info dictionary key for ``kNSHumanReadableCopyrightKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/NSHumanReadableCopyright``
	static var nsHumanReadableCopyright: Self {
		Self()
	}
}
