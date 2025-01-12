# Bill Splitter App

An intuitive iOS app to help users quickly split bills among friends, making it ideal for group dinners, trips, or outings. This app is built using SwiftUI and focuses on user-friendliness and efficient calculations.

## Features

### Calculator View
1. **Input Fields**:
   - **Total Amount**: Enter the total bill cost.
   - **Tip Amount**: Specify the tip percentage.
   - **Number of People**: Indicate the number of people splitting the bill.

2. **Calculation Process**:
   - Validates user inputs for correctness.
   - Calculates:
     - **Total Amount (including tip)**.
     - **Split Amount per Person**.

3. **Result Display**:
   - Shows an alert with:
     - The total amount (including tip).
     - The split amount per person.

4. **Save or Cancel**:
   - Save the calculated split amount to the user's total expenses.
   - Cancel to clear input fields.

---

### Expenses View
1. **Display Total Expenses**:
   - Shows the user's accumulated expenses from previous entries.

2. **Reset Functionality**:
   - Provides a button to reset total expenses.

---

## Project Structure

- **Main Views**:
  - `CalculatorView`: Handles bill-splitting logic and input validation.
  - `ExpensesView`: Displays total expenses and provides reset functionality.

- **Business Logic**:
  - Validates user inputs.
  - Calculates bill split accurately.
  - Saves and resets expense records.

- **UI Design**:
  - User-friendly and visually appealing interface.
  - Intuitive navigation and clear input fields.
 
    

<img width="398" alt="image" src="https://github.com/user-attachments/assets/71701bb4-8a79-4c0e-a755-8a58dd8bedeb" />

<img width="398" alt="image" src="https://github.com/user-attachments/assets/0fe01a1c-58c8-48c6-9ea3-52d64ddf2891" />



---

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/bill-splitter-app.git
