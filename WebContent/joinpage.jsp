<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>맛집추천사이트 : 회원가입</title>
        <link rel="stylesheet" href="joinpage.css">
        <script>function registerCheckFunction(){
        	var userID=$('#id').val();
        	$.ajax({
        		type:'POST',
        		url:'./UserRegisterCheckServlet',
        		data:{userID : userID},
        		success : function(result){
        			if(result==1){//사용할 수 있는 경우
        				alert("DB함수에서 받아온값: "+result+" :아이디는 사용가능합니다");
        			}
        			else{
        				alert("DB함수에서 받아온값: "+result+" :다른 사람이 쓰는 중!");
        			}
        		
        		}
        	})
        }</script>
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <a href="우리 메인페이지" target="_blank" title="맛집추천사이트 메인"><img src="mainlogo.png" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">
          <form id="join_form" method="post" action="joinaction.jsp">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="userID" class="int" maxlength="20">
                    </span>
                    <button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복 체크</button>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" name="userPassword" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                        <img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="userName" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" name="userSex" class="sel">
                            <option>성별</option>
                            <option value="0">남자</option>
                            <option value="1">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- NICKNAME -->
                <div>
                    <h3 class="join_title"><label for="nickname">닉네임</label>
                    
                    <span class="box int_nickname">
                        <input type="text" id="nickname" name="userNickname" class="int" maxlength="15" placeholder="선택입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="userPhonenumber" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>

                <div>
                    <h3 class="join_title"><label for="region">선호지역</label></h3>
                    <span class="box region_code">
                        <select id="region" name="userPreference" class="sel">
                            <option>선호지역</option>
                            <option value="0">충무로</option>
                            <option value="1">동대입구</option>
                            <option value="2">둘다</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="formCheck()">
                        <span>가입하기</span>
                    </button>
                </div>


            </div> 
            <!-- content-->
          </form>

        </div>
        <!-- wrapper -->
    <script src="joinpage.js"></script>
    </body>
</html>