# 고루틴(Goroutine)
* Goroutine은 스레드의 고질적인 문제인 많이 사용할수록 증가하는 오버헤드를 줄이기 위해 만들어진 기능이다.
<br/>그렇기에 기존 스레드보다 훨씬 적게 오버헤드를 일으킨다. 
* 여러개의 함수를 비동기적으로 실행할수 있으며 함수 호출이 매우 간단하다.
* Goroutine은 필요할때 더 많은 메모리를 사용가능한 `성장 가능한 세그먼트 스택`을 사용한다.

# 특징
* 스레드보다 시작 시간이 빠르다.
* Goroutine은 내장된 기본 요소가 제공되어 자체적으로 안전한 통신을 사용한다.
* 데이터 구조를 공유 할 떄 뮤텍스 잠금에 의존하지 않는다.
* 고 루틴과 OS 스레드에는 1:1 매핑이 없으므로 최적화된 다수의 스레드에서 실행된다.

# 주의
* Goroutine은 일반적으로 말하는 쓰레드가 아니다.


# 스레드와 고루틴의 메모리 소비 차이
* 메모리 소비
    * GoRoutine
        * GoRoutine은 생성할때 많은 메모리를 필요로 하지 않는다
        * 약 2KB의 스택 메모리 공간을 요구하며, 필요에 따라 힙 메모리 공간을 사용한다.
    * Thread
     * 쓰레드는 쓰레드가 사용할 메모리 공간과 각 메모리 간의 경계 역할을 하는 Guard Page라고 불리는<br> 메모리 영역과 함께 포함하여 약 1Mb의 메모리 공간을 소모하여 생성된다
