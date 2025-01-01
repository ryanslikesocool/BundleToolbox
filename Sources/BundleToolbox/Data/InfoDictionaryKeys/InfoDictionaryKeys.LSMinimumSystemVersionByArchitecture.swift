import class Foundation.Bundle

@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kLSMinimumSystemVersionByArchitectureKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/lsMinimumSystemVersionByArchitecture``
	struct LSMinimumSystemVersionByArchitecture: InfoDictionaryKey {
		public typealias Output = [CFBundleExecutableArchitecture: String]

		public static var infoDictionaryKey: String { kLSMinimumSystemVersionByArchitectureKey }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
				throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
			}
			guard let dictionaryValue = infoDictionaryValue as? [String: Any] else {
				throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: [String: Any].self)
			}

			let pairs: [(Output.Key, Output.Value)] = try dictionaryValue.map { (key: String, value: Any) throws -> (Output.Key, Output.Value) in
				guard let resultDictionaryKey = Output.Key(stringValue: key) else {
					throw InfoDictionaryError.conversionFailed(from: key, to: Output.Key.self)
				}
				guard let resultDictionaryValue = value as? Output.Value else {
					throw InfoDictionaryError.castFailed(from: value, to: Output.Value.self)
				}
				return (resultDictionaryKey, resultDictionaryValue)
			}
			return Output(uniqueKeysWithValues: pairs)
		}
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.LSMinimumSystemVersionByArchitecture
{
	/// The info dictionary key for ``kLSMinimumSystemVersionByArchitectureKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/LSMinimumSystemVersionByArchitecture``
	static var lsMinimumSystemVersionByArchitecture: Self {
		Self()
	}
}
