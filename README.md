# Pexa Test - Modern Flutter App

A beautifully themed Flutter application demonstrating clean architecture, dark/light theme switching, animations, REST API integration, and more.

---

## Features

### Splash Screen
- Animated logo and fade-in text
- Automatically transitions to Home Screen

### Home Screen
- Unified common app bar with theme-based styling
- Toggle switch to change between light and dark modes
- Elegant UI with material icons
- Navigation to all features

### Counter App
- Increment/decrement with material icons
- Warning message when value is at zero
- Smooth transitions using `AnimatedSwitcher`

### Country List with Search
- List of 50+ real country names
- Elegant, styled `TextField` with search icon
- Filters results in real-time

### Post List from API
- Loads data from `https://jsonplaceholder.typicode.com/posts`
- Scroll to load more posts (infinite scroll)
- Clean cards displaying: `User ID`, `Post ID`, `Title`, `Body`

### Profile Screen
- Static user profile with image, name, and bio

---

## GitHub Actions CI
- `flutter pub get`
- `flutter analyze`
- Builds for APK and Web

---


---

## Getting Started
```bash
git clone https://github.com/JITHIN665/pexa_test.git
cd pexa_test_app
flutter pub get
flutter run
```


---

## Built With
- Flutter 3.29.2
- Material 3 UI
- GitHub Actions
- REST API

---
