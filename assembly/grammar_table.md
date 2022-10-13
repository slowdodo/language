|                     니모닉                    	|                           간단한 설명                          	|             페이지             	| 아키텍처[1] 	|
|:---------------------------------------------:	|:--------------------------------------------------------------:	|:------------------------------:	|:-----------:	|
| ADC, ADD                                      	| carry 포함 더하기, 더하기                                      	| ADD, SUB, RSB, ADC, SBC 및 RSC 	| 모두        	|
| ADR                                           	| 프로그램 또는 레지스터 기준 주소 로드(짧은 범위)               	| ADR                            	| 모두        	|
| ADRL 의사 명령어                              	| 프로그램 또는 레지스터 기준 주소 로드(중간 범위)               	| ADRL 의사 명령어               	| x6M         	|
| AND                                           	| 논리 AND                                                       	| AND, ORR, EOR, BIC 및 ORN      	| 모두        	|
| ASR                                           	| 오른쪽으로 산술 시프트                                         	| ASR, LSL, LSR, ROR 및 RRX      	| 모두        	|
| B                                             	| 분기                                                           	| B, BL, BX, BLX 및 BXJ          	| 모두        	|
| BFC, BFI                                      	| 비트 필드 지우기 및 삽입                                       	| BFC 및 BFI                     	| T2          	|
| BIC                                           	| 비트 지우기                                                    	| AND, ORR, EOR, BIC 및 ORN      	| 모두        	|
| BKPT                                          	| 브레이크포인트                                                 	| BKPT                           	| 5           	|
| BL                                            	| 링크 포함 분기                                                 	| B, BL, BX, BLX 및 BXJ          	| 모두        	|
| BLX                                           	| 링크 포함 분기 및 변경 명령어 세트                             	| B, BL, BX, BLX 및 BXJ          	| T           	|
| BX                                            	| 분기, 변경 명령어 세트                                         	| B, BL, BX, BLX 및 BXJ          	| T           	|
| BXJ                                           	| 분기, Jazelle로 변경                                           	| B, BL, BX, BLX 및 BXJ          	| J, x7M      	|
| CBZ, CBNZ                                     	| 0인 경우(0이 아닌 경우) 비교 및 분기                           	| CBZ 및 CBNZ                    	| T2          	|
| CDP                                           	| 보조 프로세서 데이터 처리 연산                                 	| CDP 및 CDP2                    	| x6M         	|
| CDP2                                          	| 보조 프로세서 데이터 처리 연산                                 	| CDP 및 CDP2                    	| 5, x6M      	|
| CHKA                                          	| 배열 검사                                                      	| CHKA                           	| EE          	|
| CLREX                                         	| 단독 지우기                                                    	| CLREX                          	| K, x6M      	|
| CLZ                                           	| 선행 0 수 계산                                                 	| CLZ                            	| 5, x6M      	|
| CMN, CMP                                      	| 음수 비교, 비교                                                	| CMP 및 CMN                     	| 모두        	|
| CPS                                           	| 프로세서 상태 변경                                             	| CPS                            	| 6           	|
| CPY                                           	| 복사                                                           	| MOV 및 MVN                     	| 6           	|
| DBG                                           	| 디버그                                                         	| DBG, DMB, DSB 및 ISB           	| 7           	|
| DMB, DSB                                      	| 데이터 메모리 장벽, 데이터 동기화 장벽                         	| DBG, DMB, DSB 및 ISB           	| 7, 6M       	|
| ENTERX, LEAVEX                                	| ThumbEE로 또는 ThumbEE에서 상태 변경                           	| ENTERX 및 LEAVEX               	| EE          	|
| EOR                                           	| 배타적 OR                                                      	| AND, ORR, EOR, BIC 및 ORN      	| 모두        	|
| HB, HBL, HBLP, HBP                            	| 처리기 분기, 지정된 처리기로 분기                              	| HB, HBL, HBLP 및 HBP           	| EE          	|
| ISB                                           	| 명령어 동기화 장벽                                             	| DBG, DMB, DSB 및 ISB           	| 7, 6M       	|
| IT                                            	| If-Then                                                        	| IT                             	| T2          	|
| LDC                                           	| 보조 프로세서 로드                                             	| LDC, LDC2, STC 및 STC2         	| x6M         	|
| LDC2                                          	| 보조 프로세서 로드                                             	| LDC, LDC2, STC 및 STC2         	| 5, x6M      	|
| LDM                                           	| 다중 레지스터 로드                                             	| LDM 및 STM                     	| 모두        	|
| LDR                                           	| 레지스터 로드 명령어                                           	| 메모리 액세스 명령어           	| 모두        	|
| LDR 의사 명령어                               	| 레지스터 로드 의사 명령어                                      	| LDR 의사 명령어                	| 모두        	|
| LDREX                                         	| 단독 레지스터 로드                                             	| LDREX 및 STREX                 	| 6, x6M      	|
| LDREXB, LDREXH                                	| 바이트 및 하프워드 단독 레지스터 로드                          	| LDREX 및 STREX                 	| K, x6M      	|
| LDREXD                                        	| 더블워드 단독 레지스터 로드                                    	| LDREX 및 STREX                 	| K, x7M      	|
| LSL, LSR                                      	| 왼쪽으로 논리 시프트, 오른쪽으로 논리 시프트                   	| ASR, LSL, LSR, ROR 및 RRX      	| 모두        	|
| MAR                                           	| 레지스터에서 40비트 누산기로 이동                              	| MAR 및 MRA                     	| XScale      	|
| MCR                                           	| 레지스터에서 보조 프로세서로 이동                              	| MCR, MCR2, MCRR 및 MCRR2       	| x6M         	|
| MCR2                                          	| 레지스터에서 보조 프로세서로 이동                              	| MCR, MCR2, MCRR 및 MCRR2       	| 5, x6M      	|
| MCRR                                          	| 여러 레지스터에서 보조 프로세서로 이동                         	| MCR, MCR2, MCRR 및 MCRR2       	| 5E, x6M     	|
| MCRR2                                         	| 여러 레지스터에서 보조 프로세서로 이동                         	| MCR, MCR2, MCRR 및 MCRR2       	| 6, x6M      	|
| MIA, MIAPH, MIAxy                             	| 내부 40비트 누산으로 곱하기                                    	| MIA, MIAPH 및 MIAxy            	| XScale      	|
| MLA                                           	| 곱하기 누산                                                    	| MUL, MLA 및 MLS                	| x6M         	|
| MLS                                           	| 곱하기 및 빼기                                                 	| MUL, MLA 및 MLS                	| T2          	|
| MOV                                           	| 이동                                                           	| MOV 및 MVN                     	| 모두        	|
| MOVT                                          	| 맨 위로 이동                                                   	| MOVT                           	| T2          	|
| MOV32 의사 명령어                             	| 레지스터로 32비트 상수 이동                                    	| MOV32 의사 명령어              	| T2          	|
| MRA                                           	| 40비트 누산기에서 레지스터로 이동                              	| MAR 및 MRA                     	| XScale      	|
| MRC                                           	| 보조 프로세서에서 레지스터로 이동                              	| MRC, MRC2, MRRC 및 MRRC2       	| 모두        	|
| MRC2                                          	| 보조 프로세서에서 레지스터로 이동                              	| MRC, MRC2, MRRC 및 MRRC2       	| 5, x6M      	|
| MRS                                           	| PSR에서 레지스터로 이동                                        	| MRS                            	| 모두        	|
| MSR                                           	| 레지스터에서 PSR로 이동                                        	| MSR                            	| 모두        	|
| MUL                                           	| 곱하기                                                         	| MUL, MLA 및 MLS                	| 모두        	|
| MVN                                           	| 이동하지 않음                                                  	| MOV 및 MVN                     	| 모두        	|
| NOP                                           	| 연산 없음                                                      	| NOP, SEV, WFE, WFI 및 YIELD    	| 모두        	|
| ORN                                           	| 논리 OR NOT                                                    	| AND, ORR, EOR, BIC 및 ORN      	| T2          	|
| ORR                                           	| 논리 OR                                                        	| AND, ORR, EOR, BIC 및 ORN      	| 모두        	|
| PKHBT, PKHTB                                  	| 하프워드 패킹                                                  	| PKHBT 및 PKHTB                 	| 6, x7M      	|
| PLD                                           	| 데이터 사전 로드                                               	| PLD 및 PLI                     	| 5E, x6M     	|
| PLI                                           	| 사전 로드 명령어                                               	| PLD 및 PLI                     	| 7           	|
| PUSH, POP                                     	| 레지스터 푸시, 팝                                              	| PUSH 및 POP                    	| 모두        	|
| QADD, QDADD, QDSUB, QSUB                      	| 포화 산술                                                      	| QADD, QSUB, QDADD 및 QDSUB     	| 5E, x7M     	|
| QADD8, QADD16, QASX, QSUB8, QSUB16,QSAX       	| 병렬 부호 있는 포화 산술                                       	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| REV, REV16, REVSH                             	| 바이트 순서 반전                                               	| REV, REV16, REVSH 및 RBIT      	| 6           	|
| RBIT                                          	| 비트 반전                                                      	| REV, REV16, REVSH 및 RBIT      	| T2          	|
| RFE                                           	| 예외에서 복귀                                                  	| RFE                            	| T2, x7M     	|
| ROR                                           	| 레지스터를 오른쪽으로 회전                                     	| ASR, LSL, LSR, ROR 및 RRX      	| 모두        	|
| RSB                                           	| 역방향 빼기                                                    	| ADD, SUB, RSB, ADC, SBC 및 RSC 	| 모두        	|
| RSC                                           	| carry 포함 역방향 빼기                                         	| ADD, SUB, RSB, ADC, SBC 및 RSC 	| x6M         	|
| SBC                                           	| carry 포함 빼기                                                	| ADD, SUB, RSB, ADC, SBC 및 RSC 	| 모두        	|
| SADD8, SADD16, SASX                           	| 병렬 부호 있는 산술                                            	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| SBFX, UBFX                                    	| 부호 있는 및 부호 없는 비트 필드 추출                          	| SBFX 및 UBFX                   	| T2          	|
| SDIV                                          	| 부호 있는 나누기                                               	| SDIV 및 UDIV                   	| 7M, 7R      	|
| SEL                                           	| APSR GE 플래그에 따라 바이트 선택                              	| SEL                            	| 6, x7M      	|
| SEV                                           	| 이벤트 설정                                                    	| NOP, SEV, WFE, WFI 및 YIELD    	| K, 6M       	|
| SETEND                                        	| 메모리 액세스에 엔디안 설정                                    	| SETEND                         	| 6, x7M      	|
| SHADD8, SHADD16, SHASX, SHSUB8,SHSUB16, SHSAX 	| 병렬 부호 있는 양분 산술                                       	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| SMC                                           	| 보안 모니터 호출                                               	| SMC                            	| Z           	|
| SMLAD                                         	| 이중 부호 있는 곱하기 누산                                     	| SMLAD 및 SMLSD                 	| 6, x7M      	|
|                                               	| (32 <= 32 + 16 x 16 + 16 x 16)                                 	|                                	|             	|
| SMLAL                                         	| 부호 있는 곱하기 누산(64 <= 64 + 32 x 32)                      	| UMULL, UMLAL, SMULL 및 SMLAL   	| x6M         	|
| SMLALxy                                       	| 부호 있는 곱하기 누산(64 <= 64 + 16 x 16)                      	| SMLALxy                        	| 5E, x7M     	|
| SMLALD                                        	| long에 대한 이중 부호 있는 곱하기 누산                         	| SMLALD 및 SMLSLD               	| 6, x7M      	|
|                                               	| (64 <= 64 + 16 x 16 + 16 x 16)                                 	|                                	|             	|
| SMLSD                                         	| 이중 부호 있는 곱하기 빼기 누산                                	| SMLAD 및 SMLSD                 	| 6, x7M      	|
|                                               	| (32 <= 32 + 16 x 16 - 16 x 16)                                 	|                                	|             	|
| SMLSLD                                        	| long에 대한 이중 부호 있는 곱하기 빼기 누산                    	| SMLALD 및 SMLSLD               	| 6, x7M      	|
|                                               	| (64 <= 64 + 16 x 16 - 16 x 16)                                 	|                                	|             	|
| SMMUL                                         	| 부호 있는 상위 워드 곱하기(32 <= TopWord(32 x 32))             	| SMMUL, SMMLA 및 SMMLS          	| 6, x7M      	|
| SMUAD, SMUSD                                  	| 이중 부호 있는 곱하기 및 결과 더하기 또는 빼기                 	| SMUAD{X} 및 SMUSD{X}           	| 6, x7M      	|
| SMULL                                         	| 부호 있는 곱하기(64 <= 32 x 32)                                	| UMULL, UMLAL, SMULL 및 SMLAL   	| x6M         	|
| SMULxy                                        	| 부호 있는 곱하기(32 <= 16 x 16)                                	| SMULxy 및 SMLAxy               	| 5E, x7M     	|
| SMULWy                                        	| 부호 있는 곱하기(32 <= 32 x 16)                                	| SMULWy 및 SMLAWy               	| 5E, x7M     	|
| SRS                                           	| 반환 상태 저장                                                 	| SRS                            	| T2, x7M     	|
| SSAT                                          	| 부호 있는 포화                                                 	| SSAT 및 USAT                   	| 6, x6M      	|
| SSAT16                                        	| 부호 있는 포화, 병렬 하프워드                                  	| SSAT16 및 USAT16               	| 6, x7M      	|
| SSUB8, SSUB16, SSAX                           	| 병렬 부호 있는 산술                                            	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| STC                                           	| 보조 프로세서 저장                                             	| LDC, LDC2, STC 및 STC2         	| x6M         	|
| STC2                                          	| 보조 프로세서 저장                                             	| LDC, LDC2, STC 및 STC2         	| 5, x6M      	|
| STM                                           	| 다중 레지스터 저장                                             	| LDM 및 STM                     	| 모두        	|
| STR                                           	| 레지스터 저장 명령어                                           	| 메모리 액세스 명령어           	| 모두        	|
| STREX                                         	| 단독 레지스터 저장                                             	| LDREX 및 STREX                 	| 6, x6M      	|
| STREXB, STREXH                                	| 단독 레지스터 저장 바이트, 하프워드                            	| LDREX 및 STREX                 	| K, x6M      	|
| STREXD                                        	| 더블워드 단독 레지스터 저장                                    	| LDREX 및 STREX                 	| K, x7M      	|
| SUB                                           	| 빼기                                                           	| ADD, SUB, RSB, ADC, SBC 및 RSC 	| 모두        	|
| SUBS pc, LR                                   	| 스택 없이 예외에서 반환                                        	| SUBS pc, LR                    	| T2, x7M     	|
| SVC(이전 SWI)                                 	| 관리자 호출                                                    	| SVC                            	| 모두        	|
| SWP, SWPB                                     	| 레지스터와 메모리 스왑(ARM에만 해당)                           	| SWP 및 SWPB                    	| 모두, x7M   	|
| SXT                                           	| 부호 있는 확장                                                 	| SXT, SXTA, UXT 및 UXTA         	| 6           	|
| SXTA                                          	| 더하기 포함 부호 있는 확장                                     	| SXT, SXTA, UXT 및 UXTA         	| 6, x7M      	|
| TBB, TBH                                      	| 테이블 분기 바이트, 하프워드                                   	| TBB 및 TBH                     	| T2          	|
| TEQ, TST                                      	| 동등 테스트, 테스트                                            	| TST 및 TEQ                     	| 모두        	|
| UADD8, UADD16, UASX                           	| 병렬 부호 없는 산술                                            	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| UDIV                                          	| 부호 없는 나누기                                               	| SDIV 및 UDIV                   	| 7M, 7R      	|
| UHADD8, UHADD16, UHASX, UHSUB8,UHSUB16, UHSAX 	| 병렬 부호 없는 양분 산술                                       	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| UMAAL                                         	| long에 대한 부호 없는 곱하기 누산                              	| UMAAL                          	| 6, x7M      	|
|                                               	| (64 <= 32 + 32 + 32 x 32)                                      	|                                	|             	|
| UMLAL, UMULL                                  	| 부호 없는 곱하기 누산, 곱하기                                  	| UMULL, UMLAL, SMULL 및 SMLAL   	| x6M         	|
|                                               	| (64 <= 32 x 32 + 64), (64 <= 32 x 32)                          	|                                	|             	|
| UQADD8, UQADD16, UQASX, UQSUB8,UQSUB16, UQSAX 	| 병렬 부호 없는 포화 산술                                       	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| USAD8                                         	| 부호 없는 절대차의 합                                          	| USAD8 및 USADA8                	| 6, x7M      	|
| USADA8                                        	| 부호 없는 절대차의 합 누산                                     	| USAD8 및 USADA8                	| 6, x7M      	|
| USAT                                          	| 부호 없는 포화                                                 	| SSAT 및 USAT                   	| 6, x6M      	|
| USAT16                                        	| 부호 없는 포화, 병렬 하프워드                                  	| SSAT16 및 USAT16               	| 6, x7M      	|
| USUB8, USUB16, USAX                           	| 병렬 부호 없는 산술                                            	| 병렬 더하기 및 빼기            	| 6, x7M      	|
| UXT                                           	| 부호 없는 확장                                                 	| SXT, SXTA, UXT 및 UXTA         	| 6           	|
| UXTA                                          	| 더하기 포함 부호 없는 확장                                     	| SXT, SXTA, UXT 및 UXTA         	| 6, x7M      	|
| V*                                            	| 자세한 내용은 Chapter 5 NEON 및 VFP 프로그래밍을 참조하십시오. 	|                                	|             	|
| WFE, WFI, YIELD                               	| 이벤트 대기, 인터럽트 대기, 양도                               	| NOP, SEV, WFE, WFI 및 YIELD    	| T2, 6M      	|

출처: https://0xsaika.tistory.com/5
