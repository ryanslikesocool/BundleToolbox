import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-3c38j``
public typealias AnyInfoDictionaryObject<Input, Output> = AnyObjectProcessor<Input, Output>

public extension AnyInfoDictionaryObject {
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
	func eraseToAnyInfoDictionaryObject() -> AnyInfoDictionaryObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}