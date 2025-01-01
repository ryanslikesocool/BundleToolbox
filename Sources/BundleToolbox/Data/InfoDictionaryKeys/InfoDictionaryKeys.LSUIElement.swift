@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSUIElementKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/lsUIElement``
	struct LSUIElement: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kLSUIElementKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSUIElement
{
	/// The info dictionary key for ``kLSUIElementKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSUIElement``
	static var lsUIElement: Self {
		Self()
	}
}
