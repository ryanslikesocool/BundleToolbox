@available(macOS 12.1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUILaunchToFullScreenByDefaultOnMacKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/uiLaunchToFullScreenByDefaultOnMac``
	struct UILaunchToFullScreenByDefaultOnMac: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kUILaunchToFullScreenByDefaultOnMacKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 12.1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UILaunchToFullScreenByDefaultOnMac
{
	/// The info dictionary key for ``kUILaunchToFullScreenByDefaultOnMacKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UILaunchToFullScreenByDefaultOnMac``
	static var uiLaunchToFullScreenByDefaultOnMac: Self {
		Self()
	}
}
