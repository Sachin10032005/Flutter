# Flutter Bottom Navigation Bar Example

This Flutter project demonstrates the use of a **Bottom Navigation Bar** to switch between different screens (or widgets). The app consists of a simple interface with three navigation options: Home, Contact, and Settings.

## Features
- **Home Page**: Displays a text message "Home Page".
- **Contact Page**: Displays a message "Check Your Contact".
- **Settings Page**: Displays a message "Settings Opened".
- **Bottom Navigation Bar**: Used to switch between these three pages.
- ## Code Overview

The project consists of the following key components:

- `MyApp`: The root widget that sets up the basic structure of the app.
- `MyStatefulWidget`: A stateful widget that manages the current index of the selected tab and updates the displayed widget accordingly.
- **Bottom Navigation Bar**: A navigation bar with three items — Home, Contact, and Settings — that allows users to navigate between the different screens.

### Main Code Snippets

- **`_widgetOptions`**: A list of three widgets that correspond to the Home, Contact, and Settings pages.
- **`_onItemTapped`**: A function that updates the state when a user taps on a BottomNavigationBarItem, changing the index and the displayed content.
