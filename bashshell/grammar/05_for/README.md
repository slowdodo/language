
```bash
#!/bin/bash

for <변수> in <범위>
do
    <수행 로직>
done


```


```bash
#!/bin/bash

data="1 2 3 4"

# 초기값; 조건값; 증가값을 사용한 반복문
for ((i=1; i<=4; i++)); do
    echo $i
done

# 변수를 사용한 반복문
for x in $data
do
    echo ${x}
done

# seq 함수를 사용한 반복문 (1, 2, 3, 4) 범위 나열
for x in $(seq 4)
do
    echo ${x}
done

# 배열을 사용한 반복문
datas=(1 2 3 4)
for x in $datas
do
    echo ${x}
done
```