@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUIPrerenderedIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/uiPrerenderedIcon``
	struct UIPrerenderedIcon: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String { kUIPrerenderedIconKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UIPrerenderedIcon
{
	/// The info dictionary key for ``kUIPrerenderedIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UIPrerenderedIcon``
	static var uiPrerenderedIcon: Self {
		Self()
	}
}
