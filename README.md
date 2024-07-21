# Route - Task 🚀

## Description 📖

Route - Task is a Flutter application designed to display a grid view of products fetched from a remote API. This project follows the principles of clean architecture, utilizing Bloc for state management, the repository pattern for data handling, and dependency injection through get_it and injectable.

## Features ✨
- 🗂 Fetch and display a list of products from a remote API
- 📐 Grid view layout for product display
- 🏗 Clean architecture principles
- 🔄 Bloc for state management
- 📦 Repository pattern for data handling
- 💉 Dependency injection using get_it and injectable


## 📸 Screenshots

<img src="https://github.com/Mariam-Elkhelawy/route_task/blob/master/assets/screens/product.png" height="585">  <img src="https://github.com/Mariam-Elkhelawy/route_task/blob/master/assets/screens/loading.png"  height="585">  <img src="https://github.com/Mariam-Elkhelawy/route_task/blob/master/assets/screens/error.png" height="585">  


## Installation ⚙

### Prerequisites 🛠
- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: [Install Dart](https://dart.dev/get-dart)

### Steps 🚀
1. Clone the repository:
   
    bash
    git clone https://github.com/Omnia-97/Route---Task.git
    
2. Navigate to the project directory:
   
    bash
    cd Route---Task
    
3. Get the required packages:

    bash
    flutter pub get
    
4. Generate the necessary files for dependency injection:
   
    bash
    flutter pub run build_runner build
    
5. Run the application:
   
    bash
    flutter run
    

## Usage 🖥
1. Launch the app on your device or emulator.
2. The main screen will display a grid view of products fetched from the remote API.
3. Interact with the products as needed.

## Project Structure 🗂
- *lib*
  - *config*: Contains configuration files
  - *core*: Core functionalities shared across the app
    - *api*: API related files
    - *components*: Reusable components
    - *enums*: Enumerations
    - *errors*: Error handling
    - *utils*: Utility functions
  - *features*: Specific features of the app
    - *products*: Product-related features
      - *data*: Data sources and repositories for products
      - *domain*: Business logic for products
      - *presentation*: UI and presentation logic for products
        - *bloc*: Bloc files for state management
        - *pages*: Product pages
        - *widgets*: Reusable widgets for product pages
  - *config.config.dart*: Application configuration
  - *main.dart*: Entry point of the application

## Contributing 🤝
1. Fork the repository.
   
2. Create your feature branch:

    bash
    git checkout -b feature/AmazingFeature
    
3. Commit your changes:
 
    bash
    git commit -m 'Add some AmazingFeature'
    
4. Push to the branch:
   
    bash
    git push origin feature/AmazingFeature
    
5. Open a pull request.

## Contact 📬
For any questions or suggestions, feel free to reach out.

- [Omnia Nabil](mailto:omnianabil1920@gmail.com)

---

This README was generated with ❤ by [Omnia Nabil](https://github.com/Omnia-97)
