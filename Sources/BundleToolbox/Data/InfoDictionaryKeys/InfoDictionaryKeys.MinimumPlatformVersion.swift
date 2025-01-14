@available(iOS 3, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 1, *)
public extension InfoDictionaryKeys {
	/// An info dictionary key that retrieves the value for ``kLSMinimumSystemVersionKey`` or ``kMinimumOSVersionKey`` depending on the platform.
	///
	/// | Platforms | Key |
	/// | - | - |
	/// | Mac Catalyst, macOS | ``kLSMinimumSystemVersionKey`` |
	/// | iOS, iPadOS, tvOS, visionOS, watchOS | ``kMinimumOSVersionKey`` |
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/minimumPlatformVersion``
	struct MinimumPlatformVersion: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
#if targetEnvironment(macCatalyst) || os(macOS)
			kLSMinimumSystemVersionKey
#elseif os(iOS) || os(tvOS) || os(visionOS) || os(watchOS)
			kMinimumOSVersionKey
#else
			fatalError("Unsupported platform")
#endif
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 3, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.MinimumPlatformVersion
{
	/// An info dictionary key that retrieves the value for ``kLSMinimumSystemVersionKey`` or ``kMinimumOSVersionKey`` depending on the platform.
	///
	/// | Platforms | Key |
	/// | - | - |
	/// | Mac Catalyst, macOS | ``kLSMinimumSystemVersionKey`` |
	/// | iOS, iPadOS, tvOS, visionOS, watchOS | ``kMinimumOSVersionKey`` |
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/MinimumPlatformVersion``
	static var minimumPlatformVersion: Self {
		Self()
	}
}
