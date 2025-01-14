import class Foundation.Bundle
#if canImport(UIKit)
import UIKit
#endif

@available(iOS 2, macCatalyst 13, visionOS 1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUISupportedInterfaceOrientationsKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/uiSupportedInterfaceOrientations``
	struct UISupportedInterfaceOrientations: InfoDictionaryKey {
#if canImport(UIKit)
		public typealias Output = [UIKit.UIInterfaceOrientation]
#else
		public typealias Output = [String]
#endif

		public static var infoDictionaryKey: String {
			kUISupportedInterfaceOrientationsKey
		}

		public init() { }

		public func process(_ input: Input) throws -> Output {
			guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
				throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
			}
			guard let arrayValue = infoDictionaryValue as? [String] else {
				throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: [String].self)
			}
#if canImport(UIKit)
			return arrayValue.map(Output.Element.init(infoDictionaryValue:))
#else
			return arrayValue
#endif
		}
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, visionOS 1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UISupportedInterfaceOrientations
{
	/// The info dictionary key for ``kUISupportedInterfaceOrientationsKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UISupportedInterfaceOrientations``
	static var uiSupportedInterfaceOrientations: Self {
		Self()
	}
}
