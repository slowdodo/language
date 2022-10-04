# 대표적 명령어
| 명령어 	| 의미                                    	| 사용법(인텔문법)   	| 추가설명        	| 예제 	|
|--------	|-----------------------------------------	|--------------------	|-----------------	|------	|
| cmp    	| 메모리값 복사                           	| cmp des src        	| des <- src 이동 	| cmp  	|
| mov    	| src값을 des로 움직임                    	| mov des src        	| des <- src 이동 	|      	|
| jmp    	| 특정 메모리로 점프 명령어               	| jmp mem            	| mem값으로 점프  	|      	|
| call   	| 특정 프로시저(함수) 호출함              	| call function_name 	|                 	|      	|
| ret    	| 호출했던 바로 다음 지점으로 이동        	| ret                	|                 	|      	|
| nop    	| 아무동작 안함                           	| nop                	| 아무동작 안함   	|      	|
| int    	| os에 할당된 인터럽트 영영을 system call 	| int $0x(값넣기)    	|                 	|      	|

# 스택 조작 명령어

![stack_control](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FIAjc6%2FbtroTlMGDZi%2FVGSnKcTU53XB6EzXxskYaK%2Fimg.png)
| 명령어 	| 의미                            	| 사용법(인텔문법) 	| 추가설명 	| 예제     	|
|--------	|---------------------------------	|------------------	|----------	|----------	|
| push   	| 값을 스텍에 저장                	| push register    	|          	| push eax 	|
| pop    	| 가장 상위에 있는 값 꺼내서 저장 	| pop register     	|          	| pop eax  	|

# 연산 명령어

| 명령어 	| 의미               	| 사용법(인텔문법) 	| 추가설명            	| 예제     	|
|--------	|--------------------	|------------------	|---------------------	|----------	|
| add    	| 더하기 명령어      	|                  	|                     	| push eax 	|
| sub    	| 빼기 명령어        	|                  	|                     	| pop eax  	|
| inc    	| 증감 명령어        	| inc register     	| 레지스터 값 1 증가  	|          	|
| dec    	| 가감 명령어        	| dec register     	| 레지스터 값 -1 감소 	|          	|
| neg    	| 값을 뒤집는 명령어 	|                  	|                     	|          	|


# 