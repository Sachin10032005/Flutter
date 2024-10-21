# Flutter Navigation Demo

This project is a simple Flutter app demonstrating navigation between multiple screens (pages). The app contains three screens: `HomePage`, `SecondPage`, and `ThirdPage`. Navigation is handled using Flutter's `Navigator` to push and pop routes between these screens.

## Features

- Navigate from the home page to the second page and pass data.
- Navigate to the third page.
- Go back to the previous page or return directly to the home page from the third page.

## Screens

1. **HomePage**:
   - Contains two buttons:
     - **Go to Second Page**: Navigates to the second page with a data payload.
     - **Go to Third Page**: Navigates to the third page.
  
2. **SecondPage**:
   - Displays the data passed from the `HomePage`.
   - Contains a button to return to the `HomePage`.

3. **ThirdPage**:
   - Contains two buttons:
     - **Go Back**: Returns to the previous page.
     - **Go Back to Home**: Returns directly to the `HomePage`, bypassing the `SecondPage`.

