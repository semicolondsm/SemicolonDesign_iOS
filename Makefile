generate:
	swift package generate-xcodeproj

archiveDocc:
	xcodebuild clean docbuild -scheme SemicolonDesign \
    -destination generic/platform=iOS \
    OTHER_DOCC_FLAGS="--transform-for-static-hosting --hosting-base-path SemicolonDesign_iOS --output-path docs"
