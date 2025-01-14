import DeclarativeCore

/// A type-erased ``InfoDictionaryObject`` that preserves both the `Input` and `Output` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-3c38j``
///
/// ### Modifiers
/// - ``InfoDictionaryObject/eraseToAnyInfoDictionaryObject()``
public typealias AnyInfoDictionaryObject<Input, Output> = AnyObjectProcessor<Input, Output>

// MARK: - Convenience

public extension AnyInfoDictionaryObject {
	/// - Parameter infoDictionaryObject:
	@_disfavoredOverload
	init<Object>(_ infoDictionaryObject: Object) where
		Object: InfoDictionaryObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(infoDictionaryObject)
	}
}

public extension InfoDictionaryObject {
	/// Type-erase the object, preserving both the `Input` and `Output` type information.
	/// 
	/// ## See Also
	/// - ``AnyInfoDictionaryObject``
	///
	/// - Returns: A type-erased version of the object that preserves both the `Input` and `Output` type information.
	func eraseToAnyInfoDictionaryObject() -> AnyInfoDictionaryObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}
