// The 'main' function is the entry point of the program.
fun main() {
    // Call the 'printName' function of the User object.
    // This will print the initial value of 'name' from the Singleton object.
    User.printName() // Output: John

    // Update the 'name' property of the Singleton object.
    // Since 'User' is a Singleton, this change will affect the object globally.
    User.name = "Peter"

    // Call the 'printName' function again to show the updated 'name'.
    // This will print the new value of 'name' from the Singleton object.
    User.printName() // Output: Peter
}

// This is the Singleton object declaration for 'User'.
// Kotlin's 'object' keyword ensures that only a single instance of this object exists throughout the program.
object User {

    // 'name' is a mutable property of the Singleton object with an initial value of "John".
    var name = "John"

    // The 'init' block is a special block that gets called when the Singleton is created.
    // It runs only once when the 'User' object is first accessed or instantiated.
    init {
        println("Singleton invoked") // This will be printed once when the object is first accessed.
    }

    // 'printName' is a method of the Singleton object.
    // It prints the current value of the 'name' property.
    fun printName() = println(name)
}
