import Foundation

/// A placeholder object required by ``Foundation/Bundle/findBundle(named:)``.
private final class BundleFinder { }

public extension Bundle {
	/// Locate a bundle by name.
	///
	/// This function is useful when attempting to load a bundle that doesn't contain code from a Swift package.
	///
	/// - Note: See [Daniel Saidi's blog]( https://danielsaidi.com/blog/2022/06/01/making-swift-package-assets-work-in-swiftui-previews ) for more information.
	///
	/// - Parameter bundleName: The name of the bundle to locate.
	/// - Returns: The bundle with the given `bundleName`, if one could be found.
	/// The function throws otherwise.
	static func findBundle(named bundleName: String) throws -> Bundle {
		let overrides: [URL]
#if DEBUG
		// The 'PACKAGE_RESOURCE_BUNDLE_PATH' name is preferred since the expected value is a path. The
		// check for 'PACKAGE_RESOURCE_BUNDLE_URL' will be removed when all clients have switched over.
		// This removal is tracked by rdar://107766372.
		if let override = ProcessInfo.processInfo.environment["PACKAGE_RESOURCE_BUNDLE_PATH"]
			?? ProcessInfo.processInfo.environment["PACKAGE_RESOURCE_BUNDLE_URL"]
		{
			overrides = [URL(fileURLWithPath: override)]
		} else {
			overrides = []
		}
#else
		overrides = []
#endif

		let candidates = overrides + [
			// Bundle should be present here when the package is linked into an App.
			Bundle.main.resourceURL,

			// Bundle should be present here when the package is linked into a framework.
			Bundle(for: BundleFinder.self).resourceURL,

			// For command-line tools.
			Bundle.main.bundleURL,

			// Bundle should be here when running previews from a different package
			// (this is the path to ".../Debug-iphonesimulator/").
			Bundle(for: BundleFinder.self)
				.resourceURL?
				.deletingLastPathComponent()
				.deletingLastPathComponent()
				.deletingLastPathComponent(),

			Bundle(for: BundleFinder.self)
				.resourceURL?
				.deletingLastPathComponent()
				.deletingLastPathComponent(),
		]

		let bundlePathSuffix = ".bundle"

		for candidate in candidates {
			let bundlePath = candidate?.appendingPathComponent(bundleName + bundlePathSuffix)
			if let bundle = bundlePath.flatMap(Bundle.init) {
				return bundle
			}
		}
		throw Error.failedToFindBundle(named: bundleName)

		enum Error: Swift.Error {
			case failedToFindBundle(named: String)
		}
	}
}
