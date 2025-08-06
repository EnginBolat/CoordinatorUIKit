# CoordinatorUIKit

A simple UIKit-based iOS application demonstrating the Coordinator Pattern using `UINavigationController` and `UITabBarController`.

## 📱 Features

- Programmatic UI with UIKit
- Clean navigation using the **Coordinator Pattern**
- Onboarding flow (Login / Register)
- Main TabBar with Home & Profile tabs
- Supports navigation between onboarding and main app
- Logout flow to return from main app to onboarding

---

## 🧠 Architecture

This project uses the **Coordinator Pattern** to separate navigation logic from view controllers.

### Coordinators:
- `AppCoordinator`: Root coordinator that decides whether to show onboarding or main tab bar.
- `OnboardingCoordinator`: Manages login & signup flow.
- `MainTabCoordinator`: Handles the tab bar and its tabs (Home & Profile).

### Navigation Flow:
```
AppCoordinator
   ├── OnboardingCoordinator
   │     ├── OpeningViewController
   │     ├── LoginViewController
   │     └── SignUpViewController
   │           └── finishOnboarding() → AppCoordinator.goToMainTab()
   └── MainTabCoordinator
         ├── HomeViewController
         └── ProfileViewController
               └── logout() → AppCoordinator.goToOnboarding()
```

<h3>🛠 Requirements</h3>
iOS 14.0+
Xcode 13+
Swift 5.5+

<h3>📦 Installation</h3>

```
git clone https://github.com/enginbolat/CoordinatorUIKit.git
```

```
cd CoordinatorUIKit
```
```
open CoordinatorUIKit.xcodeproj
```

✍️ Author
Engin Bolat
Twitter: @Enginnblt

📄 License
Free to use, modify, and share. Just give credit!
