class SClass {
var storedProperty = 2
static var storedTypeProperty = 1
static var computedTypeProperty: Int {
return 10
}
class var overrideableComputedTypeProperty: Int
{
return 100
}
}
var x = SClass() 
print(x.storedProperty)
print(SClass.storedTypeProperty)
print(SClass.computedTypeProperty)
print(SClass.overrideableComputedTypeProperty)
