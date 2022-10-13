let Length = {(r: Float16 ) -> Float16 in
    return r * 2 * 3.14
}
var result = Length(0)

let Squre = {(r: Float16 ) -> Float16 in 
    return r * r * 3.14
}

func Circle_Math(r: Float16, cal:(Float16) -> Float16) -> Float16{
    return cal(r)
}
result = Circle_Math(r: 5 , cal: Length) 
print(result)

result = Circle_Math(r: 5, cal: {(r: Float) -> Float16 in
    return r * 2 * 3.14
})
print(result)
