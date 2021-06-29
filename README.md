
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
  git clone ********
```

**Or you can download the .zip file**

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

- Core: it's the app configs, as Api Client and Routes.
- Shared: It's the global and shared files, as state_notifiers, repositories and widgets.
- Features: It's the feat config, as home and purchase where each feature has you own layers.

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

# :closed_book: Why Riverpod with State Notifier?

I was decide use Riverpod 'cause some reasons, the main was:
- The provider is build in a simple var out of the widget file and can be used in any widget.
- Authored by Rémi Rousselet, the creator of provider (it's to be better than provider package)
- AutoDispose, when you use auto dispose in your dependecy, it's will be disposed when has no watch in the var, so we have gain of memory.

I was decide use State Notifier for the following reasons: 
- imumutable, as bloc. 
- state field is a single Stream of State like bloc cubit, so it's not complicate to use.
- It's make to use with Riverpod. 

#### Enjoy! 💜🚀



