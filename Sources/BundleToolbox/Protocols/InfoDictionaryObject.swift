import DeclarativeCore

public protocol InfoDictionaryObject<Input, Output>: ObjectProcessor {
	// Shadows `ObjectProcessor.Input`
	/// The type of the argument for ``process(_:)``.
	associatedtype Input

	// Shadows `ObjectProcessor.Output`
	/// The type of the value returned by ``process(_:)``.
	associatedtype Output

	// Shadows `ObjectProcessor.process(_:)`
	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension InfoDictionaryObject {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> ModifiedObject<Self, Modifier> where
		Modifier: InfoDictionaryObject,
		Self.Output == Modifier.Input
	{
		ModifiedObject(upstream: self, downstream: modifier)
	}
}

// MARK: - Default Conformances

extension ObjectProcessorModifiers.Map: InfoDictionaryObject { }
extension ObjectProcessorModifiers.CompactMap: InfoDictionaryObject { }
extension ObjectProcessorModifiers.FlatMap: InfoDictionaryObject { }
extension ObjectProcessorModifiers.Filter: InfoDictionaryObject { }
extension ObjectProcessorModifiers.Sort: InfoDictionaryObject { }
