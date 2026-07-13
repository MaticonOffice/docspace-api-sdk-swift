[RU](README.md) | [EN](README.en.md)

# Maticon Office DocSpace SDK для Swift

Swift SDK для интеграции приложений Apple-платформ с Maticon Office DocSpace API. Версия `3.7.0` предоставляет модуль `MaticonOfficeDocSpaceSDK`, типизированные модели, асинхронные API-методы и сетевой слой на базе Alamofire.

## Метаданные пакета

- Swift package: `MaticonOfficeDocSpaceSDK`
- Library product: `MaticonOfficeDocSpaceSDK`
- Target/module: `MaticonOfficeDocSpaceSDK`
- CocoaPods spec: `MaticonOfficeDocSpaceSDK.podspec`
- Версия: `3.7.0`
- Репозиторий: [github.com/MaticonOffice/docspace-api-sdk-swift](https://github.com/MaticonOffice/docspace-api-sdk-swift)

Поддерживаемые минимальные версии: iOS 12, macOS 10.13, tvOS 12 и watchOS 4. Для сборки требуется Swift 6.

## Swift Package Manager

Добавьте пакет в `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/MaticonOffice/docspace-api-sdk-swift.git",
        exact: "3.7.0"
    ),
]
```

Подключите продукт к target приложения:

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

## Быстрый старт

```swift
import MaticonOfficeDocSpaceSDK

guard let token = ProcessInfo.processInfo.environment["MATICONOFFICE_TOKEN"] else {
    fatalError("MATICONOFFICE_TOKEN is not set")
}

let configuration = MaticonOfficeDocSpaceSDKAPIConfiguration.shared
configuration.basePath = "https://your-docspace.maticonoffice.ru"
configuration.customHeaders["Authorization"] = "Bearer \(token)"
```

Используйте API-классы из `Sources/MaticonOfficeDocSpaceSDK/APIs` и передавайте `configuration` в методы, если приложению нужны отдельные настройки клиента.

## Аутентификация

SDK поддерживает Bearer/JWT, API key, Basic и OAuth2 в соответствии со схемами DocSpace API. Секреты должны поступать из Keychain, переменных окружения CI или другого защищенного хранилища. Не добавляйте токены и пароли в репозиторий.

## Сборка

```bash
swift build
```

Для Xcode-проекта метаданные target находятся в `project.yml`. Package.swift, podspec и XcodeGen-конфигурация используют одинаковое имя модуля и source path.

## Документация API

- Сгенерированная документация находится в каталоге [`docs`](docs/).
- REST API: [api.maticonoffice.ru](https://api.maticonoffice.ru/docspace/api-backend/).
- Справочный центр: [help.maticonoffice.ru](https://help.maticonoffice.ru).

Код сгенерирован OpenAPI Generator. При повторной генерации сохраняйте module `MaticonOfficeDocSpaceSDK`, source path `Sources/MaticonOfficeDocSpaceSDK` и синхронизируйте `.openapi-generator/FILES`.

## Лицензия

Условия использования приведены в файле [LICENSE](LICENSE).
