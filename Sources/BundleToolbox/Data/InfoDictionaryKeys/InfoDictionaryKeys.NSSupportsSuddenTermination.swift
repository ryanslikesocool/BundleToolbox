@available(macOS 10, *)
public extension InfoDictionaryKeys {
	/// The info dictionary key for ``kNSSupportsSuddenTerminationKey``.
	///
	/// ## Topics
	/// ### Convenience
	/// - ``InfoDictionaryObject/nsSupportsSuddenTermination``
	struct NSSupportsSuddenTermination: InfoDictionaryKey {
		public typealias Output = Bool

		public static var infoDictionaryKey: String {
			kNSSupportsSuddenTerminationKey
		}

		public init() { }
	}
}

// MARK: - Convenience

@available(macOS 10, *)
public extension InfoDictionaryObject where
	Self == InfoDictionaryKeys.NSSupportsSuddenTermination
{
	/// The info dictionary key for ``kNSSupportsSuddenTerminationKey``.
	///
	/// ## See Also
	/// - ``InfoDictionaryKeys/NSSupportsSuddenTermination``
	static var nsSupportsSuddenTermination: Self {
		Self()
	}
}
