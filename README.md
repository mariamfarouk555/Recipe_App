# Recipe App

## Project Overview

The Recipe App is a Flutter application that allows users to explore and discover a variety of recipes in an organized and user-friendly interface. The app focuses on providing a smooth user experience with a clean UI and basic animations.

The application includes the following features:

- Splash Screen and Onboarding screens to introduce the application.
- Home screen that displays recipes categorized into:
  - Breakfast
  - Lunch
  - Dinner
  - Snack
- Search functionality to allow users to find recipes by name.
- Recipe Details screen that shows full information about each recipe including ingredients, cooking time, difficulty, and servings.
- Favorites screen where users can save and view their selected recipes.
- Profile screen for user-related information.

## Features and Animations

The application includes several animations and UI enhancements:

- Hero Animation for smooth transition between recipe cards and the recipe details screen.
- Opacity Animation for smooth UI state transitions.
- AnimatedSwitcher for switching between empty and non-empty states in the favorites screen.
- Lottie Animations used to display an empty state when there are no favorite recipes.

## App Structure

- Splash Screen
- Onboarding Screens
- Home Screen (categories and recipes list)
- Recipe Details Screen
- Favorites Screen
- Profile Screen

## Technologies Used

- Flutter
- Provider (State Management)
- Lottie (Animations)
- Google Fonts
- Material Design
## Demo Video

https://drive.google.com/file/d/1Rbf4oO60poY_IgxTxKscvtFDFQhJBELY/view?usp=sharing
## Animation Research & Implementation

### 1 Overview of Animation Types in Flutter

In Flutter animations are generally divided into two main categories

#### Implicit Animations
Implicit animations are automatically handled by Flutter when a widget property changes  
The developer only specifies the start and end values and Flutter manages the transition over a given duration  

These animations are simple to implement and are used for smooth UI transitions without complex logic  

#### Explicit Animations
Explicit animations provide full control over the animation process using components such as AnimationController Tween and AnimatedBuilder  
They are more flexible but require more code and manual management  

---

### 2 Implemented Animations in This Project

This project uses implicit animations and built in Flutter transitions to improve the user experience  

#### Hero Animation
Hero animation is used to create a smooth transition between the Home screen and the Recipe Details screen  
When the user taps on a recipe card the image transitions into the details screen in a smooth way  

This makes navigation more natural and interactive  

#### Opacity Animation Splash Screen
Opacity animation is used in the Splash screen to create a smooth fade in effect when the app starts  
This gives a better first impression and avoids sudden UI appearance  

#### AnimatedSwitcher Navigation
AnimatedSwitcher is used when moving between Home Favorites and Profile screens  
It provides smooth transitions between screens instead of instant changes  

#### Lottie Animation Favorites Screen
Lottie animations are used in the Favorites screen to show an empty state when there are no favorite recipes  
It improves the visual appearance of the app  

---

### 3 Why These Animations Were Chosen

The selected animations were chosen based on the needs of the application  

Implicit animations were used because they are simple efficient and easy to maintain  
Hero animation improves navigation and connects screens visually  
AnimatedSwitcher makes screen transitions smoother  
Opacity animation improves the Splash screen  
Lottie animations improve empty state design  

Explicit animations were not used because the app does not need complex animation control  

---

