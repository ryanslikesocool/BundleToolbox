@available(iOS 9, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUIRequiresFullScreenKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/uiRequiresFullScreen``
	struct UIRequiresFullScreen: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kUIRequiresFullScreenKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 9, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UIRequiresFullScreen
{
	/// The info dictionary key for ``kUIRequiresFullScreenKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UIRequiresFullScreen``
	static var uiRequiresFullScreen: Self {
		Self()
	}
}
