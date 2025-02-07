# Flutter Chat App - Yes or No GIF

Welcome to the "Yes or No GIF" chat app! This is a basic Flutter application that allows you to send a question and receive an animated GIF responding with a "Yes" or "No".

## Features

- **Simple Interface**: A clean and easy-to-use user interface.
- **GIF Responses**: Receive an animated GIF as a response to your question.
- **API Integration**: Uses an external API to fetch "Yes" or "No" GIFs.
- **Clean Architecture**: The app follows a basic structure inspired by Clean Architecture principles.

## Screenshots

![Screenshot 1](screenshots/screenshot1.png)
![Screenshot 2](screenshots/screenshot2.png)

## Requirements

- Flutter SDK (version 3.0.0 or higher)
- Dart (version 2.17.0 or higher)
- Internet connection (to fetch GIFs)

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/flutter-chat-app.git
2. **Navigate to the project directory**:
   ```bash
   cd flutter-chat-app
3. **Install dependencies**:
   ```bash
   flutter pub get
4. **Run the app**:
   ```bash
   flutter run
## Usage

1. Open the app on your device or emulator.
2. Type your question in the text field.
3. Press the "Send" button.
4. Receive an animated GIF responding with a "Yes" or "No"!

## Project Structure (Clean Architecture Inspired)

The app follows a basic structure inspired by Clean Architecture, separating concerns into layers:

```
YES_NO_APP/
├── lib/
│   ├── main.dart
│   ├── config/                # Core functionalities (e.g., constants, themes)
│   ├── data/                  # Data layer (e.g., APIs, repositories)
│   │   └── datasources/       # Data sources (e.g., remote API)
│   │   └── repositories/      # Repository implementations
│   ├── domain/                # Domain layer (e.g., entities, use cases)
│   │   └── entities/          # Business logic entities
│   │   └── repositories/      # Repository interfaces
│   │   └── usecases/          # Application use cases
│   ├── presentation/          # Presentation layer (UI and state management)
│   │   └── screens/           # App screens
│   │   └── widgets/           # Reusable widgets
│   │   └── providers/         # State management (e.g., Riverpod, Provider)
├── assets/                    # Static assets (e.g., images, fonts)
├── test/                      # Unit and widget tests
└── pubspec.yaml               # Project dependencies
```
## Dependencies

http: For making HTTP requests to the GIF API.
flutter_spinkit: For showing loading animations.
flutter_riverpod: For state management (optional, if you're using Riverpod).

## Contributing
Contributions are welcome! If you have any ideas to improve the app, please open an issue or submit a pull request.
