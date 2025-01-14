import DeclarativeCore
import class Foundation.Bundle

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleIconFilesKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleIconFiles``
	/// - ``InfoDictionaryKeys/CFBundlePrimaryIcon/cfBundleIconFiles``
	struct CFBundleIconFiles: InfoDictionaryKey {
		public typealias Output = [String]

		public static var infoDictionaryKey: String {
			kCFBundleIconFilesKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIconFiles
{
	/// The info dictionary key for ``kCFBundleIconFilesKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIconFiles``
	/// - ``InfoDictionaryKeys/CFBundlePrimaryIcon/cfBundleIconFiles``
	static var cfBundleIconFiles: Self {
		Self()
	}
}
