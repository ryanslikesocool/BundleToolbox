##!/bin/sh

xcrun xcodebuild docbuild \
	-scheme BundleToolbox \
	-destination 'generic/platform=macOS' \
	-derivedDataPath "$PWD/.derivedData"

xcrun docc process-archive transform-for-static-hosting \
	"$PWD/.derivedData/Build/Products/Debug/BundleToolbox.doccarchive" \
	--output-path ".docs" \
	--hosting-base-path "BundleToolbox"

echo '<script>window.location.href += "/documentation/bundletoolbox"</script>' > .docs/index.html