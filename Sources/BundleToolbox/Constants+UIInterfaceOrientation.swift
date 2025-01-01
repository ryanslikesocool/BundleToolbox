/// The device is in portrait mode, with the device upright and the Home button on the bottom.
///
/// ## See Also
/// - [`UIInterfaceOrientation.portrait`]( https://developer.apple.com/documentation/uikit/uiinterfaceorientation/portrait )
@available(iOS 2, macCatalyst 13, visionOS 1, *)
public let kUIInterfaceOrientationPortrait: String = "UIInterfaceOrientationPortrait"

/// The device is in portrait mode but is upside down, with the device upright and the Home button at the top.
///
/// [`UIViewController`]( https://developer.apple.com/documentation/uikit/uiviewcontroller )
/// ignores this option on devices without a Home button.
///
/// ## See Also
/// - [`UIInterfaceOrientation.portraitUpsideDown`]( https://developer.apple.com/documentation/uikit/uiinterfaceorientation/portraitupsidedown )
@available(iOS 2, macCatalyst 13, visionOS 1, *)
public let kUIInterfaceOrientationPortraitUpsideDown: String = "UIInterfaceOrientationPortraitUpsideDown"

/// The device is in landscape mode, with the device upright and the Home button on the left.
///
/// ## See Also
/// - [`UIInterfaceOrientation.landscapeLeft`]( https://developer.apple.com/documentation/uikit/uiinterfaceorientation/landscapeleft )
@available(iOS 2, macCatalyst 13, visionOS 1, *)
public let kUIInterfaceOrientationLandscapeLeft: String = "UIInterfaceOrientationLandscapeLeft"

/// The device is in landscape mode, with the device upright and the Home button on the right.
///
/// ## See Also
/// - [`UIInterfaceOrientation.landscapeRight`]( https://developer.apple.com/documentation/uikit/uiinterfaceorientation/landscaperight )
@available(iOS 2, macCatalyst 13, visionOS 1, *)
public let kUIInterfaceOrientationLandscapeRight: String = "UIInterfaceOrientationLandscapeRight"