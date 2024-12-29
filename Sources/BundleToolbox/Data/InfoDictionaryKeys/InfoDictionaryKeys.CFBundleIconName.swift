import DeclarativeCore
#if canImport(AppKit)
import AppKit
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

@available(macOS 10.13, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kCFBundleIconNameKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/cfBundleIconName``
	struct CFBundleIconName: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String { kCFBundleIconNameKey }

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10.13, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.CFBundleIconName
{
	/// The info dictionary key for ``kCFBundleIconNameKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/CFBundleIconName``
	static var cfBundleIconName: Self {
		Self()
	}
}

// MARK: - Modifiers

@available(macOS 10.13, *)
public extension InfoDictionaryKeys.CFBundleIconName {
#if canImport(AppKit)
	/// Load the image from the given `bundle`.
	///
	/// - Parameter bundle: The bundle to load the image from.
	func asNSImage(
		in bundle: Bundle
	) -> some InfoDictionaryObject<Self.Input, NSImage> {
		map { (input: Self.Output) throws -> NSImage in
			guard let nsImage: NSImage = bundle.image(forResource: input) else {
				throw InfoDictionaryError.unexpectedNil
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
