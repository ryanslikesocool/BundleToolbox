import let CoreFoundation.CFBundle.kCFBundleIdentifierKey

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleIdentifierKey`]( https://developer.apple.com/documentation/corefoundation/kcfbundleidentifierkey ).
	///
	/// - Remark: Using the
	/// [`bundleIdentifier`]( https://developer.apple.com/documentation/foundation/bundle/1418023-bundleidentifier )
	/// property on the bundle is preferred over using this key.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleIdentifier``
	struct CFBundleIdentifier: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFBundleIdentifierKey as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIdentifier
{
	/// The info dictionary key for
	/// [`kCFBundleIdentifierKey`]( https://developer.apple.com/documentation/corefoundation/kcfbundleidentifierkey ).
	///
	/// - Remark: Using the
	/// [`bundleIdentifier`]( https://developer.apple.com/documentation/foundation/bundle/1418023-bundleidentifier )
	/// property on the bundle is preferred over using this key.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIdentifier``
	static var cfBundleIdentifier: Self {
		Self()
	}
}
