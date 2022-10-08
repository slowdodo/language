var number :Int8 = 1
var number1 :Int16 = 2
var number2 :Int32 = 3
var number3 :Int64 = 4

print("value:\(number) size: \(MemoryLayout.size(ofValue: number))");
print("value:\(number1) size: \(MemoryLayout.size(ofValue: number1))");
print("value:\(number2) size: \(MemoryLayout.size(ofValue: number2))");
print("value:\(number3) size: \(MemoryLayout.size(ofValue: number3))");

// Unsigned Integer
var unumber :UInt8 = 1
var unumber1 :UInt16 = 2
var unumber2 :UInt32 = 3
var unumber3 :UInt64 = 4
print("---------------------------------------------------------------------------")
print("value:\(number) size: \(MemoryLayout.size(ofValue: unumber))");
print("value:\(number1) size: \(MemoryLayout.size(ofValue: unumber1))");
print("value:\(number2) size: \(MemoryLayout.size(ofValue: unumber2))");
print("value:\(number3) size: \(MemoryLayout.size(ofValue: unumber3))");