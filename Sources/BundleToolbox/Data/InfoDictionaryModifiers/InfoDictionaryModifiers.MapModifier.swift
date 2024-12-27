public extension InfoDictionaryModifiers {
	struct Map<Input, Output>: InfoDictionaryObject {
		private let transform: (Input) throws -> Output

		public init(_ transform: @escaping (Input) throws -> Output) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> Output {
			try transform(input)
		}
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject {
	/// Perform a `map` operation on an info dictionary value.
	func map<Output>(
		_ transform: @escaping (Self.Output) throws -> Output
	) -> some InfoDictionaryObject<Self.Input, Output> {
		let modifier = InfoDictionaryModifiers.Map(transform)
		return self.modifier(modifier)
	}

	/// Perform a `map` operation on the info dictionary value.
	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement
	) -> some InfoDictionaryObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) -> [OutputElement] in
			try input.map(transform)
		}
	}
}
