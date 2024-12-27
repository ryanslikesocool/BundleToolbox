public extension InfoDictionaryModifiers {
	struct CompactMap<Input, OutputElement>: InfoDictionaryObject where
		Input: Sequence
	{
		private let transform: (Input.Element) throws -> OutputElement?

		public init(_ transform: @escaping (Input.Element) throws -> OutputElement?) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [OutputElement] {
			try input.compactMap(transform)
		}
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject {
	/// Perform a `compactMap` operation on an info dictionary value.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement?
	) -> some InfoDictionaryObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = InfoDictionaryModifiers.CompactMap<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
