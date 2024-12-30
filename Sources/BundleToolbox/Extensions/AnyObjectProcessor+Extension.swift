import DeclarativeCore

// MARK: - InfoDictionaryObject

extension AnyObjectProcessor: InfoDictionaryObject { }

// MARK: - Convenience

public typealias AnyInfoDictionaryObject<Input, Output> = AnyObjectProcessor<Input, Output>
public typealias PartialInfoDictionaryObject<Input> = PartialObjectProcessor<Input>

public extension AnyObjectProcessor {
	@_disfavoredOverload
	init<Object>(_ infoDictionaryObject: Object) where
		Object: InfoDictionaryObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(infoDictionaryObject)
	}

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
	func eraseToAnyInfoDictionaryObject() -> AnyInfoDictionaryObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}

	func eraseToPartialInfoDictionaryObject() -> PartialInfoDictionaryObject<Input> {
		eraseToPartialObjectProcessor()
	}
}