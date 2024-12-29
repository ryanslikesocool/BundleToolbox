/// A Boolean value that indicates whether the bundle supports the retrieval of localized strings from frameworks.
///
/// The constant for
/// [`CFBundleAllowMixedLocalizations`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleallowmixedlocalizations)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleAllowMixedLocalizationsKey: String = "CFBundleAllowMixedLocalizations"

/// The file containing the bundle’s icon.
///
/// The constant for
/// [`CFBundleIconFile`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleiconfile)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleIconFileKey: String = "CFBundleIconFile"

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

/// The release or version number of the bundle.
///
/// The constant for
/// [`CFBundleShortVersionString`](https://developer.apple.com/documentation/bundleresources/information-property-list/cfbundleshortversionstring)\.
@available(iOS 2, macOS 10, tvOS 9, visionOS 1, watchOS 2, *)
public let kCFBundleShortVersionStringKey: String = "CFBundleShortVersionString"

/// A human-readable copyright notice for the bundle.
/// 
/// The constant for
/// [`NSHumanReadableCopyright`](https://developer.apple.com/documentation/bundleresources/information-property-list/nshumanreadablecopyright)\.
@available(macOS 10, *)
public let kNSHumanReadableCopyrightKey: String = "NSHumanReadableCopyright"
