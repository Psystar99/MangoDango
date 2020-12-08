/*변수 선언*/


var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var userName = document.querySelector('#name');

var gender = document.querySelector('#gender');

var nickname = document.querySelector('#nickname');

var mobile = document.querySelector('#mobile');

var region = document.querySelector('#region');

var error = document.querySelectorAll('.error_next_box');

var checkid=0;
var checkpw1=0;
var checkpw2=0;
var checkusername=0;
var checkgender=0;
var checknickname=0;
var checkmobile=0;
var checkregion=0;


/*이벤트 핸들러 연결*/


id.addEventListener("focusout", checkId);
pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
userName.addEventListener("focusout", checkName);
gender.addEventListener("focusout", function() {
    if(gender.value === "성별") {
        error[4].style.display = "block";
        checkgender=0;
    } else {
        error[4].style.display = "none";
        checkgender=1;
    }
})
nickname.addEventListener("focusout", checkNickname);
mobile.addEventListener("focusout", checkPhoneNum);
region.addEventListener("focusout", function() {
    if(region.value === "선호지역") {
        error[7].style.display = "block";
        checkregion=0;
    } else {
        error[7].style.display = "none";
        checkregion=1;
    }
})





/*콜백 함수*/


function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.color = "red";
        error[0].style.display = "block";
        checkid=0;
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.color = "red";
        error[0].style.display = "block";
        checkid=0;
    }else{
	idcheck();
	}
}

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        error[1].style.color = "red";
        error[1].style.display = "block";
        pwMsg.innerHTML = "";
        pwImg1.src = "images/m_icon_pass.png";
        checkpw1=0;        
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        error[1].style.color = "red";
        pwMsg.innerHTML = "사용불가";
        pwMsg.style.color = "red";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";

        pwMsg.style.display = "block";
        pwImg1.src = "images/m_icon_not_use.png";
        checkpw1=0;
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pwImg1.src = "images/m_icon_safe.png";
        checkpw1=1;
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pwImg2.src = "images/m_icon_check_enable.png";
        error[2].style.display = "none";
        checkpw2=1;
    } else if(pw2.value !== pw1.value) {
        pwImg2.src = "images/m_icon_check_disable.png";
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
        checkpw2=0;
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
        checkpw2=0;
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
        checkusername=0;
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[3].style.display = "block";
        checkusername=0;
    } else {
        error[3].style.display = "none";
        checkusername=1;
    }
}

function checkNickname() {
  if(nickname.value === "") {
        error[5].innerHTML = "필수 정보입니다.";
        error[5].style.color = "red";
        error[5].style.display = "block";
        checknickname=0;
  }else{
	nicknamecheck();
	}
}




function checkPhoneNum() {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[6].innerHTML = "필수 정보입니다.";
        error[6].style.display = "block";
        checkmobile=0;
    } else if(!isPhoneNum.test(mobile.value)) {
        error[6].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[6].style.display = "block";
        checkmobile=0;
    } else {
        error[6].style.display = "none";
        checkmobile=1;
    }

    
}

function formCheck(){
  if(checkAll()==true){
    document.getElementById("join_form").submit();
  }
}

function checkAll(){
  if(checkid!=1){
    alert("아이디를 확인하세요.");
    return false;
  }
  else if(checkpw1!=1){
    alert("비밀번호를 확인하세요.");
    return false;
  }
  else if(checkpw2!=1){
    alert("비밀번호 재확인을 완료해주세요.");
    return false;
  }
  else if(checkusername!=1){
    alert("이름을 입력해주세요.");
    return false;
  }
  else if(checkgender!=1){
    alert("성별을 선택해주세요.");
    return false;
  }
  else if(checknickname!=1){
    alert("닉네임을 입력해주세요.");
    return false;
  }
  else if(checkmobile!=1){
    alert("휴대전화를 입력해주세요.");
    return false;
  }
  else if(checkregion!=1){
    alert("선호지역을 선택해주세요.");
    return false;
  }
  else{
    return true;
  }
}


function idcheck(){
  var userID=id.value;
  $.ajax({
    type:'POST',
    url:'./UserRegisterCheckServlet',
    data:{userID: userID},
    success : function(result){
	if (result==0){
		error[0].innerHTML = "해당 아이디는 현재 사용중입니다.";
        error[0].style.color = "red";
       	error[0].style.display = "block";
        checkid=0;
		
	}else{
		error[0].innerHTML = "멋진 아이디네요!";
       	error[0].style.color = "#08A600";
       	error[0].style.display = "block";
        checkid=1;
	}
},
	error:function(request, error) {

			alert("fail");

			// error 발생 이유를 알려준다.

		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		} 
  })
  return result;
}

function nicknamecheck(){
  var userNickname=nickname.value;
  $.ajax({
    type:'POST',
    url:'./UserNicknameCheckServlet',
    data:{userNickname: userNickname},
    success : function(result){
	if (result==0){
		error[5].innerHTML = "해당 닉네임은 현재 사용중입니다.";
        error[5].style.color = "red";
       	error[5].style.display = "block";
        checknickname=0;
		
	}else{
		error[5].innerHTML = "멋진 닉네임이네요!";
       	error[5].style.color = "#08A600";
       	error[5].style.display = "block";
        checknickname=1;
	}
},
	error:function(request, error) {

			alert("fail");

			// error 발생 이유를 알려준다.

		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

		} 
  })
	return result;
}