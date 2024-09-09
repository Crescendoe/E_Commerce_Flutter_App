This mock e-commerce application showcases a user-friendly interface for browsing and purchasing Nike products.
Designed with Flutter, the app allows users to explore the latest Nike footwear and apparel collections, add items to their cart, and proceed to checkout.

Features:

    Browse a selection of Nike shoes
    Add shoes to your cart
    View your cart items
    Simple and clean user interface

Getting Started:

    Clone this repository.
    Ensure you have Flutter installed and configured on your development machine. You can find the installation instructions here: https://docs.flutter.dev/get-started/install
    Open the project in your preferred IDE (e.g., Android Studio, Visual Studio Code).
    Run the app using flutter run.

Dependencies:

    provider: https://pub.dev/packages/provider - for state management
    google_nav_bar: https://pub.dev/packages/botton_nav_bar - for the bottom navigation bar

Project Structure:

    lib: Contains all the source code for the app.
        components: Reusable components used throughout the app (e.g., MyBottomNavBar, ShoeTile).
        models: Data models for the app (e.g., Shoe, Cart).
        pages: Different screens of the app (e.g., HomePage, ShopPage, CartPage).
    assets: Contains images and other resources used by the app (e.g., Nike.png).
    pubspec.yaml: Defines the project dependencies and configurations.

App Flow:

    The app starts with the IntroPage which displays a Nike logo, tagline, and a "Shop Now" button.
    Clicking the "Shop Now" button navigates to the HomePage.
    The HomePage has a bottom navigation bar with tabs for "Shop" and "Cart".
    Clicking the "Shop" tab displays the ShopPage which shows a list of available shoes.
    Tapping on a shoe in the ShopPage adds it to the cart and displays an alert dialog confirming the addition.
    Clicking the "Cart" tab displays the CartPage which shows a list of items currently in the cart.
    Users can remove items from the cart by tapping the delete icon next to the item.
