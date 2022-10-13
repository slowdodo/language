```bash
if [ 값1 조건식 값2 ]; then
    수행
fi
```

```bash
#!/bin/bash
num1=10
num2=10

if [ ${num1} -eq ${num2} ]; then
    echo "변수의 값이 같습니다."
fi

```

비교조건식
```bash
[ -z ${변수A} ] # 변수A의 문자열 길이가 0이면 True
[ -n ${변수A} ] # 변수A의 문자열 길이가 0이 아니면 True

[ ${변수A} -eq ${변수B} ] # 변수A와 변수B의 값이 같으면 True
[ ${변수A} -ne ${변수B} ] # 변수A와 변수B의 값이 다르면 True
[ ${변수A} -gt ${변수B} ] # 변수A의 값이 변수B보다 크면 True
[ ${변수A} -ge ${변수B} ] # 변수A의 값이 변수B보다 크거나 같으면 True
[ ${변수A} -lt ${변수B} ] # 변수A의 값이 변수B보다 작으면 True
[ ${변수A} -le ${변수B} ] # 변수A의 값이 변수B보다 작거나 같으면 True

[ 조건A -a 조건B ] # 조건식 A와 B모두가 참이면 True (&& 연산자)
[ 조건A -o 조건B ] # 조건식 A가 참이거나 조건식 B가 참일 경우 True (|| 연산자)

# 아래는 파일 관련 조건문 종류
[ -d ${A} ] # A파일이 디렉터리면 True
[ -e ${A} ] # A파일이 존재하면 True
[ -L ${A} ] # A파일이 심볼릭 링크로 되어 있으면 True
[ -r ${A} ] # A파일이 읽기가 가능하면 True
[ -w ${A} ] # A파일이 쓰기가 가능하면 True
[ -x ${A} ] # A파일이 실행이 가능하면 True
[ -s ${A} ] # A파일의 크기가 0보다 크면 True
[ ${A} -nt ${B} ] A파일이 B파일보다 최신파일이면 True
[ ${A} -ot ${B} ] A파일이 B파일보다 이전파일이면 True
[ ${A} -ef ${B} ] A파일이 B파일이랑 같은 파일이면 True
```

```bash
if [ ${num1} < ${num2} ]; then
    echo "yes"
else
    echo "No"
fi

```

```bash
#!/bin/bash

num1="10"
num2="11"

# 1
if [ ${num1} -lt ${num2} ]; then
    echo "yes"
fi

# 2
if [ ${num1} -lt ${num2} ]
then
    echo "yes"
fi

# 3 - 조건문을 문자 대신 기호로 표현
if (( ${num1} < ${num2} )); then
    echo "yes"
fi

# 4 - 한줄로 작성
if [ ${num1} -lt ${num2} ]; then echo "yes"; fi
```



```bash

#!/bin/bash

num1="11"
num2="10"

# 1
if [ ${num1} -lt ${num2} ]; then
    echo "yes"
else
    echo "no"
fi

# 2
if [ ${num1} -lt ${num2} ]
then
    echo "yes"
else
    echo "no"
fi

# 3 - 조건문을 문자 대신 기호로 표현
if (( ${num1} < ${num2} )); then
    echo "yes"
else
    echo "no"
fi

# 4 - 한줄로 작성
if [ ${num1} -lt ${num2} ]; then echo "yes"; else echo "no"; fi
```

```bash
#!/bin/bash

num1="10"
num2="10"

# "-lt", A가 B보다 작으면 True
# "-eq", A와 B가 서로 같으면 True

if [ ${num1} -lt ${num2} ]; then
    echo "yes"
elif [ ${num1} -eq ${num2} ]; then
    echo "bbb"
else
    echo "no"
fi


if [ ${num1} -lt ${num2} ]
then
    echo "yes"
elif [ ${num1} -eq ${num2} ]
then 
    echo "bbb"
else
    echo "no"
fi


if (( ${num1} < ${num2} )); then
    echo "yes"
elif (( ${num1} == ${num2} )); then
    echo "bbb"
else
    echo "no"
fi


if [ ${num1} -lt ${num2} ]; then echo "yes"; elif [ ${num1} -eq ${num2} ]; then echo "bbb";  else echo "no"; fi
```