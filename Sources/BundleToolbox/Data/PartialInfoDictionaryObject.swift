import DeclarativeCore

/// A type-erased ``InfoDictionaryObject`` that preserves only the `Input` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-2yrkk``
///
///
/// ### Modifiers
/// - ``InfoDictionaryObject/eraseToPartialInfoDictionaryObject()``
public typealias PartialInfoDictionaryObject<Input> = PartialObjectProcessor<Input>

// MARK: - Convenience

public extension PartialInfoDictionaryObject {
	/// - Parameter infoDictionaryObject:
	@_disfavoredOverload
	init<Object>(_ infoDictionaryObject: Object) where
		Object: InfoDictionaryObject,
		Object.Input == Self.Input,
		Self.Output == Any
	{
		self.init(infoDictionaryObject)
	}
}

public extension InfoDictionaryObject {
	/// Type-erase the object, preserving only the `Input` type information.
	/// 
	/// ## See Also
	/// - ``PartialInfoDictionaryObject``
	///
	/// - Returns: A type-erased version of the object that preserves only the `Input` type information.
	func eraseToPartialInfoDictionaryObject() -> PartialInfoDictionaryObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
