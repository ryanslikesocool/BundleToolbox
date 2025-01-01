import class Foundation.Bundle

@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSUIPresentationModeKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/lsUIPresentationMode``
	struct LSUIPresentationMode: InfoDictionaryKey {
		public typealias Output = BundleToolbox.LSUIPresentationMode

		public static var infoDictionaryKey: String { kLSUIPresentationModeKey }

		public init() { }

//		public func process(_ input: Input) throws -> Output {
//			guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
//				throw InfoDictionaryError.unexpectedNil
//			}
//			guard let rawValue = infoDictionaryValue as? Output.RawValue else {
//				throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: Output.RawValue.self)
//			}
//			guard let resultValue = Output(rawValue: rawValue) else {
//				throw InfoDictionaryError.conversionFailed(from: rawValue, to: Output.self)
//			}
//			return resultValue
//		}
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSUIPresentationMode
{
	/// The info dictionary key for ``kLSUIPresentationModeKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSUIPresentationMode``
	static var lsUIPresentationMode: Self {
		Self()
	}
}
