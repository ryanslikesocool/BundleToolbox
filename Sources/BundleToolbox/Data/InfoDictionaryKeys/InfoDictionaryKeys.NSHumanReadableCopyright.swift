public extension InfoDictionaryKeys {
	/// The attribute key for ``kNSHumanReadableCopyrightKey``.
	struct NSHumanReadableCopyright: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kNSHumanReadableCopyrightKey }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.NSHumanReadableCopyright
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/NSHumanReadableCopyright``.
	static var nsHumanReadableCopyright: Self {
		Self()
	}
}
