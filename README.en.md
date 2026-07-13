[RU](README.md) | [EN](README.en.md)

# Maticon Office DocSpace SDK for Swift

The Swift SDK integrates Apple-platform applications with the Maticon Office DocSpace API. Version `3.7.0` provides the `MaticonOfficeDocSpaceSDK` module, typed models, asynchronous API methods, and an Alamofire-based networking layer.

## Package Metadata

- Swift package: `MaticonOfficeDocSpaceSDK`
- Library product: `MaticonOfficeDocSpaceSDK`
- Target/module: `MaticonOfficeDocSpaceSDK`
- CocoaPods spec: `MaticonOfficeDocSpaceSDK.podspec`
- Version: `3.7.0`
- Repository: [github.com/MaticonOffice/docspace-api-sdk-swift](https://github.com/MaticonOffice/docspace-api-sdk-swift)

The minimum supported versions are iOS 12, macOS 10.13, tvOS 12, and watchOS 4. Swift 6 is required to build the package.

## Swift Package Manager

Add the package to `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/MaticonOffice/docspace-api-sdk-swift.git",
        exact: "3.7.0"
    ),
]
```

Add the product to your application target:

```swift
.target(
    name: "YourApp",
    dependencies: [
        .product(
            name: "MaticonOfficeDocSpaceSDK",
            package: "docspace-api-sdk-swift"
        ),
    ]
)
```

## CocoaPods

```ruby
pod 'MaticonOfficeDocSpaceSDK', '3.7.0'
```

## Quick Start

```swift
import MaticonOfficeDocSpaceSDK

guard let token = ProcessInfo.processInfo.environment["MATICONOFFICE_TOKEN"] else {
    fatalError("MATICONOFFICE_TOKEN is not set")
}

let configuration = MaticonOfficeDocSpaceSDKAPIConfiguration.shared
configuration.basePath = "https://your-docspace.maticonoffice.ru"
configuration.customHeaders["Authorization"] = "Bearer \(token)"
```

Use the API classes under `Sources/MaticonOfficeDocSpaceSDK/APIs`. Pass `configuration` to an operation when the application needs an isolated client configuration.

## Authentication

The SDK supports Bearer/JWT, API key, Basic, and OAuth2 according to the DocSpace API schemes. Load secrets from Keychain, CI environment variables, or another protected store. Do not commit tokens or passwords.

## Build

```bash
swift build
```

Xcode target metadata is stored in `project.yml`. Package.swift, the podspec, and the XcodeGen configuration use the same module name and source path.

## API Documentation

- Generated documentation is available in [`docs`](docs/).
- REST API reference: [api.maticonoffice.ru](https://api.maticonoffice.ru/docspace/api-backend/).
- Help center: [help.maticonoffice.ru](https://help.maticonoffice.ru).

The client is generated with OpenAPI Generator. When regenerating it, preserve the `MaticonOfficeDocSpaceSDK` module, the `Sources/MaticonOfficeDocSpaceSDK` source path, and the matching entries in `.openapi-generator/FILES`.

## License

See [LICENSE](LICENSE) for the applicable terms.
