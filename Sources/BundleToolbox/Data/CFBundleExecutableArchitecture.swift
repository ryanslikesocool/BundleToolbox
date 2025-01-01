import let CoreFoundation.CFBundle.kCFBundleExecutableArchitectureARM64
import let CoreFoundation.CFBundle.kCFBundleExecutableArchitectureI386
import let CoreFoundation.CFBundle.kCFBundleExecutableArchitecturePPC
import let CoreFoundation.CFBundle.kCFBundleExecutableArchitecturePPC64
import let CoreFoundation.CFBundle.kCFBundleExecutableArchitectureX86_64

/// Constants that identify executable architecture types.
public enum CFBundleExecutableArchitecture {
	/// The 32-bit Intel architecture.
	///
	/// | Value Type | Constant |
	/// | - | - |
	/// | `Int` | [`kCFBundleExecutableArchitectureI386`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablearchitecturei386) |
	/// | `String` | ``kCFBundleExecutableArchitectureNameI386`` |
	@available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
	case i386

	/// The 32-bit PowerPC architecture.
	///
	/// | Value Type | Constant |
	/// | - | - |
	/// | `Int` | [`kCFBundleExecutableArchitecturePPC`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablearchitectureppc) |
	/// | `String` | ``kCFBundleExecutableArchitectureNamePPC`` |
	@available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
	case ppc

	/// The 64-bit Intel architecture.
	///
	/// | Value Type | Constant |
	/// | - | - |
	/// | `Int` | [`kCFBundleExecutableArchitectureX86_64`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablearchitecturex86_64) |
	/// | `String` | ``kCFBundleExecutableArchitectureNameX86_64`` |
	@available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
	case x86_64

	/// The 64-bit PowerPC architecture.
	///
	/// | Value Type | Constant |
	/// | - | - |
	/// | `Int` | [`kCFBundleExecutableArchitecturePPC64`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablearchitectureppc64) |
	/// | `String` | ``kCFBundleExecutableArchitectureNamePPC64`` |
	@available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
	case ppc64

	/// The 64-bit ARM architecture.
	///
	/// | Value Type | Constant |
	/// | - | - |
	/// | `Int` | [`kCFBundleExecutableArchitectureARM64`](https://developer.apple.com/documentation/corefoundation/kcfbundleexecutablearchitecturearm64) |
	/// | `String` | ``kCFBundleExecutableArchitectureNameARM64`` |
	@available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *)
	case arm64
}

// MARK: - Sendable

extension CFBundleExecutableArchitecture: Sendable { }

// MARK: - Equatable

extension CFBundleExecutableArchitecture: Equatable { }

// MARK: - Hashable

extension CFBundleExecutableArchitecture: Hashable { }

// MARK: - Codable

// TODO: How should `Codable` implementation be handled?
// extension CFBundleExecutableArchitecture: Codable { }

// MARK: - CaseIterable

// extension CFBundleExecutableArchitecture: CaseIterable {
//	public static let allCases: [Self] = {
//		var result: [Self] = []
//
//		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
//			result.append(.i386)
//			result.append(.ppc)
//			result.append(.x86_64)
//			result.append(.ppc64)
//		}
//		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
//			result.append(.arm64)
//		}
//
//		return result
//	}()
// }

// MARK: - Constants

// NOTE: Lookup tables should ideally be computed properties,
// since the value constants are also computed properties.
// However, that may result in slowdowns...
private extension CFBundleExecutableArchitecture {
//	/// The lookup table used to retrieve the value for ``integer``.
//	static let integerLookupTable: [Self: Int] = {
//		var result: [Self: Int] = [:]
//
//		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
//			result[.i386] = kCFBundleExecutableArchitectureI386
//			result[.ppc] = kCFBundleExecutableArchitecturePPC
//			result[.x86_64] = kCFBundleExecutableArchitectureX86_64
//			result[.ppc64] = kCFBundleExecutableArchitecturePPC64
//		}
//		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
//			result[.arm64] = kCFBundleExecutableArchitectureARM64
//		}
//
//		return result
//	}()
//
//	/// The lookup table used to retrieve the value for ``init(integer:)``.
//	static let inverseIntegerLookupTable: [Int: Self] = [Int: Self](
//		uniqueKeysWithValues: integerLookupTable.map { (key: Self, value: Int) -> (Int, Self) in
//			(value, key)
//		}
//	)

//	/// The lookup table used to retrieve the value for ``name``.
//	static let nameLookupTable: [Self: String] = {
//		var result: [Self: String] = [:]
//
//		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
//			result[.i386] = kCFBundleExecutableArchitectureNameI386
//			result[.ppc] = kCFBundleExecutableArchitectureNamePPC
//			result[.x86_64] = kCFBundleExecutableArchitectureNameX86_64
//			result[.ppc64] = kCFBundleExecutableArchitectureNamePPC64
//		}
//		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
//			result[.arm64] = kCFBundleExecutableArchitectureNameARM64
//		}
//
//		return result
//	}()
//
//	/// The lookup table used to retrieve the value for ``init(name:)``.
//	static let inverseNameLookupTable: [String: Self] = [String: Self](
//		uniqueKeysWithValues: nameLookupTable.map { (key: Self, value: String) -> (String, Self) in
//			(value, key)
//		}
//	)

//	static let valueLookupTable: [Self: (integer: Int, name: String)] = {
//		var result: [Self: (Int, String)] = [:]
//
//		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
//			result[.i386] = (kCFBundleExecutableArchitectureI386, kCFBundleExecutableArchitectureNameI386)
//			result[.ppc] = (kCFBundleExecutableArchitecturePPC, kCFBundleExecutableArchitectureNamePPC)
//			result[.x86_64] = (kCFBundleExecutableArchitectureX86_64, kCFBundleExecutableArchitectureNameX86_64)
//			result[.ppc64] = (kCFBundleExecutableArchitecturePPC64, kCFBundleExecutableArchitectureNamePPC64)
//		}
//		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
//			result[.arm64] = (kCFBundleExecutableArchitectureARM64, kCFBundleExecutableArchitectureNameARM64)
//		}
//
//		return result
//	}()
}

