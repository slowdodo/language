let alphabetDictionary: [String: String] = ["a": "A", "b": "B"]

// closure 기본 표현식
var keys: [String] = alphabetDictionary.map { (tuple: (String, String)) -> String in
    return tuple.0
}

// 딕셔너리 타입의 간략화
keys = alphabetDictionary.map { $0.0 }
print(keys)

// 딕셔너리 타입
let values: [String] = alphabetDictionary.map { $0.1 }
print(values)

// Set 타입
var numberSet: Set = [1, 2, 3, 4, 5]
let resultSet = numberSet.map { $0 * 2 }
print(resultSet)

// 옵셔널 타입
let optionalInt: Int? = 3
let resultInt: Int? = optionalInt.map { $0 * 2 }
print(optionalInt)

// range 타입
let range: CountableClosedRange = (0...3)
let resultRange: [Int] = range.map { $0 * 2 }
print(resultRange)