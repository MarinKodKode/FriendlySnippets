void main() {
  // Call the 'printName' method of the Singleton 'User' object.
  // This will print the initial value of 'name' from the Singleton object.
  User.printName(); // Output: John

  // Update the 'name' property of the Singleton object.
  // Since 'User' is a Singleton, this change will affect the object globally.
  User.name = "Peter";

  // Call the 'printName' method again to show the updated 'name'.
  // This will print the new value of 'name' from the Singleton object.
  User.printName(); // Output: Peter
}

// The 'User' class is implemented as a Singleton.
// A private constructor ensures that only one instance of 'User' is created.
class User {
  // A private static variable to hold the Singleton instance of 'User'.
  static final User _instance = User._internal();

  // A public property 'name' with an initial value of "John".
  static String name = "John";

  // Private named constructor to prevent external instantiation.
  User._internal() {
    print("Singleton invoked"); // This will be printed only when the Singleton is first created.
  }

  // A public method to access the Singleton instance.
  static User get instance => _instance;

  // A method that prints the current value of 'name'.
  static void printName() {
    print(name);
  }
}