// MARK: - Convenience

public extension CFBundleExecutableArchitecture {
	/// Create an executable architecture from an integer.
	///
	/// - Parameters:
	///   - value: The integer that represents the executable architecture.
	///
	/// ## See Also
	/// - ``intValue``
	init?(intValue value: Int) {
		// TODO: Optimize
		// - Is the Swift compiler smart enough to optimize this?
		// - Should we store this as a `static let inverseIntValueLookupTable: [Int: Self]`?

		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
			if value == kCFBundleExecutableArchitectureI386 {
				self = .i386
			} else if value == kCFBundleExecutableArchitecturePPC {
				self = .ppc
			} else if value == kCFBundleExecutableArchitectureX86_64 {
				self = .x86_64
			} else if value == kCFBundleExecutableArchitecturePPC64 {
				self = .ppc64
			}
		}

		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
			if value == kCFBundleExecutableArchitectureARM64 {
				self = .arm64
			}
		}

		return nil
	}

	/// Create an executable architecture from a string.
	///
	/// - Parameters:
	///   - value: The string that represents the executable architecture.
	///
	/// ## See Also
	/// - ``stringValue``
	init?(stringValue value: String) {
		// TODO: Optimize
		// - Is the Swift compiler smart enough to optimize this?
		// - Should we store this as a `static let inverseStringValueLookupTable: [String: Self]`?

		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
			if value == kCFBundleExecutableArchitectureNameI386 {
				self = .i386
			} else if value == kCFBundleExecutableArchitectureNamePPC {
				self = .ppc
			} else if value == kCFBundleExecutableArchitectureNameX86_64 {
				self = .x86_64
			} else if value == kCFBundleExecutableArchitectureNamePPC64 {
				self = .ppc64
			}
		}

		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
			if value == kCFBundleExecutableArchitectureNameARM64 {
				self = .arm64
			}
		}

		return nil
	}
}

// MARK: -

public extension CFBundleExecutableArchitecture {
	/// The integer value for the executable architecture.
	///
	/// ## See Also
	/// - ``init(intValue:)``
	var intValue: Int {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this?
		// - Should we store this as a `static let intValueLookupTable: [Self: Int]`?

		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
			if case .i386 = self {
				return kCFBundleExecutableArchitectureI386
			} else if case .ppc = self {
				return kCFBundleExecutableArchitecturePPC
			} else if case .x86_64 = self {
				return kCFBundleExecutableArchitectureX86_64
			} else if case .ppc64 = self {
				return kCFBundleExecutableArchitecturePPC64
			}
		}

		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
			if case .arm64 = self {
				return kCFBundleExecutableArchitectureARM64
			}
		}

		Self.preconditionFailure(noPropertyResult: self)
	}

	/// The string value for the executable architecture.
	///
	/// ## See Also
	/// - ``init(stringValue:)``
	var stringValue: String {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this?
		// - Should we store this as a `static let stringValueLookupTable: [Self: String]`?

		if #available(iOS 2, macCatalyst 13.1, macOS 10, tvOS 9, visionOS 1, watchOS 2, *) {
			if case .i386 = self {
				return kCFBundleExecutableArchitectureNameI386
			} else if case .ppc = self {
				return kCFBundleExecutableArchitectureNamePPC
			} else if case .x86_64 = self {
				return kCFBundleExecutableArchitectureNameX86_64
			} else if case .ppc64 = self {
				return kCFBundleExecutableArchitectureNamePPC64
			}
		}

		if #available(iOS 14, macCatalyst 14, macOS 11, tvOS 14, visionOS 1, watchOS 7, *) {
			if case .arm64 = self {
				return kCFBundleExecutableArchitectureNameARM64
			}
		}

		Self.preconditionFailure(noPropertyResult: self)
	}
}

// MARK: - Utility

private extension CFBundleExecutableArchitecture {
	/// Indicates that the precondition for
	/// ``intValue``
	/// or
	/// ``stringValue``
	/// was violated.
	///
	/// - Parameters:
	///   - enumerationCase: The enumeration case that caused the issue.
	///   - function: The function the error occured in.
	///   This uses the
	///   [`#function`]( https://developer.apple.com/documentation/swift/function() )
	///   macro by default.
	///   - file: The file the error occured in.
	///   This uses the
	///   [`#file`]( https://developer.apple.com/documentation/swift/file() )
	///   macro by default.
	///   - line: The line the error occured on.
	///   This uses the
	///   [`#line`]( https://developer.apple.com/documentation/swift/line() )
	///   macro by default.
	static func preconditionFailure(
		noPropertyResult enumerationCase: Self,
		_ function: StaticString = #function,
		_ file: StaticString = #file,
		_ line: UInt = #line
	) -> Never {
		Swift.preconditionFailure(
			"""
			Failed to retrieve a result for \(Self.self).\(enumerationCase).\(function).
			This is not intended.  \(StaticString.promptGitHubIssue)
			""",
			file: file,
			line: line
		)
	}
}
