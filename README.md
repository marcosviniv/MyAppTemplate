# 📱 MyAppTemplate

A modular SwiftUI iOS project template, structured with MVVM architecture and ready to scale.  
Perfect for developers who want a clean, consistent, and reusable starting point for new apps.

## 🚀 Features

- ✅ MVVM Architecture  
- ✅ Modular folder structure  
- ✅ Custom animated TabBar  
- ✅ Ready for localization  
- ✅ Clean UI with reusable components  
- ✅ Easy to extend with new features

## 📂 Project Structure

MyAppTemplate/
├── Modules/
│   └── TabBar/
│       ├── Model/
│       │   └── Tab.swift
│       ├── ViewModel/
│       │   └── TabBarViewModel.swift
│       ├── View/
│       │   └── TabBarView.swift
│       ├── Shared/
│       │   ├── TabButton.swift
│       │   └── BlurView.swift
│       └── TabBarModule.swift
├── Features/
│   ├── Dashboard/
│   └── Perfil/
├── Core/
│   ├── Network/
│   ├── Extensions/
│   └── Utils/
├── Resources/
│   ├── Assets.xcassets
│   └── Localization/
├── SupportingFiles/
│   └── LaunchScreen.storyboard (or .swift)
└── App.swift

## 🧱 Technologies

- Swift
- SwiftUI
- MVVM
- UIKit (for blur support, optional)

## 📦 Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/MyAppTemplate.git

	2.	Open the .xcodeproj or .xcodeworkspace in Xcode.
	3.	Run the project (Cmd + R).
	4.	Start building your features inside the Features/ directory.

🛠 Customization

You can:
	•	Add new tabs by editing Tab.swift
	•	Add new shared components in Modules/TabBar/Shared
	•	Extend the architecture by adding new modules inside Modules/ or Features/

🌍 Localization

To localize your app, add .strings files inside Resources/Localization/ for each supported language.

📸 Screenshots

Coming soon

🤝 Contributing

Feel free to fork and customize it for your own use. Pull requests and improvements are welcome!

📄 License

MIT License

⸻

Made with ❤️ by Marcos Vinícius Vieira

---