![Guard_Page](https://tech.ssut.me/content/images/2017/08/thread-stacks-and-guard-pages.jpg)
따라서 Golang 기반의 서버에서는 요청 1건 당 1개의 고루틴을 생성 하도록 만들 수 있지만, 요청 1건 당 1개의 쓰레드를 할당하는
<br> 다른 언어 기반의 서버는 앞선 방식으로 쓰이게 되면 결국에는 `OOM(OutOfMemory)` 이슈의 원인이 될 것이다. 
<br> 이는 쓰레드를 사용하는 언어기반으로 만들어진 서버가 지속적으로 쓰레드 생성 요청을 받게 된다면 마주하게 될 이슈다(예로들어 Java, C++).
<br> 그래서 이러한 언어 환경에서는 쓰레드를 미리 만들어 두고 재활용하는 형태인 쓰레드 Pool을 사용하고 해당 쓰레드 비용에 대한 문제를 풀어내려는 노력이 있을 것이다.


# 생성, 소거 비용
OS 쓰레드는 생성/소거 시 많은 비용이 들어가게 된다. 
<br>OS로 부터 쓰레드 리소스를 요청을 통해 생성하고 쓰레드 작업 완료 시 해당 리소스를 OS에 다시 반환해야하기 때문이다. 
<br> 그래서 OS레벨의 쓰레드를 직접 `Call`하여 쓰레드를 생성/소거하는 언어들은 이 문제를 풀어내기 위해서 쓰레드 `Pool`을 활용하여 이러한 비용 문제를 해소하려는 노력이 있다.
<br> 반면에 Go의 고루틴은 런타임에서 논리적(즉, OS레벨 쓰레드와 달리 하드웨어에 의존적이지 않음)으로 생성되고 소거되기 때문에 상대적으로 해당 작업들에 소모되는 비용이 저렴하다. 
<br>따라서 Go언어에서는 이러한 고루틴을 수동 관리 하는 매뉴얼을 제공하지 않는다고 하고, 고루틴은 OS 쓰레드와 상대적으로 앞선 OOM과 같은 문제에 대한 걱정/부담없이 생성하여 사용해도 된다고 표현하곤 한다 

# Context Switching 비용
하나의 쓰레드가 특정 작업을 처리하기 위해서 Blocking된다면 다른 쓰레드가 그 대신하여 처리하도록 스케줄링되어 있다.
<br> 쓰레드가 스케줄링되고 쓰레드가 교체되는 동안에 스케줄러에서는 모든 레지스터들을 save/restore해야 한다.
<br> 일반적인 쓰레드 Context Switching 작업 시 16개의 범용 레지스터, PC(Program Counter), SP(Stack Pointer), Segment 레지스터, 16개의 XMM레지스터, FP coprocessor state, 16개의 AVX 레지스터, 모든 MSR들 등을 save/restore 작업을 진행해야 한다. 
<br>따라서 이와 같은 작업을 처리하기 때문에 생각보다 Context Switching 시 많은 비용을 소모하게 된다고 말하는 것이다.
<br> 하지만, 고루틴은 3개의 레지스터(PC,SP,DX)만 save/restore 작업을 하기 때문에 상대적으로 쓰레드보다 Context Switching 비용을 적게 소모한다.

# 고루틴 실행방법
고루틴은 `M:N 쓰레드 모델(LWP)`을 채택하고 있어 기존의 쓰레드/쓰레드Pool를 활용하는 방식보다 더 가볍고 빠른 특성을 지니고 있다 한다. 

# G(Goroutine)-M(Machine)-P(Processor) Model 


## Goroutine

```golang
type g struct {
    
  stack       stack   //  Describes the real stack memory , Including upper and lower bounds 
  ............. //  There are many parts in the middle 
  m              *m     //  At present G The binding of m
  sched          gobuf   // goroutine When switching , Used to hold g The context of  
  param          unsafe.Pointer //  Used to pass parameters , Rest during sleep goroutine You can set param, When waking up goroutine Can get 
  atomicstatus   uint32
  stackLock      uint32 
  goid           int64  // goroutine Of ID
  waitsince      int64 // g The general time of being blocked 
  lockedm        *m     // G Locked in here m Up operation 
  ............. //  Omit 
}
```
```golang
type gobuf struct {
    
	//  preservation CPU Of rsp Register value 
	sp   uintptr
	//  preservation CPU Of rip Register value 
	pc   uintptr
	//  Record this gobuf The object belongs to that g
	g    guintptr
	ctxt unsafe.Pointer
	ret  sys.Uintreg
	lr   uintptr
	bp   uintptr // for framepointer-enabled architectures
}
```

## M

```golang

type m struct {
    
    g0      *g     //  With scheduling stack goroutine

    gsignal       *g         //  Signal processing goroutine
    tls           [6]uintptr // thread-local storage
    mstartfn      func()
    curg          *g       //  Currently running goroutine
    caughtsig     guintptr 
    p             puintptr //  The associated p And implemented go Code 
    nextp         puintptr
    id            int32
    mallocing     int32 //  state 

    spinning      bool // m whether out of work
    blocked       bool // m Blocked or not 
    inwb          bool // m Is a write mask being performed 
}
```


## P

```golang
lock mutex{

    id          int32
    status      uint32 //  state , It can be for pidle/prunning/...
    link        puintptr
    schedtick   uint32     //  Add once per dispatch 1
    syscalltick uint32     //  Add... To every system call 1
    sysmontick  sysmontick 
    m           muintptr   //  The associated m
    mcache      *mcache
    racectx     uintptr

    goidcache    uint64 // goroutine Of ID The cache of 
    goidcacheend uint64

  
    runqhead uint32 //  Head 
    runqtail uint32 //  The tail 
    //  The queue is here 
    runq     [256]guintptr   //  Operational goroutine Queues 

    runnext guintptr //  Next running g
}
```


추가사항: https://www.mo4tech.com/golang-gmp-model-for-concurrent-scheduling.html
https://velog.io/@cafefarm-johnny/concurrency-component
https://segmentfault.com/a/1190000040092613/en
https://go.dev/tour/concurrency/1