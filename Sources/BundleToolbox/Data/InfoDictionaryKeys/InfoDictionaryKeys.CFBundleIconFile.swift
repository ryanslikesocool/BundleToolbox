#if canImport(AppKit)
import AppKit
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleIconFileKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleIconFile``
	struct CFBundleIconFile: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleIconFileKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIconFile
{
	/// The info dictionary key for ``kCFBundleIconFileKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIconFile``
	static var cfBundleIconFile: Self {
		Self()
	}
}

// MARK: - Modifiers

@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public extension InfoDictionaryKeys.CFBundleIconFile {
#if canImport(AppKit)
	/// Load the image from the given `bundle`.
	///
	/// - Parameter bundle: The bundle to load the image from.
	func asNSImage(
		in bundle: Bundle
	) -> some InfoDictionaryObject<Self.Input, NSImage> {
		map { (input: Self.Output) throws -> NSImage in
			guard let nsImage: NSImage = bundle.image(forResource: input) else {
				throw InfoDictionaryError.missingBundleResource(named: input)
			}
			return nsImage
		}
	}
#endif

#if canImport(DeveloperToolsSupport)
	/// Load the image resource from the given `bundle`.
	///
	/// - Parameter bundle: The bundle to load the image resource from.
	@available(iOS 17, macCatalyst 17, macOS 14, tvOS 17, visionOS 1, watchOS 10, *)
	func asImageResource(
		in bundle: Bundle
	) -> some InfoDictionaryObject<Self.Input, ImageResource> {
		map { (input: Self.Output) -> ImageResource in
			ImageResource(name: input, bundle: bundle)
		}
	}
#endif
}
