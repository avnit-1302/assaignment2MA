# Meal Categories App

A Flutter-based mobile application that provides users with a wide selection of meal categories. Users can explore meals, view detailed recipes, filter based on dietary preferences, mark meals as favorites, and maintain a shopping list for ingredients.

## Features

- **Meal Categories**: Browse through different meal categories like Hamburgers, Quick & Easy, German, etc.
- **Meal List**: View meals within a selected category, with details such as cooking time, complexity, and cost.
- **Meal Details**: Detailed view of each meal showing ingredients and preparation steps.
- **Favorites**: Add or remove meals from your list of favorites.
- **Shopping List**: Add meal ingredients to a shopping list for easy reference while grocery shopping.
- **Filters**: Apply dietary filters (Vegetarian, Vegan, Non-Vegetarian, Gluten-Free) to the meals.
- **Side Drawer**: Access filters and the shopping list from anywhere in the app.
- **Bottom Navigation**: Quickly switch between "Categories" and "Favorites" via bottom tabs.

## Screens

1. **Home Screen**: Displays a grid of meal categories.
2. **Category Meals Screen**: Lists meals available in the selected category.
3. **Meal Details Screen**: Shows ingredients and preparation steps of a selected meal.
4. **Favorites Screen**: Displays meals marked as favorites.
5. **Shopping List Screen**: Displays a list of added ingredients for shopping.

## Architecture

The app follows a **modular architecture** for ease of scalability and maintenance:
- **Presentation Layer**: Handles UI components with Flutter widgets.
- **State Management**: Managed via **Provider**, including favorites, filters, and the shopping list.
- **Data Models**: Simple models for meals and categories, currently populated with dummy data.
- **Business Logic**: Encapsulated in scoped models, handling filters, favorites, and shopping list functionality.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/avnit-1302/assaignment2ma
2. Install dependencies:
   ```bash
   flutter pub get
3. Run the app on your emulator or device:
   ```bash
   flutter run


## How to use

Launch the app to view a grid of meal categories.
Select a category to see the list of meals.
Tap on a meal to view detailed recipe information.
Add a meal to your favorites by clicking the heart icon.
Use the bottom navigation to switch between the Categories and Favorites tabs.
Access filters and the shopping list via the side drawer.


## Contributions
Jan and Avnit