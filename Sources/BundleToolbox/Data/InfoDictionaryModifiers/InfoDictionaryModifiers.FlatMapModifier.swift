public extension InfoDictionaryModifiers {
	struct FlatMap<Input, SegmentOfResult>: InfoDictionaryObject where
		Input: Sequence,
		SegmentOfResult: Sequence
	{
		private let transform: (Input.Element) throws -> SegmentOfResult

		public init(_ transform: @escaping (Input.Element) throws -> SegmentOfResult) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [SegmentOfResult.Element] {
			try input.flatMap(transform)
		}
	}
}

// MARK: - Convenience

public extension InfoDictionaryObject {
	/// Perform a `flatMap` operation on an info dictionary value.
	func flatMap<SegmentOfResult>(
		_ transform: @escaping (Self.Output.Element) throws -> SegmentOfResult
	) -> some InfoDictionaryObject<Self.Input, [SegmentOfResult.Element]> where
		Self.Output: Sequence,
		SegmentOfResult: Sequence
	{
		let modifier = InfoDictionaryModifiers.FlatMap<Self.Output, SegmentOfResult>(transform)
		return self.modifier(modifier)
	}
}
