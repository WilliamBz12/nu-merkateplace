
# Numarketplace

> A simple marketplace made with Flutter

---

# :pushpin: Table of Contents

* [Installation](#construction_worker-installation)
* [Getting Started](#runner-getting-started)
* [FAQ](#postbox-faq)
* [Found a bug? Missing a specific feature?](#bug-issues)

# :construction_worker: Installation

**You need to install [Flutter](https://flutter.dev/) and [Phoenix](https://dart.dev/) first, then in order to clone the project via HTTPS, run this command:**

```
  git clone https://github.com/WilliamBz12/nu-merkateplace.git
```

Run get packages

```
flutter pub get
```

# :runner: Getting Started

Run the following command to run app in your device (Android, IOs or Web)

```
flutter run 
```

if you want generate a build run the following command

Android
```
flutter build apk
```
IOs
```
flutter build ios
```
Web
```
flutter build web
```

# :bug: Issues

Feel free to **file a new issue** with a respective title and description on the [Phoenix Blog](https://github.com/WilliamBz12/phoenix-blog/issues) repository. If you already found a solution to your problem, **i would love to review your pull request**! Have a look at our [contribution guidelines](https://github.com/WilliamBz12/paypal-clone/blob/master/CONTRIBUTING.md) to find out about the coding standards.

# :tada: Contributing

Check out the [contributing](https://github.com/WilliamBz12/phoenix-blog/blob/master/CONTRIBUTING.md) page to see the best places to file issues, start discussions and begin contributing.


# :closed_book: License

Documention and application under development.
Released in 2020.
This project is under the [MIT license](https://github.com/WilliamBz12/phoenix-blog/master/LICENSE).

Made with love by [Laura Beatris](https://github.com/WilliamBz12) 💜🚀


Integration Tests:

flutter drive -t lib/main.dart --driver=test_driver/integration_test.dart --target=integration_test/app_test.dart

Generate code: 

flutter pub run build_runner build --delete-conflicting-outputs
