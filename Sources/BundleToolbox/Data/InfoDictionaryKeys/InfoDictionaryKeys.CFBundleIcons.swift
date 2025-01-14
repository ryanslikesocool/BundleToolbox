import DeclarativeCore

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleIconsKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleIcons``
	struct CFBundleIcons: InfoDictionaryKey {
		public typealias Output = [String: Any]

		public static var infoDictionaryKey: String {
			kCFBundleIconsKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIcons
{
	/// The info dictionary key for ``kCFBundleIconsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIcons``
	static var cfBundleIcons: Self {
		Self()
	}
}

// MARK: - Modifiers

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys.CFBundleIcons {
	/// The info dictionary key for ``kCFBundlePrimaryIconKey``, relative to ``kCFBundleIconsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundlePrimaryIcon``
	/// - ``InfoDictionaryObject/cfBundlePrimaryIcon``
	var cfBundlePrimaryIcon: some InfoDictionaryObject<Input, InfoDictionaryKeys.CFBundlePrimaryIcon.Output> {
		appending(.cfBundlePrimaryIcon)
	}
}
