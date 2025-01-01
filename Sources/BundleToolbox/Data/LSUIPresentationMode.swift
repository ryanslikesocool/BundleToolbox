/// Constants that identify the initial user-interface mode for an app.
///
/// This is used in apps that may need to take over portions of the screen that contain UI elements such as the Dock and menu bar.
/// Most modes affect only UI elements that appear in the content area of the screen, that is, the area of the screen that does not include the menu bar.
/// However, apps can request that all UI elements be hidden as well.
///
/// | Enumeration Case | Value |
/// | - | - |
/// | ``normal`` | `0` |
/// | ``contentSuppressed`` | `1` |
/// | ``contentHidden`` | `2` |
/// | ``allHidden`` | `3` |
/// | ``allSuppressed`` | `4` |
///
/// ## Topics
///
/// ### Enumeration Cases
///
/// - ``normal``
/// - ``contentSuppressed``
/// - ``contentHidden``
/// - ``allHidden``
/// - ``allSuppressed``
///
///
/// ## See Also
///
/// - ``kLSUIPresentationModeKey``
@available(macOS 10, *)
public enum LSUIPresentationMode: Int {
	/// The enumeration case corresponding to a raw value of `0`.
	///
	/// In this mode, all standard system UI elements are visible.
	/// This is the default value.
	case normal = 0

	/// The enumeration case corresponding to a raw value of `1`.
	///
	/// In this mode, system UI elements in the content area of the screen are hidden.
	/// UI elements may show themselves automatically in response to mouse movements or other user activity.
	/// For example, the Dock may show itself when the mouse moves into the Dock’s auto-show region.
	case contentSuppressed = 1

	/// The enumeration case corresponding to a raw value of `2`.
	///
	/// In this mode, system UI elements in the content area of the screen are hidden and do not automatically show themselves in response to mouse movements or user activity.
	case contentHidden = 2

	/// The enumeration case corresponding to a raw value of `3`.
	///
	/// In this mode, all UI elements are hidden, including the menu bar.
	/// Elements do not automatically show themselves in response to mouse movements or user activity.
	case allHidden = 3

	/// The enumeration case corresponding to a raw value of `4`.
	///
	/// In this mode, all UI elements are hidden, including the menu bar.
	/// UI elements may show themselves automatically in response to mouse movements or other user activity.
	@available(macOS 10.3, *)
	case allSuppressed = 4
}

// MARK: - Sendable

@available(macOS 10, *)
extension LSUIPresentationMode: Sendable { }

// MARK: - Equatable

@available(macOS 10, *)
extension LSUIPresentationMode: Equatable { }

// MARK: - Hashable

@available(macOS 10, *)
extension LSUIPresentationMode: Hashable { }

// MARK: - Identifiable

@available(macOS 10, *)
extension LSUIPresentationMode: Identifiable {
	public var id: RawValue { rawValue }
}

// MARK: - Codable

@available(macOS 10, *)
extension LSUIPresentationMode: Codable { }
