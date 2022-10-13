# go.mod란?

* go pakage의 `종속성`을 관리하기위한 패키지 관리 시스템
* 패키지를 트리 형식으로 저장하며, 루트 트리에는 go.mod가 있다.
* 단순하게 모듈을 쉽게 관리하기위한 시스템이라 보면된다.

# 관계
* 저장소에는 하나 이상의 Go 모듈이 포함됩니다.
* 각 모듈에는 하나 이상의 Go 패키지가 포함되어 있습니다.
* 각 패키지는 단일 디렉토리에 있는 하나 이상의 Go 소스 파일로 구성됩니다.

# 기본적인 활용

go mod init test && go mod tidy
```


# 키워드
### module
* module은 모듈 경로를 저장합니다.

* 위에 go.mod 파일 예를 보면 첫 번째 라인에 모듈의 경로를 나타내는 module 지시자가 선언되어 있습니다.

 Go 소스 코드에서 패키지를 가져올 때, 절대 경로를 사용할 필요 없이 module에 선언되어 있는 모듈 경로를 사용하면 됩니다.

	import "github.com/my/thing/bar"
	예를 들어 모듈 안에 있는 bar 패키지를 가져온다면 위와 같이 선언해주면 됩니다.

### require
* `require` 는 빌드시 필요한 종속성 정보를 저장합니다.

* 모듈을 사용하여 빌드하면 자동으로 필요한 패키지를 다운로드 및 설치하고 require에 패키지 경로와 버전 정보가 추가됩니다.

### replace
* `replace`는 모듈의 특정 버전이나, 버전 전체를 대체할 때 사용합니다.
* require에 의해 설정된 종속성을, => 를 통해 우측에 설정된 패키지 버전으로 대체시킵니다.

 
	 빌드시 아래의 우측의  설정된 패키지 버전을 사용하게 됩니다.

	replace example.com/some/dependency => example.com/some/dependency v1.2.3

### exclude
* exclude는 패키지의 특정 버전을 사용하지 않도록 할 때 사용합니다.
* exclude example.com/some/dependency
