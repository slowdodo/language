# 환경변수 shell 명령어
* $0 - 실행된 쉘 스크립트 파일명
* $# - 스크립트에 전달된 인자의 갯수
* $$ - 쉘 스크립트의 PID
```bash
#!/bin/bash
echo $0
echo $#
echo $$
```

