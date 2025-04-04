import let CoreFoundation.CFBundle.kCFBundleExecutableKey
import class Foundation.Bundle
import struct Foundation.URL

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for
	/// [`kCFBundleExecutableKey`]( https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablekey ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/cfBundleExecutable``
	struct CFBundleExecutable: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kCFBundleExecutableKey as String
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleExecutable
{
	/// The info dictionary key for
	/// [`kCFBundleExecutableKey`]( https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablekey ).
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleExecutable``
	static var cfBundleExecutable: Self {
		Self()
	}
}

// MARK: -

//@available(iOS 2, macOS 10, *)
//public extension InfoDictionaryKeys.CFBundleExecutable {
//	func url(relativeTo bundle: Bundle) -> some InfoDictionaryObject<Self.Input, URL> {
//		self.map { (input: Self.Input) -> URL in
//#if os(macOS)
//			// VALIDATE: Is this true for all applications?
//			bundle.bundleURL
//				.appending(component: "Contents/MacOS", directoryHint: .isDirectory)
//				.appending(component: executableName, directoryHint: .notDirectory)
//#elseif os(iOS)
//			// VALIDATE: Is this correct?
//			bundle.bundleURL
//				.appending(component: executableName, directoryHint: .notDirectory)
//#endif
//		}
//	}
//}