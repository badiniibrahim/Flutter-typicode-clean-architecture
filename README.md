# 📱 Flutter Clean Architecture App with Dio & GetX

A Flutter application based on **Clean Architecture**, using **GetX** for state management & navigation, and **Dio** for HTTP requests.

## 🔧 Features

- Clean Architecture (Domain / Data / Presentation)
- State management with GetX
- API calls via Dio
- Centralized HTTP error handling
- Dependency injection using GetX Bindings
- Unit tests for use cases & controllers

## 📂 Project Structure

```
lib/
├── core/
│   ├── di/                      # Dependency injection setup
│   ├── errors/                 # Custom exceptions & HTTP error handler
│   └── network/                # Dio configuration
│
├── data/
│   ├── models/                 # DTOs
│   └── repository/             # Concrete implementations
│
├── domain/
│   ├── entities/               # Domain models
│   ├── repository/             # Abstract repositories
│   └── usecase/                # Business logic
│
├── application/
│   └── controllers/            # GetX Controllers (UI logic)
│
├── presentation/
│   └── pages/                  # UI screens
│
├── config/                     # Constants and environment configs
└── main.dart                   # App entry point
```

## 🚀 Getting Started

1. Clone the repo

```bash
git clone https://github.com/yourusername/yourproject.git
cd yourproject
```

2. Install Flutter dependencies

```bash
flutter pub get
```

3. Run the app

```bash
flutter run
```

## 🧪 Run Unit Tests

```bash
flutter test
```

## ✅ Tech Stack

- [Flutter](https://flutter.dev)
- [GetX](https://pub.dev/packages/get)
- [Dio](https://pub.dev/packages/dio)
- [Mocktail](https://pub.dev/packages/mocktail)

## 📄 License

This project is open-source. Feel free to fork and contribute 😊

---

Made with ❤️ by [Your Name]
