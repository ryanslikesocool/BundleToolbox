public extension InfoDictionaryKeys {
	/// The attribute key for ``kCFBundleShortVersionStringKey``.
	struct CFBundleShortVersionString: InfoDictionaryKey {
		public typealias Value = String

		public static var infoDictionaryKey: String { kCFBundleShortVersionStringKey }

		public init() { }
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleShortVersionString
{
	/// The shorthand bundle info dictionary key accessor for ``InfoDictionaryKeys/CFBundleShortVersionString``.
	static var cfBundleShortVersionString: Self {
		Self()
	}
}
