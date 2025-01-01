import class Foundation.Bundle
#if canImport(UIKit)
import UIKit
#endif

@available(iOS 2, macCatalyst 13, visionOS 1, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kUIInterfaceOrientationKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryObject/uiInterfaceOrientation``
	struct UIInterfaceOrientation: InfoDictionaryKey {
#if canImport(UIKit)
		public typealias Output = UIKit.UIInterfaceOrientation
#else
		public typealias Output = String
#endif

		public static var infoDictionaryKey: String { kUIInterfaceOrientationKey }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			guard let infoDictionaryValue = input.object(forInfoDictionaryKey: Self.infoDictionaryKey) else {
				throw InfoDictionaryError.missingValue(forKey: Self.infoDictionaryKey)
			}
			guard let stringValue = infoDictionaryValue as? String else {
				throw InfoDictionaryError.castFailed(from: infoDictionaryValue, to: String.self)
			}
#if canImport(UIKit)
			return Output(infoDictionaryValue: stringValue)
#else
			return stringValue
#endif
		}
	}
}

// MARK: - Convenience

@available(iOS 2, macCatalyst 13, visionOS 1, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.UIInterfaceOrientation
{
	/// The info dictionary key for ``kUIInterfaceOrientationKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/UIInterfaceOrientation``
	static var uiInterfaceOrientation: Self {
		Self()
	}
}
