///
/// Manuel Alejandro Hernandez Marin 12/01/2025
/// Singleton Design Patterns | Basic template
///


final class UserDetails { //final avoids inheritance 

    ///static property so we can use the class all over the code
    static let shared : UserDetails() 

    //private initialization avoids the creation of new instances
    private init(){ }

    //These vars are accesible everywhere this class is called and the
    //changes made in those classes are kept during the execution 
    //of the program. 

    var userName : String = "Manu"
    var profession : String = "Enginner"

    ///
    ///This function is also callable from every place the class is instanced
    ///feel free to create as many functions as you want
    ///
    func someUsefulFunc() {
        print("Some useful stuff")
    }
}



/// This is how you use a singleton class from another one
/// There are two ways of use it, you can instantiate the class
/// from the beggining or user it directly.

class ExampleOfUse {

    private let userDetails = UserDetails.shared

    print("The user name is \(userDetails.userName)")

    userDetails.userName = "Alejandro"

    print("The user name is \(userDetails.userName)")


    ///Using it directly

    print("The user name is \(UserDetails.shared.userName)")


    UserDetails.shared.userName = "Tadeo"
}