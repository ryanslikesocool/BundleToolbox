/// A Boolean value that indicates whether the bundle supports the retrieval of localized strings from frameworks.
///
/// The constant for
/// [`CFBundleAllowMixedLocalizations`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleallowmixedlocalizations)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleAllowMixedLocalizationsKey: String = "CFBundleAllowMixedLocalizations"

/// A list of alternate icons for the Home screen and Settings app.
///
/// The constant for
/// [`CFBundleAlternateIcons`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundlealternateicons)\.
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleAlternateIconsKey: String = "CFBundleAlternateIcons"

/// The file containing the bundle’s icon.
///
/// The constant for
/// [`CFBundleIconFile`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleiconfile)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconFileKey: String = "CFBundleIconFile"

/// The names of the icon files in the app’s asset catalog or bundle.
///
/// The constant for
/// [`CFBundleIconFiles`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon/cfbundleiconfiles)\.
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconFilesKey: String = "CFBundleIconFiles"

/// The name of the asset that represents the app icon.
///
/// The constant for
/// [`CFBundleIconName`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleiconname)\.
@available(macOS 10.13, *)
public let kCFBundleIconNameKey: String = "CFBundleIconName"

/// Information about all of the icons used by the app.
///
/// The constant for
/// [`CFBundleIcons`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons)\.
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconsKey: String = "CFBundleIcons"

/// The app’s primary icon for display on the Home Screen, in the Settings app, and many other places throughout the system.
///
/// The constant for
/// [`CFBundlePrimaryIcon`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon)\.
@available(iOS 5, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundlePrimaryIconKey: String = "CFBundlePrimaryIcon"

/// The release or version number of the bundle.
///
/// The constant for
/// [`CFBundleShortVersionString`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleshortversionstring)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleShortVersionStringKey: String = "CFBundleShortVersionString"

/// The name of the symbol to show in the action sheet, and in Finder’s sidebar on macOS.
///
/// The constant for
/// [`CFBundleSymbolName`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleicons/cfbundleprimaryicon/cfbundlesymbolname)\.
// VALIDATE: The macOS version is not explicitly defined in the official documentation.
@available(iOS 13, macOS 10.15, *)
public let kCFBundleSymbolNameKey: String = "CFBundleSymbolName"

/// A human-readable copyright notice for the bundle.
///
/// The constant for
/// [`NSHumanReadableCopyright`](https://developer.apple.com/documentation/bundleresources/information-property-list/nshumanreadablecopyright)\.
@available(macOS 10, *)
public let kNSHumanReadableCopyrightKey: String = "NSHumanReadableCopyright"
