# auto_responsive_ui

**A smart, adaptive responsive engine for Flutter — not just scaling, but intelligent UI adjustment based on device type and screen size.**

---

## Why auto_responsive_ui?

Every Flutter developer faces this problem:

❌ UI looks perfect on one device
❌ Breaks on small phones
❌ Looks oversized on tablets
❌ Too much manual MediaQuery logic

Existing solutions only **scale blindly**.

 **auto_responsive_ui solves this with intelligent scaling + device awareness.**

---

## Key Features

* 📱 **Device Type Detection**

  * Small Phone
  * Phone
  * Large Phone
  * Tablet

* ⚖️ **Smart Scaling (Not Linear)**

  * Prevents UI from becoming too small or too large
  * Uses min/max clamp for stability

* 🎯 **Figma-Based Design Support**

  * Build UI exactly based on your design dimensions

* ✨ **Clean Extensions API**

  * No boilerplate
  * Super easy to use

* 🧱 **Safe Initialization**

  * No need to manually handle screen calculations

---

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  auto_responsive_ui: ^0.0.1
```

---

## 🚀 Getting Started

### 1. Wrap Your App

```dart
return ResponsiveBuilder(
  config: const ResponsiveConfig(
    designWidth: 375,
    designHeight: 812,
  ),
  child: MaterialApp(
    home: MyHomePage(),
  ),
);
```

---

### 2. Use Extensions Anywhere

```dart
Padding(
  padding: EdgeInsets.all(16.w),
  child: Text(
    "Hello Flutter",
    style: TextStyle(fontSize: 18.r),
  ),
)
```

---

## 📏 Available Extensions

| Extension | Description      |
| --------- | ---------------- |
| `.w`      | Scales width     |
| `.h`      | Scales height    |
| `.r`      | Scales text/font |

---

## 📱 Device Type Usage

```dart
if (ResponsiveEngine.deviceType == DeviceType.tablet) {
  return GridView(...);
} else {
  return ListView(...);
}
```

---

## ⚙️ Configuration

```dart
ResponsiveConfig(
  designWidth: 375,
  designHeight: 812,
  minScale: 0.85,
  maxScale: 1.25,
)
```

---

## 🧠 How It Works

Unlike traditional packages:

❌ Linear scaling → breaks UI
✔ Adaptive scaling → clamps values within safe range

It calculates:

* Screen size
* Device category
* Safe scaling ratio

Then applies optimized scaling across your UI.

---

## 🔥 Why Not Other Packages?

| Feature          | auto_responsive_ui | Typical Packages |
| ---------------- | ------------------ | ---------------- |
| Smart scaling    | ✅                  | ❌                |
| Device awareness | ✅                  | ❌                |
| Clamp protection | ✅                  | ❌                |
| Clean API        | ✅                  | ⚠️               |
| Figma alignment  | ✅                  | ⚠️               |

---

## 🧪 Example Use Cases

* E-commerce apps
* Logistics apps
* Admin dashboards
* Startup MVPs
* Pixel-perfect UI builds

---

## 🛠️ Roadmap

* [ ] Orientation-aware scaling
* [ ] Auto layout switching (Grid/List)
* [ ] Debug overlay
* [ ] Figma plugin integration

---

## 🤝 Contributing

Contributions are welcome!
Feel free to open issues or submit PRs.

---

## 📄 License

MIT License

---

## 💡 Author

Built with ❤️ for Flutter developers who are tired of broken UI across devices.
