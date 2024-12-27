public protocol InfoDictionaryObject<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension InfoDictionaryObject {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> some InfoDictionaryObject<Self.Input, Modifier.Output> where
		Modifier: InfoDictionaryObject,
		Self.Output == Modifier.Input
	{
		ModifiedContent(upstream: self, downstream: modifier)
	}
}
