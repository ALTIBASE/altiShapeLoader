<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [altiShapeLoader User's Manual](#altishapeloader-users-manual)
  - [서문](#%EC%84%9C%EB%AC%B8)
    - [이 매뉴얼에 대하여](#%EC%9D%B4-%EB%A7%A4%EB%89%B4%EC%96%BC%EC%97%90-%EB%8C%80%ED%95%98%EC%97%AC)
  - [1.altiShapeLoader 소개](#1altishapeloader-%EC%86%8C%EA%B0%9C)
    - [개요](#%EA%B0%9C%EC%9A%94)
    - [시스템 요구 사항](#%EC%8B%9C%EC%8A%A4%ED%85%9C-%EC%9A%94%EA%B5%AC-%EC%82%AC%ED%95%AD)
    - [설치 및 제거](#%EC%84%A4%EC%B9%98-%EB%B0%8F-%EC%A0%9C%EA%B1%B0)
  - [2.altiShapeLoader 시작하기](#2altishapeloader-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0)
    - [필수 입력정보](#%ED%95%84%EC%88%98-%EC%9E%85%EB%A0%A5%EC%A0%95%EB%B3%B4)
    - [Import](#import)
    - [Export](#export)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


Altibase® Tools & Utilities

altiShapeLoader User's Manual
==============================

![](media/altiShapeLoader/e5cfb3761673686d093a3b00c062fe7a.png)



altiShapeLoader User's Manual

Release 0.1

Copyright ⓒ 2001\~2019 Altibase Corp. All Rights Reserved.

본 문서의 저작권은 ㈜알티베이스에 있습니다. 이 문서에 대하여 당사의 동의 없이
무단으로 복제 또는 전용할 수 없습니다.

**㈜알티베이스**

08378 서울시 구로구 디지털로 306 대륭포스트타워Ⅱ 10층

전화: 02-2082-1114 팩스: 02-2082-1099

고객서비스포털: <http://support.altibase.com>

homepage: [http://www.altibase.com](http://www.altibase.com/)



서문
----

### 이 매뉴얼에 대하여

이 매뉴얼은 Altibase에 shapefile을 import/export 하는 방법을 기술한다.

#### 대상 사용자

이 매뉴얼은 다음과 같은 Altibase 사용자를 대상으로 작성되었다.

-   데이터베이스 관리자

-   성능 관리자

-   데이터베이스 사용자

-   응용 프로그램 개발자

-   기술지원부

다음과 같은 배경 지식을 가지고 이 매뉴얼을 읽는 것이 좋다.

-   컴퓨터, 운영 체제 및 운영 체제 유틸리티 운용에 필요한 기본 지식

-   관계형 데이터베이스 사용 경험 또는 데이터베이스 개념에 대한 이해

-   컴퓨터 프로그래밍 경험

-   데이터베이스 서버 관리, 운영 체제 관리 또는 네트워크 관리 경험

#### 이 매뉴얼의 구성

이 매뉴얼은 다음과 같이 구성되어 있다.

-   제 1장 altiShapeLoader 소개  
    이 장은altiShapeLoader를 사용하고자 하는 사용자들을 위해 그 기능과 설치
    방법을 소개한다.

-   제 2장 altiShapeLoader  시작하기  
    이 장은 altiShapeLoader  효율적으로 원활하게 실행하는 데 도움이 되는 기본
    개념을 소개하고,명령어 인터페이스(CLI) 모드 사용법을 간단하게 설명한다.
    


#### 문서화 규칙

이 절에서는 이 매뉴얼에서 사용하는 규칙에 대해 설명한다. 이 규칙을 이해하면 이
매뉴얼과 설명서 세트의 다른 매뉴얼에서 정보를 쉽게 찾을 수 있다.

여기서 설명하는 규칙은 다음과 같다.

-   구문 다이어그램

-   샘플 코드 규칙

##### 구문 다이어그램

이 매뉴얼에서는 다음 구성 요소로 구축된 다이어그램을 사용하여, 명령문의 구문을
설명한다.

| 구성 요소                                   | 의미                                                         |
| ------------------------------------------- | ------------------------------------------------------------ |
| ![image1](media/altiShapeLoader/image1.gif) | 명령문이 시작한다. 완전한 명령문이 아닌 구문 요소는 화살표로 시작한다. |
| ![image2](media/altiShapeLoader/image2.gif) | 명령문이 다음 라인에 계속된다. 완전한 명령문이 아닌 구문 요소는 이 기호로 종료한다. |
| ![image3](media/altiShapeLoader/image3.gif) | 명령문이 이전 라인으로부터 계속된다. 완전한 명령문이 아닌 구문 요소는 이 기호로 시작한다. |
| ![image4](media/altiShapeLoader/image4.gif) | 명령문이 종료한다.                                           |
| ![](media/altiShapeLoader/image5.gif)       | 필수 항목                                                    |
| ![](media/altiShapeLoader/image6.gif)       | 선택적 항목                                                  |
| ![](media/altiShapeLoader/image7.gif)       | 선택사항이 있는 필수 항목. 한 항목만 제공해야 한다.          |
| ![](media/altiShapeLoader/image8.gif)       | 선택사항이 있는 선택적 항목                                  |
| ![](media/altiShapeLoader/image9.gif)       | 선택적 항목. 여러 항목이 허용된다. 각 반복 앞부분에 콤마가 와야 한다. |

##### 샘플 코드 규칙

코드 예제는 SQL, Stored Procedure, iSQL 또는 다른 명령 라인 구문들을 예를 들어
설명한다.

아래 테이블은 코드 예제에서 사용된 인쇄 규칙에 대해 설명한다.

| 규칙         | 의미                                                                                | 예제                                                                                                         |
|--------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| [ ]          | 선택 항목을 표시                                                                    | VARCHAR [(*size*)] [[FIXED \|] VARIABLE]                                                                     |
| { }          | 필수 항목 표시. 반드시 하나 이상을 선택해야 되는 표시                               | { ENABLE \| DISABLE \| COMPILE }                                                                             |
| \|           | 선택 또는 필수 항목 표시의 인자 구분 표시                                           | { ENABLE \| DISABLE \| COMPILE } [ ENABLE \| DISABLE \| COMPILE ]                                            |
| . . .        | 그 이전 인자의 반복 표시 예제 코드들의 생략되는 것을 표시                           | SQL\> SELECT ename FROM employee; ENAME  ----------------------- SWNO  HJNO  HSCHOI  . . . 20 rows selected. |
| 그 밖에 기호 | 위에서 보여진 기호 이 외에 기호들                                                   | EXEC :p1 := 1; acc NUMBER(11,2);                                                                             |
| 기울임 꼴    | 구문 요소에서 사용자가 지정해야 하는 변수, 특수한 값을 제공해야만 하는 위치         | SELECT \* FROM *table_name*; CONNECT *userID*/*password*;                                                    |
| 소문자       | 사용자가 제공하는 프로그램의 요소들, 예를 들어 테이블 이름, 칼럼 이름, 파일 이름 등 | SELECT ename FROM employee;                                                                                  |
| 대문자       | 시스템에서 제공하는 요소들 또는 구문에 나타나는 키워드                              | DESC SYSTEM_.SYS_INDICES_;                                                                                   |

#### 관련 자료

자세한 정보를 위하여 Altibase의 다음 문서 목록을 참조한다.

-   Installation Guide

-   Getting Started Guide

-   Administrator’s Manual

-   Replication Manual

-   Precompiler User’s Manual

-   API User’s Manual

-   Altibase C Interface Manual

-   iSQL User’s Manual

-   Utilities Manual

-   General Reference

-   Error Message Reference

#### Altibase는 여러분의 의견을 환영합니다.

이 매뉴얼에 대한 여러분의 의견을 보내주시기 바랍니다. 사용자의 의견은 다음
버전의 매뉴얼을 작성하는데 많은 도움이 됩니다. 보내실 때에는 아래 내용과 함께
고객서비스포털(http://support.altibase.com/kr/ )로 보내주시기 바랍니다.

-   사용 중인 매뉴얼의 이름과 버전

-   매뉴얼에 대한 의견

-   사용자의 성함, 주소, 전화번호

이 외에도 Altibase 기술지원 설명서의 오류와 누락된 부분 및 기타 기술적인
문제들에 대해서 이 주소로 보내주시면 정성껏 처리하겠습니다. 또한, 기술적인
부분과 관련하여 즉각적인 도움이 필요한 경우에도 고객서비스포털을 통해 서비스를
요청하시기 바랍니다.

여러분의 의견에 항상 감사드립니다.




1.altiShapeLoader 소개
---------------------

이 장은 altiShapeLoader의 특징을 이해하고자 하는 사용자에게 이 도구를 소개하고 설치하는 방법을 설명한다. 이 장은 다음의 절로 구성된다.

-   개요
-   시스템 요구 사항
-   설치 및 제거



### 개요

altiShapeLoader는 손쉽게 shapefile을 알티베이스 데이터베이스로 import/export 하기 위한 도구이다. 



### 시스템 요구 사항

이 절은 altiShapeLoader를 설치하고 실행하기 위해 필요한 시스템 사양에 대해 설명하고, altiShapeLoader와 호환되는 데이터베이스 관리 시스템을 열거한다.

-   하드웨어 요구 사항
-   소프트웨어 요구 사항
-   호환되는 데이터베이스 시스템

#### 하드웨어 요구 사항

-   CPU: 800MHz 펜티엄 III 이상
-   메인 메모리: 4GB 이상
-   디스크: 30MB 이상의 설치 여유 공간

#### 소프트웨어 요구 사항

-   4GB 이상의 메인 메모리를 다룰 수 있는 64bit OS
-   Oracle 또는 IBM Java 7, 8

#### 호환 가능한 Altibase 버젼

-   Altibase7.1.0 이상 버전



### 설치 및 제거

altiShapeLoader 설치는 압축을 풀기만 하면 된다. 압축을 풀어서 생긴 디렉토리안에는 altiShapeLoader.sh를 포함해서 jar 파일들이 존재한다. 이 폴더를 원하는 위치로 옮긴다. 이제 altiShapeLoader를 사용할 준비가 되었다.

altiShapeLoader를 제거하려면, altiShapeLoader가 설치되어 있는 디렉토리를 삭제하기만 하면 된다.



2.altiShapeLoader 시작하기
-------------------------

이 장은 altiShapeLoader를 사용하는 방법과 옵션을 간략하게 설명한다. 

-   선행조건
-   Import
-   Export

### 선행조건

altiShapeLoader를 구동하기 위해 필수 패키지 및 및 사용자 권한이 반드시 만족되어야 한다.

1. SYS 사용자가 SYS_SPATIAL 패키지를 미리 설치해야 한다. SYS_SPATIAL.ADD_SPATIAL_REF_SYS 프로시저가 있어야 SPATIAL_REF_SYS에 SRID 값 추가가 가능하다. 
2. altiShapeLoader에 입력하는 데이터베이스 사용자는 EXECUTE ANY PROCEDURE 권한을 부여받아야 한다. SYS_SPATIAL.ADD_SPATIAL_REF_SYS 프로시저를 수행하기 위해 필요한 권한이다.

#### DB 접속 정보

필수 정보를 입력하지 않으면, altiShapeLoader 구동이 실패한다.

DB 접속 정보는 알티베이스에 접속하기 위한 정보이다. 대부분 필수이나, 'd' 옵션은 예외적으로 선택값이다.

| 옵션 | 의미                                                    |
| ---- | ------------------------------------------------------- |
| s    | 데이터베이스가 구동되는 장비의 호스트 이름 또는 IP 주소 |
| port | 데이터베이스의 포트 번호                                |
| d    | 데이터베이스 이름. 입력하지 않으면 mydb가 자동 입력     |
| u    | 데이터베이스에 접속할 사용자 ID                         |
| p    | 사용자 ID와 일치하는 암호                               |
| j    | 접속에 사용할 JDBC path (e.g. ./Altibase.jar)           |

#### altiShapeLoader 필수 입력 정보

| 옵션 | 의미                                 |
| ---- | ------------------------------------ |
| o    | Operation 종류 \[import\|export\]    |
| t    | 대상 테이블 이름 (대소문자 구분)     |
| f    | 대상 shape file path (대소문자 구분) |

### Import

Import는 shapefile(shp, shx, dbf)의 공간 정보를 데이터베이스로 옮기기 위한 기능이다.

#### import 예제

```
% altiShapeLoader.sh -o import -s 127.0.0.1 -port 20300 -u SYS -p manager 
-j ./Altibase.jar -t POLICESTATION -f ./policestation.shp
-----------------------------------------------------------------
     altiShapeLoader Release 0.1
	 Shapefile import/export utility for Altibase datatbase
     Copyright 2000, ALTIBASE Corporation or its subsidiaries.
     All Rights Reserved.
-----------------------------------------------------------------
Import requested: file:/home/chkim/temp/altiShapeLoader/policestation.shp
<started>
[CREATE TABLE started] CREATE TABLE "POLICESTATION" ( "THE_GEOM" GEOMETRY(32000), 
"NAM" VARCHAR(50), "ADDR" VARCHAR(254), "TEL" VARCHAR(20), "FAX" VARCHAR(20) )
[CREATE TABLE done]
.
<finished>
<summary>
[File  ] file:/home/chkim/temp/altiShapeLoader/policestation.shp
[Status] [Read] Success, [Write] Success
[Read  ] Total:32, Success:32, Fail:0
[Write ] Total:32, Success:32, Fail:0
[Time  ] 0:00:00.242

```
위 예제는 127.0.0.1:20300에 설치된 알티베이스에 SYS 계정으로 접속하여, policestation.shp파일 내용을 POLICESTATION 테이블에 import 하는 명령이다.

<started>와 <finished> 사이의 점(dot)은 레코드 1,000개가 DB에 입력될 때마다 출력된다. 본 예제에서는 32개이기 때문에 1개가 출력되었다.

수행 결과는 <summary>에 출력된다.
1. [Status] [Read] Success, [Write] Success: 파일 읽기 및 DB insert 모두 성공적으로 수행되었다.
2. [Read  ] Total:32, Success:32, Fail:0 32개의 데이터를 성공적으로 읽었다. 
3. [Write ] Total:32, Success:32, Fail:0 읽은 32개의 데이터를 오류없이 DB에 입력하였다. 
4. [Time  ] 0:00:00.242: 총 소요시간은 hh:mm:ss.sss 형식으로 출력된다.

import 선택 옵션을 입력하여 인덱스 생성여부 등 추가작업과 성능을 조정할 수 있다.

#### import 선택 옵션
미입력시 기본값이 사용된다.
| 옵션           | 의미                                                         | 기본값  |
| -------------- | ------------------------------------------------------------ | ------- |
| dbf_char       | DBF 파일의 character set                                     | KSC5601 |
| create_table   | 테이블 생성여부 \[ T\|F \]                                   | T       |
| create_index   | 테이블 생성시 index 생성 여부                                | F       |
| geo_col_size   | 테이블 생성시 geometry column의 크기                         | 32000   |
| endian         | shape file의 endian 종류 \[ B\|L \]                          | B       |
| parallel       | DB insert thread 갯수                                        | 4       |
| commit         | Batch insert commit 레코드 갯수                              | 1000    |
| case_sensitive | 테이블/컬럼 이름 대소문자 구분 여부. 'F'이면 모두 대문자 처리. | F       |

### Export

Export 데이터베이스의 공간 정보를 테이블로부터 shapefile로 옮기기 위한 기능이다.

#### export 예제
```
% altiShapeLoader.sh -o export -s 127.0.0.1 -port 20300 -u SYS -p manager 
-j ./Altibase.jar -t POLICESTATION -f ./policestation2.shp
-----------------------------------------------------------------
     altiShapeLoader Release 0.1
	 Shapefile import/export utility for Altibase datatbase
     Copyright 2000, ALTIBASE Corporation or its subsidiaries.
     All Rights Reserved.
-----------------------------------------------------------------
Export requested: file:/home/chkim/temp/altiShapeLoader/policestation2.shp
<started>
May 28, 2020 3:15:52 PM org.geotools.data.shapefile.ShapefileDataStore createSchema
WARNING: PRJ file not generated for null CoordinateReferenceSystem
<commit started>
.
<finished>
<summary>
[File  ]file:/home/chkim/temp/altiShapeLoader/policestation2.shp
[Status] [Read] Success, [Write] Success
[Read  ] Total:32, Success:32, Fail:0
[Write ] Total:32, Success:32, Fail:0
[Time  ] 0:00:00.482

```
위 예제는 127.0.0.1:20300에 설치된 알티베이스에 SYS계정으로 접속하여, POLICESTATION 테이블의 내용을 policestation2.shp파일로 export 하기 위한 명령이다.

"WARNING: PRJ file not generated for null CoordinateReferenceSystem"은 altiShapeLoader에 미구현된 기능으로 인해 prj 파일을 만들지 않는다는 경고문
이다. 추후 기능 구현예정이다.

<commit started>와 <finished> 사이의 점(dot)은 레코드 1,000개를 파일에 쓸 때마다 출력된다. 본 예제에서는 32개이기 때문에 1개가 출력되었다.

수행 결과는 <summary>에 출력된다.
1. [Status] [Read] Success, [Write] Success: DB fetch 및 파일기록 모두 성공적으로 수행되었다.
2. [Read  ] Total:32, Success:32, Fail:0 DB로부터 32개의 데이터를 성공적으로 읽었다. 
3. [Write ] Total:32, Success:32, Fail:0 읽은 32개의 데이터를 shapefile에 오류없이 기록하였다. 
4. [Time  ] 0:00:00.482: 총 소요시간은 hh:mm:ss.sss 형식으로 출력된다.

export는 별도의 선택 옵션을 제공하지 않는다.

### SRID

Spatial Reference Identifier (SRID) 또는 Coordinate Reference System (CRS)는 공간 정보 객체의 위치를 표현하기 위한 좌표계 시스템이다. Spatial Reference System Identifier (SRID)는 좌표계 시스템을 표현하는 고유한 값이다.  shp 파일의 SRID는 prj 파일에 기록된다.

altiShapeLoader 제약점은 EPSG의 SRID만 다룰 수 있으며 그외 SRID는 Invalid SRID(0)으로 처리된다.

altiShapeLoader로 import/export 된 공간정보 데이터의 메타 값은 공간정보 테이블의 메타 정보인 GEOMETRY_COLUMNS과 SRID 메타 정보를 관리하는 SPATIAL_REF_SYS에서 확인할 수 있다. 알티베이스 공간정보 시스템 상세 내용은 SpatialSQL.md를 참조한다.

#### import

prj 파일이 shp 파일과 같은 경로에 있으면, import 작업 수행시 자동 참조하여 알티베이스 메타 데이터인 GEOMETRY_COLUMNS에 입력된다.  prj 파일이 없는 shp파일의 SRID는 Invalid SRID(0)으로 취급되어, GEOMETRY_COLUMNS에 SRID 0으로 입력된다.

SRID 값이 0 (invalid)이면 SPATIAL_REF_SYS에 입력되지 않으며, 0보다 크고 등록되지 않은 SRID이면 SPATIAL_REF_SYS에 입력된다. 기존 SRID와 충돌을 고려하여 SPATIAL_REF_SYS에 등록된 SRID 정보 업데이트는 지원하지 않는다.

#### export

export 작업을 수행하면 shp 파일 경로에 prj 파일도 함께 생성된다. Invalid SRID이면 크기가 0인 prj 파일이 생성되며, Valid한 SRID이면 SR Text형태의 prj 파일이 생성된다.
