import Foundation

public extension Bundle {
	/// Returns the value associated with the specified key in the receiver's information property list.
	///
	/// Use of this method is preferred over other access methods because it returns the localized value of a key when one is available.
	///
	/// - Parameter infoDictionaryKey: A key in the receiver's property list.
	/// - Returns: The value associated with key in the receiver's property list (`Info.plist`).
	/// The localized value of a key is returned when one is available.
	func object<Key>(forInfoDictionaryKey infoDictionaryKey: Key) throws -> Key.Output where
		Key: InfoDictionaryObject,
		Key.Input == Bundle
	{
		try infoDictionaryKey.process(self)
	}

//	/// Returns the values for the info dictionary keys specified by the given `infoDictionaryKeys`.
//	/// - Parameter infoDictionaryKeys:
//	/// - Returns: For each element: the value for the info dictionary key specified by the corresponding item in `infoDictionaryKeys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forInfoDictionaryKeys infoDictionaryKeys: repeat each Key) -> (repeat Result<(each Key).Output, any Error>) where
//		repeat each Key: InfoDictionaryObject,
//		repeat (each Key).Input == Bundle // NOTE: Parameter packs do not support this constraint yet.
//	{
//		(repeat object(forInfoDictionaryKey: each infoDictionaryKeys))
//	}
}
