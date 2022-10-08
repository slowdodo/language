let num = 25
let count : String
switch num {
case 0...9:
 count = "한자리 수"
case 10...99:
 count = "두자리 수"
case 100...999:
 count = "세자리 수"
default:
 count = "네자리 수 이상"
}
print(count)
// 두 자리 수