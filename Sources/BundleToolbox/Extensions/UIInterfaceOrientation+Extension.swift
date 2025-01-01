#if canImport(UIKit)
import UIKit

@available(iOS 2, macCatalyst 13, visionOS 1, *)
public extension UIInterfaceOrientation {
	/// Create a `UIInterfaceOrientation` from an info dictionary string value.
	///
	/// ## See Also
	/// - ``kUIInterfaceOrientationPortrait``
	/// - ``kUIInterfaceOrientationPortraitUpsideDown``
	/// - ``kUIInterfaceOrientationLandscapeLeft``
	/// - ``kUIInterfaceOrientationLandscapeRight``
	init(infoDictionaryValue string: String) {
		self = switch string {
			case kUIInterfaceOrientationPortrait: .portrait
			case kUIInterfaceOrientationPortraitUpsideDown: .portraitUpsideDown
			case kUIInterfaceOrientationLandscapeLeft: .landscapeLeft
			case kUIInterfaceOrientationLandscapeRight: .landscapeRight
			default: .unknown
		}
	}
}
#endif