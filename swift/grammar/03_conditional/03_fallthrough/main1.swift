var count = 100

switch(count) {

case 0:
	print("count 값이 0이라면 실행")
case 1..<100:
	print("count 값이 1~99이라면 실행")
case 100:
	print("count 값이 100이라면 실행")
    fallthrough
    print("여기는 무시...")
default:
	print("위 조건이 참이 아니라면 실행")
}

//실행 결과