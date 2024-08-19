var FlotNumber: Float = 60.0;

var width = 97;
var widthText = "The Width is"
var widthTextWidthNumber = widthText + String(width);
var name = "Donggyun";

var threeOfMark = """
                  my name is Donggyun
                  what is your name?
                  """;

let individualScores = [10, 20, 30, 40]
var totalScore = 0;

for score in individualScores {
    totalScore += score;
    if totalScore >= 100 {
        print("🔥 score over then 100 🔥");
    }
}

var optionalName: String? = nil
var greeting: String = "Hey! My name is";
if let name = optionalName {
    print("\(greeting) \(name)")
} else {
    print("The optionalName is nil")
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("😅 Is it a spicy \(x)? 😅")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (key, numbers) in interestingNumbers {
    print("dictional Key is \(key)");
    
    for number in numbers {
        if largest < number {
            largest = number;
        }
    }
}
print("largest is \(largest)");

var total = 0
for i in 0..<4 {
    total += i
}
//print(total)
//
//print("Larget is \(largest) 😎")
//print(FlotNumber);
//print(widthTextWidthNumber);
//print("my name is \(name)");
//print(threeOfMark);
//print(totalScore);

// 4. Functions and Closures
print("----Functions and Closures----")
func greet(target: String) -> String {
    return "Hello! \(target)"
}
let helloText = greet(target: "효신");
print(helloText);

func greetWithCustomArg(_ target: String, on day: String) -> String {
    return """
        Hello! \(target)!!! 🫣
        Today is \(day) days
        See you soon!!
        """
}
let helloTextWithCustomArg = greetWithCustomArg("효신", on: "23");
print(helloTextWithCustomArg);

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    if scores.count == 0 {
        return (min: 0, max: 0, sum: 0)
    }
    
    var min = scores[0];
    var max = scores[0];
    var sum = 0;
    
    for score in scores {
        if min > score {
            min = score
        }
        
        if max < score {
            max = score
        }
        
        sum += score
    }
    
    return (min, max, sum);
}
let statistics = calculateStatistics(scores: [10, 0, 20, 40, 60]);
print("The Statistic of scores is \(statistics)");
print("The Statistic os empty scores is \(calculateStatistics(scores: []))")

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(v: Int) -> Int {
        return v + 1;
    };
    
    return addOne;
}
let incrementer = makeIncrementer();
print(incrementer(1))

var numbers = [20, 19, 7, 12]
let mappedNumbers = numbers.map({ (number: Int) -> Int in
    if (number % 2) == 0 {
        return number;
    } else {
        return 0;
    }
})
print(mappedNumbers)
print("------------------------------")
print("\n\n");
// 5. Objects and Classes
print("-----Objects and Classes------")

// Every property needs a value assigned — either in its declaration (as with numberOfSides) or in the initializer (as with name).
class Shape {
    var name: String
    var numberOfSides = 0;
    let constNumber = 1;
    
    init(name: String) {
        self.name = name;
    }
    
    func simpleDiscription() -> String {
        return """
            Simple Disscription!! my NumberOfSides is \(numberOfSides)
            And My Name is '\(name)' 🔥🔥🔥🔥🔥
            """;
    }
    
    func showConstNum() {
        print(constNumber);
    }
}

let shape = Shape(name: "Dong gyun");
shape.numberOfSides = 100;
let discription = shape.simpleDiscription();
print(discription);
shape.showConstNum();

class Square: Shape {
    var sideLength: Int;
    
    init(sideLength: Int, name: String) {
        self.sideLength = sideLength;
        super.init(name: name);
    }
    
    override func simpleDiscription() -> String {
        return """
            square Disscription!! my sideLength is \(sideLength)
            And My Name is '\(name)' 🔥🔥🔥🔥🔥
            """;
    }
}

let square = Square(sideLength: 10, name: "Dong gyun");
print(square.simpleDiscription());
print(square.numberOfSides);

class NamedShape {
    var numberOfSides: Int = 0
    var name: String


    init(name: String) {
       self.name = name
    }


    func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength;
        super.init(name: name);
        numberOfSides = 3;
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength;
        }
        set {
            sideLength = newValue / 3;
        }
    }
    
    override func simpleDescription() -> String {
          return "An equilateral triangle with sides of length \(sideLength)."
      }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

print("------------------------------")
