let multiply = {(val1: Int, val2: Int) -> Int  in
        return val1 * val2
}

var result = multiply(10, 20)

let add = {(val1: Int, val2: Int) -> Int  in
        return val1 + val2
}

func math(x: Int, y: Int, cal: (Int, Int) -> Int) -> Int {
    return cal(x, y)
}
result = math(x: 10, y: 20, cal: add)
print(result)
result = math(x: 10, y: 20, cal: multiply)
print(result)