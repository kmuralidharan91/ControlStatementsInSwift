import Foundation

/*
 Types of control statement in Swift
 
 1. for
 2. while
 3. repeat
 */

/*
 Types of for loop in swift
 
 for language in languages {
      print(language)
 }
 languages.forEach { (language) in
     print("Language", language)
 }
 for (index, element) in languages.enumerated() {
     print("Index:", index, "Language:", element)
 }
 */

let languages = ["English", "Tamil", "German"]

for i in 0 ..< languages.count {
    print("Language \(i+1):", languages[i])
}

let languagesDict = [
    "England":"English", "Germany":"German", "Mexico":"Spanish"
]

for (country, language) in languagesDict {
    print("The \(country)'s Language is \(language)")
}

for i in 0...5 {
    print(i)
}

for i in 0..<5 {
    print(i)
}

for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}

for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

languages.forEach { (language) in
   print("Language", language)
}

var evenNumbers = [Int]()
for number in (0...100) {
    guard evenNumbers.count < 10 else {
        break
    }

    guard number % 2 == 0 else {
        continue
    }
    evenNumbers.append(number)
}
print(evenNumbers)

let evenNumberss = (0...100).filter { number -> Bool in
    return number % 2 == 0
}.prefix(10)

print(evenNumberss)

for (index, element) in languages.enumerated() {
    print("Index:", index, "Language:", element)
}

var nationals = ["Brits", "Spain", "Italy"]
var languagess = ["English", "Spanish", "Italian"]
for i in 0 ..< nationals.count {
    var string = "\(nationals[i]) speaks"
    for _ in 1 ... 3 {
        string += " \(languagess[i])"
    }
    print(string)
}

var index = 0
while index < languages.count {
    print (languages[index])
    index += 1
}

var indexx = 0
repeat {
     print (languages[indexx])
     index += 1
} while index < languages.count


