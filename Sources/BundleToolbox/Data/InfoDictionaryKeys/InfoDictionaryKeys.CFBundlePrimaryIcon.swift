import DeclarativeCore
import class Foundation.Bundle

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundlePrimaryIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundlePrimaryIcon``
	/// - ``InfoDictionaryKeys/CFBundleIcons/cfBundlePrimaryIcon``
	struct CFBundlePrimaryIcon: InfoDictionaryKey {
		public typealias Output = [String: Any]

		public static var infoDictionaryKey: String { kCFBundlePrimaryIconKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundlePrimaryIcon
{
	/// The info dictionary key for ``kCFBundlePrimaryIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundlePrimaryIcon``
	/// - ``InfoDictionaryKeys/CFBundleIcons/cfBundlePrimaryIcon``
	static var cfBundlePrimaryIcon: Self {
		Self()
	}
}

// MARK: - Modifiers

public extension InfoDictionaryKeys.CFBundlePrimaryIcon {
	/// The info dictionary key for ``kCFBundleIconFilesKey``, relative to ``kCFBundlePrimaryIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIconFiles``
	/// - ``InfoDictionaryObject/cfBundleIconFiles``
	var cfBundleIconFiles: some InfoDictionaryObject<Input, InfoDictionaryKeys.CFBundleIconFiles.Output> {
		appending(.cfBundleIconFiles)
	}

	/// The info dictionary key for ``kCFBundleIconNameKey``, relative to ``kCFBundlePrimaryIconKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIconName``
	/// - ``InfoDictionaryObject/cfBundleIconName``
	var cfBundleIconName: some InfoDictionaryObject<Input, InfoDictionaryKeys.CFBundleIconName.Output> {
		appending(.cfBundleIconName)
	}
}
