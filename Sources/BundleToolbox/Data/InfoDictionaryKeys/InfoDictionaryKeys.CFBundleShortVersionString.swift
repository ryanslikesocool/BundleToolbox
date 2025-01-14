@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleShortVersionStringKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleShortVersionString``
	struct CFBundleShortVersionString: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFBundleShortVersionStringKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleShortVersionString
{
	/// The info dictionary key for ``kCFBundleShortVersionStringKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleShortVersionString``
	static var cfBundleShortVersionString: Self {
		Self()
	}
}
