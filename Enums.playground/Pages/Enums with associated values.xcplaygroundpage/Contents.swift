//: [Previous](@previous)

class Person {
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

enum MassageChair {
  case free
  case occupied(Person)
}

let nikolas = Person(name: "Nikolas")
let massageChair = MassageChair.occupied(nikolas)

switch massageChair {
case .free:
  print("The chair is currently free.")
case .occupied(let person):
  print("\(person.name) is enjoying an extremely nice and comforting massage right now. Please don't disturb and wait until it's your turn!")
}

/*:
 
 ### Challenges
 
 1. Model a type called `Box` that is either empty or contains exactly one `Thing`. `Thing` looks as follows:
 ```
 class Thing {
   let name: String
 
   init(name: String) {
     self.name = name
   }
 }
 ```
 2. Create an empty `Box`
 3. Create three different `Box`es, each should contain one item of the following: `Soccer Ball`, `Phone`, `Chocolate`
 4. Write a function that takes a `Box` as an argument and returns a `String` indicating what that `Box` contains.
 5. Make the `Box` _generic_ so that it can contain an object of any type, not just `Thing`.
 */
class Thing {
    let name: String
    
    init(name: String){
        self.name = name
    }
}

enum Box {
    case empty
    case containsOneThing(Thing)
}

var emptyBox = Box.empty


let soccerBall = Thing(name: "Soccer ball")
var boxWithSoccerBall = Box.containsOneThing(soccerBall)

let phone = Thing(name: "Phone")
var boxWithPhone = Box.containsOneThing(phone)

let chocolate = Thing(name: "Chocolate")
var boxWithChocolate = Box.containsOneThing(chocolate)

func containedItemIn(box: Box) -> String {
    switch box{
    case .empty:
        return "The box is empty."
    case .containsOneThing(let thing):
        return "The box has a \(thing.name) in it. Sorry!"
    }
    
}

print(containedItemIn(box: boxWithPhone))
print(containedItemIn(box: emptyBox))

