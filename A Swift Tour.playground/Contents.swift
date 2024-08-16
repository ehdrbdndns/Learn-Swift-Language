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

print(FlotNumber);
print(widthTextWidthNumber);
print("my name is \(name)");
print(threeOfMark);
print(totalScore);
