
# Numarketplace

> A simple marketplace made with Flutter

---

# :pushpin: Table of Contents

* [Installation](#construction_worker-installation)
* [Getting Started](#runner-getting-started)
* [Tests](#closed_book-tests)
* [Architecture](#tada-architecture)
* [Why Riverpod?](#closed_book-why-riverpod)

# :construction_worker: Installation

**You need to install [Flutter](https://flutter.dev/) and [Dart](https://dart.dev/) first, then in order to clone the project via HTTPS, run this command:**

```
  git clone https://github.com/WilliamBz12/nu-merkateplace.git
```

Run get package

```
flutter pub get
```

To generate code run

```
flutter pub run build_runner build --delete-conflicting-outputs
```

# :runner: Getting Started

Run the following command to run the app in your device (Android, IOs or Web)

```
flutter run 
```

if you want generate a build run the following command

Android:
```
flutter build apk
```
IOs:
```
flutter build ios
```
Web:
```
flutter build web
```

# :closed_book: Tests

Run the following command to run units and widgets test's 

```
flutter test 
```

Run the following command to run integration tests, but first make sure a device is open (Android or IOs)

```
flutter drive -t lib/main.dart --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart
```


# :tada: Architecture

In the folder architecture was oriented by features by layers. Where:

Core: it's the app configs, as Api Client and Routes.
Shared: It's the global and shared files, as state_notifiers, repositories and widgets.
Features: It's the feat config, as home and purchase where each feature has you own layers.

```
app/
  features/
  |- home
  |- purchase
    |- repositories
    |- state_notifiers
    |- widgets
    |- pages
    purchase_provider.dart
  core/
    |- routes
    |- api
      api_client_factory.dart #As API provider
  shared/
    |- repositories
    |- state_notifiers
    |-widgets #common widgets
app_widget.dart
app_provider.dart
```

# :closed_book: Why Riverpod?

Documention and application under development.
Released in 2020.
This project is under the [MIT license](https://github.com/WilliamBz12/phoenix-blog/master/LICENSE).

Made with love by [Laura Beatris](https://github.com/WilliamBz12) 💜🚀



