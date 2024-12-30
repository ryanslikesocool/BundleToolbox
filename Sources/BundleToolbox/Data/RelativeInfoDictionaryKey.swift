import DeclarativeCore
import class Foundation.Bundle

/// ## See Also
/// - ``InfoDictionaryKey/relative(to:)``
/// - ``InfoDictionaryObject/appending(_:)``
public struct RelativeInfoDictionaryKey<DictionaryValue, Upstream, Downstream>: InfoDictionaryObject where
	Upstream: InfoDictionaryObject,
	Downstream: InfoDictionaryKey,
	Upstream.Input == Bundle,
	Upstream.Output == [String: DictionaryValue]
{
	public typealias Input = Upstream.Input
	public typealias Output = Downstream.Output

	public let upstream: Upstream
	public let downstream: Downstream

	public init(upstream: Upstream, downstream: Downstream) {
		self.upstream = upstream
		self.downstream = downstream
	}

	public func process(_ input: Input) throws -> Output {
		let upstreamOutput = try upstream.process(input)
		let downstreamOutput = try downstream.processRelative(upstreamOutput)

		return downstreamOutput
	}
}

// MARK: - Convenience

public extension InfoDictionaryKey {
	/// - Remark: This function is the inverse of ``InfoDictionaryObject/appending(_:)``
	func relative<Upstream, DictionaryValue>(
		to upstream: Upstream
	) -> some InfoDictionaryObject<Upstream.Input, Self.Output> where
		Upstream: InfoDictionaryObject,
		Upstream.Input == Bundle,
		Upstream.Output == [String: DictionaryValue]
	{
		RelativeInfoDictionaryKey<DictionaryValue, Upstream, Self>(
			upstream: upstream,
			downstream: self
		)
	}
}

public extension InfoDictionaryObject where
	Self.Input == Bundle
{
	/// - Remark: This function is the inverse of ``InfoDictionaryKey/relative(to:)``
	func appending<Key, DictionaryValue>(
		_ localKey: Key
	) -> some InfoDictionaryObject<Self.Input, Key.Output> where
		Key: InfoDictionaryKey,
		Self.Output == [String: DictionaryValue]
	{
		RelativeInfoDictionaryKey<DictionaryValue, Self, Key>(
			upstream: self,
			downstream: localKey
		)
	}
}
