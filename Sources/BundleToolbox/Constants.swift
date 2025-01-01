/// The name of the bundle’s HTML help file.
///
/// The constant for
/// [`CFAppleHelpAnchor`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfapplehelpanchor ).
@available(macOS 10, *)
public let kCFAppleHelpAnchorKey: String = "CFAppleHelpAnchor"

/// A Boolean value that indicates whether the bundle supports the retrieval of localized strings from frameworks.
///
/// The constant for
/// [`CFBundleAllowMixedLocalizations`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleallowmixedlocalizations ).
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleAllowMixedLocalizationsKey: String = "CFBundleAllowMixedLocalizations"

/// A list of alternate icons for the Home screen and Settings app.
///
/// The constant for
/// [`CFBundleAlternateIcons`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundlealternateicons ).
@available(iOS 5, macCatalyst 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleAlternateIconsKey: String = "CFBundleAlternateIcons"

/// The name of the folder containing the bundle’s help files.
///
/// The constant for
/// [`CFBundleHelpBookFolder`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundlehelpbookfolder ).
@available(macOS 10, *)
public let kCFBundleHelpBookFolderKey: String = "CFBundleHelpBookFolder"

/// The name of the help file that will be opened in Help Viewer.
///
/// The constant for
/// [`CFBundleHelpBookName`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundlehelpbookname ).
@available(macOS 10, *)
public let kCFBundleHelpBookNameKey: String = "CFBundleHelpBookName"

/// The file containing the bundle’s icon.
///
/// The constant for
/// [`CFBundleIconFile`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleiconfile ).
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconFileKey: String = "CFBundleIconFile"

/// The names of the icon files in the app’s asset catalog or bundle.
///
/// The constant for
/// [`CFBundleIconFiles`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon/cfbundleiconfiles ).
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconFilesKey: String = "CFBundleIconFiles"

/// The name of the asset that represents the app icon.
///
/// The constant for
/// [`CFBundleIconName`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleiconname ).
@available(macOS 10.13, *)
public let kCFBundleIconNameKey: String = "CFBundleIconName"

/// Information about all of the icons used by the app.
///
/// The constant for
/// [`CFBundleIcons`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons ).
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconsKey: String = "CFBundleIcons"

/// The app’s primary icon for display on the Home Screen, in the Settings app, and many other places throughout the system.
///
/// The constant for
/// [`CFBundlePrimaryIcon`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon ).
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundlePrimaryIconKey: String = "CFBundlePrimaryIcon"

/// The release or version number of the bundle.
///
/// The constant for
/// [`CFBundleShortVersionString`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleshortversionstring ).
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleShortVersionStringKey: String = "CFBundleShortVersionString"

/// A replacement for the app name in text-to-speech operations.
///
/// The constant for
/// [`CFBundleSpokenName`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundlespokenname ).
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleSpokenNameKey: String = "CFBundleSpokenName"

/// The name of the symbol to show in the action sheet, and in Finder’s sidebar on macOS.
///
/// The constant for
/// [`CFBundleSymbolName`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon/cfbundlesymbolname ).
// VALIDATE: The macOS version is not explicitly defined in the official documentation.
@available(iOS 13, macOS 10.15, *)
public let kCFBundleSymbolNameKey: String = "CFBundleSymbolName"

/// The minimum version of macOS required for the app to run on a set of architectures.
///
/// The constant for
/// [`LSMinimumSystemVersionByArchitecture`]( https://developer.apple.com/documentation/bundleresources/information-property-list/lsminimumsystemversionbyarchitecture ).
@available(macOS 10, *)
public let kLSMinimumSystemVersionByArchitectureKey: String = "LSMinimumSystemVersionByArchitecture"

/// The minimum version of the operating system required for the app to run in macOS.
///
/// The constant for
/// [`LSMinimumSystemVersion`]( https://developer.apple.com/documentation/bundleresources/information-property-list/lsminimumsystemversion ).
///
/// For iOS, iPadOS, tvOS, visionOS, or watchOS, see ``kMinimumOSVersionKey``.
@available(macCatalyst 13, macOS 10, *)
public let kLSMinimumSystemVersionKey: String = "LSMinimumSystemVersion"

/// A Boolean value indicating whether the app must run in iOS.
///
/// The constant for
/// [`LSRequiresIPhoneOS`]( https://developer.apple.com/documentation/bundleresources/information-property-list/lsrequiresiphoneos ).
@available(iOS 2, *)
public let kLSRequiresIPhoneOSKey: String = "LSRequiresIPhoneOS"

/// A Boolean value indicating whether the app is an agent app that runs in the background and doesn’t appear in the Dock.
///
/// The constant for
/// [`LSUIElement`]( https://developer.apple.com/documentation/bundleresources/information-property-list/lsuielement ).
@available(macOS 10, *)
public let kLSUIElementKey: String = "LSUIElement"

/// The initial user-interface mode for the app.
///
/// The constant for
/// [`LSUIPresentationMode`]( https://developer.apple.com/documentation/bundleresources/information-property-list/lsuipresentationmode ).
@available(macOS 10, *)
public let kLSUIPresentationModeKey: String = "LSUIPresentationMode"

/// The minimum version of the operating system required for the app to run in iOS, iPadOS, tvOS, and watchOS.
///
/// The constant for
/// [`MinimumOSVersion`]( https://developer.apple.com/documentation/bundleresources/information-property-list/minimumosversion ).
///
/// For Mac Catalyst and macOS, see ``kLSMinimumSystemVersionKey``.
@available(iOS 3, tvOS 9, visionOS 1, watchOS 1, *)
public let kMinimumOSVersionKey: String = "MinimumOSVersion"

/// A human-readable copyright notice for the bundle.
///
/// The constant for
/// [`NSHumanReadableCopyright`]( https://developer.apple.com/documentation/bundleresources/information-property-list/nshumanreadablecopyright ).
@available(macOS 10, *)
public let kNSHumanReadableCopyrightKey: String = "NSHumanReadableCopyright"

/// A Boolean value that enables the Caps Lock key to switch between Latin and non-Latin input sources.
///
/// The constant for
/// [`TICapsLockLanguageSwitchCapable`]( https://developer.apple.com/documentation/bundleresources/information-property-list/ticapslocklanguageswitchcapable ).
@available(macOS 10.15, *)
public let kTICapsLockLanguageSwitchCapableKey: String = "TICapsLockLanguageSwitchCapable"

/// The initial orientation of the app’s user interface.
///
/// The constant for
/// [`UIInterfaceOrientation`]( https://developer.apple.com/documentation/bundleresources/information-property-list/uiinterfaceorientation ).
///
/// ## See Also
/// - ``kUISupportedInterfaceOrientationsKey``
@available(iOS 2, macCatalyst 13, visionOS 1, *)
public let kUIInterfaceOrientationKey: String = "UIInterfaceOrientation"

/// A Boolean value that indicates whether to launch your iPad app in full-screen mode when running on a Mac.
///
/// The constant for
/// [`UILaunchToFullScreenByDefaultOnMac`]( https://developer.apple.com/documentation/bundleresources/information-property-list/uilaunchtofullscreenbydefaultonmac ).
@available(macOS 12.1, *)
public let kUILaunchToFullScreenByDefaultOnMacKey: String = "UILaunchToFullScreenByDefaultOnMac"

/// A Boolean value indicating whether the app’s icon files already incorporate a shine effect.
///
/// The constant for
/// [`UIPrerenderedIcon`]( https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon/uiprerenderedicon ).
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kUIPrerenderedIconKey: String = "UIPrerenderedIcon"

/// A Boolean value that indicates whether an iPad app is capable of sharing the screen with other apps.
///
/// The constant for
/// [`UIRequiresFullScreen`]( https://developer.apple.com/documentation/bundleresources/information-property-list/uirequiresfullscreen ).
@available(iOS 9, *)
public let kUIRequiresFullScreenKey: String = "UIRequiresFullScreen"

/// The interface orientations supported by your app.
///
/// The constant for
/// [`UISupportedInterfaceOrientations`]( https://developer.apple.com/documentation/bundleresources/information-property-list/uisupportedinterfaceorientations ).
///
/// ## See Also
/// - ``kUIInterfaceOrientationKey``
@available(iOS 3.2, macCatalyst 13, visionOS 1, *)
public let kUISupportedInterfaceOrientationsKey: String = "UISupportedInterfaceOrientations"

/// A Boolean value that indicates whether your iPad app supports arbitrary screen sizes and resolutions when running on a Mac.
///
/// The constant for
/// [`UISupportsTrueScreenSizeOnMac`]( https://developer.apple.com/documentation/bundleresources/information-property-list/uisupportstruescreensizeonmac ).
@available(macOS 12.1, *)
public let kUISupportsTrueScreenSizeOnMacKey: String = "UISupportsTrueScreenSizeOnMac"
