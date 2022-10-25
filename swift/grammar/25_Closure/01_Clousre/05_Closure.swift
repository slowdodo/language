let Length = {(r: Float ) -> Float in
    return r * 2 * 3.14
}
var result = Length(0)

let Squre = {(r: Float ) -> Float in 
    return r * r * 3.14
}

func Circle_Math(r: Float, cal:(Float) -> Float) -> Float{
    return cal(r)
}
result = Circle_Math(r: 5 , cal: Length) 
print(result)

result = Circle_Math(r: 5, cal: {(r: Float) -> Float in
    return r * 2 * 3.14
})
print(result)

result = Circle_Math(r: 5) {(r: Float) -> Float in
  return r * 2 * 3.14                    
}
print(result)

result = Circle_Math(r: 5) { $0 * 2 * 3.14 }
print(result)
result = Circle_Math(r: 5) { $0 * $0 * 3.14 }
print(result)
