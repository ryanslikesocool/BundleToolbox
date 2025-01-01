@available(iOS 3, tvOS 9, visionOS 1, watchOS 1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kMinimumOSVersionKey``.
	///
	/// For Mac Catalyst and macOS, see ``InfoDictionaryKeys/LSMinimumSystemVersion``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/minimumOSVersion``
	struct MinimumOSVersion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kMinimumOSVersionKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 3, tvOS 9, visionOS 1, watchOS 1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.MinimumOSVersion
{
	/// The info dictionary key for ``kMinimumOSVersionKey``.
	///
	/// For Mac Catalyst and macOS, see ``InfoDictionaryObject/lsMinimumSystemVersion``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/MinimumOSVersion``
	static var minimumOSVersion: Self {
		Self()
	}
}
