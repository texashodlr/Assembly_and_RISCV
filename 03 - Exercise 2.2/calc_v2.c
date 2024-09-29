// Function to output a character to console (UART or other device)
void putchar(char c) {
    // Implementation will depend on your hardware or environment
    // Assuming a memory-mapped I/O or direct output method
    // E.g., write to a specific UART memory address
}

// Function to get a character from console (UART or other device)
char getchar() {
    // Implementation depends on your hardware
    // Wait for a character to be available from UART or input buffer
    return '0'; // Placeholder, should be implemented based on your setup
}

// Function to print a string (manually using putchar)
void print(const char *str) {
    while (*str) {
        putchar(*str++);
    }
}

// Simple function to convert a character to an integer
int char_to_int(char c) {
    return c - '0';
}

// Simple function to convert an integer to a character
char int_to_char(int num) {
    return num + '0';
}

// Main calculator logic without using standard C libraries
int main() {
    char operator;
    int num1, num2, result;

    // Read first operand
    print("Enter first number (0-9): ");
    num1 = char_to_int(getchar());

    // Read operator
    print("Enter operator (+, -, *, /): ");
    operator = getchar();

    // Read second operand
    print("Enter second number (0-9): ");
    num2 = char_to_int(getchar());

    // Perform calculation
    switch (operator) {
        case '+':
            result = num1 + num2;
            break;
        case '-':
            result = num1 - num2;
            break;
        case '*':
            result = num1 * num2;
            break;
        case '/':
            if (num2 != 0)
                result = num1 / num2;
            else {
                print("Error! Division by zero.\n");
                return 1;
            }
            break;
        default:
            print("Error! Invalid operator.\n");
            return 1;
    }

    // Output result
    print("Result: ");
    putchar(int_to_char(result));
    putchar('\n');

    return 0;
}
