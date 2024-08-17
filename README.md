# vigor_enterprise_currency_converter_task

## Getting Started

Brief Description of Currency Converter App
This is a Flutter application that functions as a currency converter with the following features:

Functionality:

Supported Currencies: Displays a list of supported currencies with their corresponding country flags. This data is initially fetched from an API and then stored locally in a database for offline access.
Historical Data: Allows users to view historical exchange rates for two chosen currencies for any selected date 


.
Currency Conversion: Enables users to convert between two currencies by choosing and tap on convert . The conversion is performed using an API.



Technology Stack:

Development Language: Dart (Flutter)
API: Free Currency Converter API ( https://freecurrencyapi.com/)
Flag Icons: FlagCDN (https://flagcdn.com/)
Database: (Shared Preferences)
State Management: Bloc/Cubit  pattern (aligned with clean architecture)
UI Framework: Google Material Design
Dependency Injection: Chosen library ( GetIt)
Testing: Unit tests for API integration and business logic (MOCkITO)




## DEMO
** Android Demo **

https://github.com/user-attachments/assets/deba1d80-0f71-461c-9a6e-171c7c9f1738


** IOS Demo **



https://github.com/user-attachments/assets/bf509864-3ed8-4b5d-8c51-e6353c473c84


## Instruction To Run 
## Prerequisites
Flutter SDK: Ensure you have the Flutter SDK installed and configured.
Dart SDK: The Flutter SDK includes the Dart SDK.
IDE: Choose a suitable IDE like Android Studio, Visual Studio Code, or IntelliJ IDEA.
Code Editor: Any text editor can be used for basic editing.
## Project Setup
Clone the repository: If the project is hosted on a version control system like Git, clone the repository to your local machine.
Open the project: Open the project in your preferred IDE.
Get dependencies: Run the flutter pub get command in your terminal to fetch the required packages.
## Development Environment
Emulator/Simulator: Set up an Android emulator or iOS simulator for testing.
Device: Connect a physical device for testing if available.
Building the Project
Choose a build target: Select the desired platform (iOS, Android, web, etc.) in your IDE or using command-line tools.
Build the app: Use the flutter build command in your terminal or the corresponding build option in your IDE.
Run the app: Start the app on an emulator, simulator, or physical device.



## Adapted design pattern for the app architecture 
i used clean arch for this task 
  features
  home
    data
      datasource
      models
      repository
    domain
      entity
      usecase
      repository
    presentation
      logic
       cubit
      ui
       screens
       widgets

. Entities:
Represent the core business objects without any dependencies on UI or data access.
Examples: User, Product, Order.
Justification: By isolating business logic, you improve testability and maintainability.
2. Use Cases:

Contain the application's business logic.
Interact with entities and repositories.
Examples: LoginUseCase, PlaceOrderUseCase.
Justification: Encapsulating business rules in use cases promotes reusability and testability.
3. Data Access Layer:

Handles data persistence and retrieval.
Interfaces define the contracts for data access.
Implementations can use local storage, remote APIs, or databases.
Examples: UserRepository, ProductRepository.
Justification: Separating data access from business logic improves flexibility and allows for different data sources.
4. Presentation Layer:

Handles UI interactions and displays data.
Depends on use cases and data access layer through dependency injection.
Examples: LoginScreen, ProductListScreen.
Justification: Clear separation of concerns between UI and business logic.
Why Choose Clean Architecture for Flutter?
Testability: By isolating business logic, unit testing becomes easier and more effective.
Maintainability: The clean separation of concerns makes the codebase more understandable and easier to modify.
Reusability: Business logic can be reused in different parts of the app or even in other applications.
Flexibility: The architecture is adaptable to changes in UI, data access, or external dependencies.
Dependency Injection: Promotes loose coupling between components.



## Adapted image loader library

i used custom cached image 
because you can enhance the user experience by using it and handle loading state and error with very easily and maintanable way 
https://pub.dev/packages/cached_network_image

## Used database in the app 
Shared Preferences is a suitable choice for storing simple key-value pairs in your Flutter application. Here's a justification for its use:

Advantages of Shared Preferences:
Simplicity: Easy to use and integrate into your Flutter project.
Speed: Offers fast read and write operations, ideal for small data sets.
Efficiency: Suitable for storing user preferences, settings, and small amounts of data.
Platform Independence: Works consistently across iOS and Android.
Use Cases for Shared Preferences:
User preferences: Storing theme settings, notification preferences, language settings.
Boolean flags: Tracking app state (e.g., first-time user, onboarding completed).
Small data sets: Storing limited amounts of data like user IDs, authentication tokens.




A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
