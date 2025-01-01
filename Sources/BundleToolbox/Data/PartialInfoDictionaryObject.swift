import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-2yrkk``
public typealias PartialInfoDictionaryObject<Input> = PartialObjectProcessor<Input>

public extension PartialInfoDictionaryObject {
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
	func eraseToPartialInfoDictionaryObject() -> PartialInfoDictionaryObject<Input> {
		eraseToPartialObjectProcessor()
	}
}