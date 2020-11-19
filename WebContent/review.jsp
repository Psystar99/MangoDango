<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <div id="all">
        <header>
            <a href="#"><img src="logo.png" alt="로고"></a> <!--  로고 부분-->
            <div id = "search">
              <a href="#"><img src="search.png" alt="검색"></a>
              <label>
                <input type="text">맛집 검색</input>
              </label>
            </div>
            <!--  망고플레이트에서는 로고,검색,메뉴,마이페이지 버튼 순으로 윗 부분이 정렬된다.-->
            <ul class="menu">
                <li><a href="#"></a>
                <ul class="submenu"><!--  메뉴에 마우스 올리면 서브 메뉴-->
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
                </li>
                <li><a href="#"></a>
                <ul class="submenu">
                    <li><a href="#"></a></li>
                    <li><a href="#"></a></li>
                </ul>
                </li>
            </ul>
        </header>
        <div id="contents">
          <div id="information">
            <div class= "hd_information">
              <span class="title">
                <h1>하이디라오</h1>
                <strong class="rate-point">
                  <span>4.2</span>
                </strong>
              </span>
              <div class="like_button">
                <button></button>
                <p>좋아요</p>
              </div>
            </div>
            <hr>
            <section class="wr_information">
              <div class="tb">
                    <table>
                        <tr>
                            <th>주소</th>
                            <td>
                              서울특별시 서초구 서초대로77길 54 W-TOWER
                              <br>
                              <span>지번</span>
                              <span>서울시 서초구 서초동 1303-37 W-TOWER</span>
                            </td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td>02-533-8260</td>
                        </tr>
                        <tr>
                            <th>음식 종류</th>
                            <td>중식</td>
                        </tr>
                        <tr>
                            <th>영업시간</th>
                            <td>10:00 - 09:00</td>
                        </tr>
                    </table>
                </div>
            </section>
            <section class="map">
            </section>
          </div>
          <div id="review">
            <div class = "review_title">
            </div>
            <div class ="tb">
            </div>
          </div>
        </div>
        <footer>
          <ul class="icons">
                     <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                     <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                     <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                     <li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
                     <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
               </ul>
          <div class="both"></div>
            <pre>주소 : 서울특별시 중구  동국대학교 | 고객센터 : 02-2260-3114
            내비게이션 주소 : 서울특별시 중구 필동로 1길30
            COPYRIGHT(C) 2020 Mango plate. ALL RIGHTS RESERVED.
            </pre>
          </div>
        </footer>    
    </div>
    <script src="C:\Users\SAMSUNG\Desktop\팀플\javascript.js"></script>
</body>
</html>