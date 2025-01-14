@available(macCatalyst 13, macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSMinimumSystemVersionKey``.
	///
	/// For iOS, iPadOS, tvOS, visionOS, or watchOS, see ``InfoDictionaryKeys/MinimumOSVersion``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsMinimumSystemVersion``
	struct LSMinimumSystemVersion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kLSMinimumSystemVersionKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macCatalyst 13, macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSMinimumSystemVersion
{
	/// The info dictionary key for ``kLSMinimumSystemVersionKey``.
	///
	/// For iOS, iPadOS, tvOS, visionOS, or watchOS, see ``InfoDictionaryObject/minimumOSVersion``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSMinimumSystemVersion``
	static var lsMinimumSystemVersion: Self {
		Self()
	}
}
