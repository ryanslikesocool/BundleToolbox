#if canImport(UniformTypeIdentifiers)
import UniformTypeIdentifiers
#endif

@available(iOS 2, macOS 10.6.6, tvOS 9, watchOS 2, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSApplicationCategoryTypeKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/lsApplicationCategoryType``
	struct LSApplicationCategoryType: InfoDictionaryKey {
		public typealias Output = String

		public static var infoDictionaryKey: String {
			kLSApplicationCategoryTypeKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(iOS 2, macOS 10.6.6, tvOS 9, watchOS 2, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSApplicationCategoryType
{
	/// The info dictionary key for ``kLSApplicationCategoryTypeKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSApplicationCategoryType``
	static var lsApplicationCategoryType: Self {
		Self()
	}
}

// MARK: - Modifiers

public extension InfoDictionaryKeys.LSApplicationCategoryType {
#if canImport(UniformTypeIdentifiers)
	// TODO: Validate that interpreting as a `UTType` is valid.
	// The
	// [documentation for `LSApplicationCategoryType`]( https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/uid/TP40009250-SW8 )
	// implies that application categories are UTIs.
	/// Interpret the application category as a Uniform Type Identifier.
	@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, watchOS 7, *)
	func asUTType() -> some InfoDictionaryObject<Self.Input, UTType> {
		map { (input: Self.Output) throws -> UTType in
			guard let utType: UTType = UTType(input) else {
				throw InfoDictionaryError.conversionFailed(from: input, to: UTType.self)
			}
			return utType
		}
	}
#endif
}