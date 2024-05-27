# pathorder_app
kdit4-green Final Project Team 3

# Pathorder App Project

# 앱소개
커피 구매 앱으로 자신과 가까운 거리에 있는 카페들을 조회하고 구매, 결제까지 할 수 있는 커피 구매 앱
# 시연영상
<b>APP 시연 영상</b> <br>
[![Video Label](https://github.com/9oj0e/pathorder_app/assets/153582126/6918a473-cc4b-4290-9567-9521c525a65d)](https://www.youtube.com/watch?v=P4SWClE4wd8)
<br>
<b>Web 시연 영상</b> <br>
[![Video Label](https://github.com/9oj0e/pathorder_app/assets/153582126/543f2a78-aafc-477a-90c7-4ec85b71d8e6)](https://www.youtube.com/watch?v=1SRf4YaUzlU)
# 발표자료

# 프로젝트 기간
2024.04.17 ~ 2024.05.22
# 팀원 소개
### 팀장
- 조정현 [(@9oj0e)](https://github.com/9oj0e)
### Front-End- 
- 박찬혁 [(@cowcat0722)](https://github.com/cowcat0722)
- 최윤정 [(@yunchocopie)](https://github.com/yunchocopie)
### Back-End
- 장현정 [(@Hyeonjeong-JANG)](https://github.com/Hyeonjeong-JANG)
- 김성재 [(@kimsjae)](https://github.com/kimsjae)
# 기술 스택
## IDE
<img src="https://img.shields.io/badge/IntelliJ IDEA-000000?style=for-the-badge&logo=intellijidea&logoColor=white"> <img src="https://img.shields.io/badge/Android Studio-34A853?style=for-the-badge&logo=android&logoColor=white">
## FrameWork
<img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"> <img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">
## DB
<img src="https://img.shields.io/badge/h2-000000?style=for-the-badge&logoColor=white"> <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
## 사용기술
### Front-End
<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"> <img src="https://img.shields.io/badge/RiverPod-02569B?style=for-the-badge&logo=flutter&logoColor=white">

### Back-End
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white">

## 협업 툴
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/Notioin-000000?style=for-the-badge&logo=notion&logoColor=white"> <img src="https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white">
## ERD
### One
![66nRBpTgKcAaMdHiq](https://github.com/9oj0e/pathorder_app/assets/129649095/617089f0-a2b4-44a3-ae25-228c0ab848b7)
# 전략
- 플러터에서 통신을 하면서 앱이 느려지는 경우가 발생을 해서 최대한 통신을 줄이기 위한 전략 적용.
- 플러터에서 주문 하기 페이지로 이동 시 모든 메뉴를 불러오는 통신을 하기 때문에 따로 검색 통신을 한번 더 하는 것은 비효율 적이라고 생각하여 통신한 데이터들을 필터링하는 방식 사용.
- 장바구니에 음료를 담을 때 통신을 하지 않고 플러터 쪽에서 주문하기에 필요한 주문 데이터를 저장하는 'SessionCart' 클래스를 생성하여 장바구니 관리함.
- 지도 카메라 위치 변경 이벤트는 초당 수십번의 통신 요청을 함 -> 이것을 효율적으로 처리하기 위해 Timer를 이용해서 간단하게 디바운싱코드를 구현하여 적용.

=> 이러한 전략들을 구현함으로써 저희는 애플리케이션이 불필요한 네트워크 통신을 줄이고 그로인한 사용자 경험을 향상시킬 수 있도록 노력함.

# 시나리오
## 회원가입
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/2d1d63ea-d0db-4b04-afff-fe5d392ca4eb)

## 로그인
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/66f8bf4c-5747-474d-a0cc-7533b8efe876)

## 메인화면
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/db0c1451-2dc4-4f84-a2ba-e1720dabfc72)
## 프로필
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/141cb426-9858-498c-8b50-068cb4c960e5)

## 프로필 사진 등록
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/ad32a4da-751d-43cc-b551-a67870acf04d)

![Screenshot_1](https://github.com/9oj0e/pathorder_app/assets/129649095/07d90eff-f317-4b71-9f9f-0adc5c4f68b0)
![Screenshot_2](https://github.com/9oj0e/pathorder_app/assets/129649095/3d7e785f-54fb-44fa-be6d-b2afc860fffb)

## 가까이 있는 매장
![Screenshot_3](https://github.com/9oj0e/pathorder_app/assets/129649095/deb26dd4-c342-4ca0-a86a-2ef33f821741)

## 지도
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/58c9fd8e-b337-4792-ac72-11742529c774)

## 주문하기
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/9e2a8a6c-852e-475f-b91a-c117fa42eb86)
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/bee724f3-1eb1-490a-b801-d619f7d8a587)

## 메뉴 검색기능
![Screenshot_6](https://github.com/9oj0e/pathorder_app/assets/129649095/6b506e5b-0ec9-4da8-997d-fc78b2639e62)

## 결제하기
![Screenshot_7](https://github.com/9oj0e/pathorder_app/assets/129649095/399bb7e4-ce33-4e02-9de1-81aca9f99f7a)
![Screenshot_8](https://github.com/9oj0e/pathorder_app/assets/129649095/167154c5-a973-4a1d-a0ef-c3e15d7a5770)

## 주문내역 보기
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/6f62a340-1902-4b40-9a02-35443ee6b1c9)

## 후기 작성
![image_720](https://github.com/9oj0e/pathorder_app/assets/129649095/55bc7bf9-6f3f-4000-8b59-fa51bd72e095)

## 관심매장 등록
![Screenshot_4](https://github.com/9oj0e/pathorder_app/assets/129649095/bb9cb459-10ab-478c-bbd8-a58ddc3a12f2)
![Screenshot_5](https://github.com/9oj0e/pathorder_app/assets/129649095/7d66f572-4d3b-4429-8096-e86a3ebb790b)


