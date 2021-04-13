	
function joinCheck(){
	var name = document.joinMember.name;
	var userid = document.joinMember.userid;
	var reid = document.joinMember.reid;
	var pwd = document.joinMember.pwd;
	var pwdCheck = document.joinMember.pwd_check;
	var birthYear = document.joinMember.YEAR;
	var birthMonth = document.joinMember.MONTH;
	var birthDay = document.joinMember.DAY;
	var gender = document.joinMember.gender;
	var email = document.joinMember.email;
	var nationNum = document.joinMember.nationNum;
	var phone = document.joinMember.phone;
	
	 var text="";
	 var pattern1 = /[0-9]/;
     var pattern2 = /[a-zA-Z]/;
     var pattern3 = /[~!@\#$%<>^&*]/;   
	
	var phonePattern = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;


	var result =false;
	
	if(userid.value.length==0){ // 아이디를 입력하지 않은 경우
		alert("아이디를 입력하세요");
		userid.focus();
	}else if(userid.value.length<4 || userid.value.length>20){ // 아이디가 4이상20자 이하 아닐경우
		alert("아이디는 4글자 이상 20자 이하여야 합니다.");
		userid.focus();
	}else if(pwd.value.length==0){ //암호를 입력하지 않을 경우
		alert("암호는 반드시 입력해야 합니다.");
		pwd.focus();
	}else if(!pattern1.test(pwd.value)||!pattern2.test(pwd.value)||!pattern3.test(pwd.value)||pwd.value.length<8 || pwd.value.length>50){
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); // 암호가 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.
		pwd.value="";
		pwd.focus();
	}else if(pwd.value.indexOf(userid.value)>-1){
		alert("비밀번호는 ID를 포함할 수 없습니다.");
		pwd.focus();
	}else if(pwd.value != pwdCheck.value){ //암호가 일치하지 않을경우
		alert("암호가 일치하지 않습니다.");
		pwdCheck.focus();
	}else if(reid.value.length ==0){ 	//아이디 중복 체크를 하지 않을 경우
		alert("아이디 중복 체크를 해야 합니다.");
		userid.focus();
	}else if(name.value.length==0){ // 이름을 입력하지 않은 경우
		alert("이름을 입력하세요");
		name.focus();
	}else if(birthYear.value.length<4){
		alert("생년월일을 잘못 입력하셨습니다.");
		birthYear.focus();
	}else if(birthMonth.value==""){
		alert("생년월일을 잘못 입력하셨습니다.");
		birthMonth.focus();
	}else if(birthDay.value==""){
		alert("생년월일을 잘못 입력하셨습니다.");
		birthDay.focus();
	}else if(gender.value==""){
		alert("성별을 선택 해 주세요");
		gender.focus();
	}else if(email.value.length==0){
		alert("이메일을 입력 해 주세요");
		email.focus();
	}else if(nationNum.value==""){
		alert("국가번호를 입력 해 주세요");
		nationNum.focus();
	}else if(phone.value.length==0){
		alert("번호를 입력 해 주세요");
		phone.focus();
	}else if(phonePattern.test(phone.value)!=true){
		alert("번호를 잘못 입력 하셨습니다.");
	}else if(phonePattern.test(phone.value)==true){
		text += "PHONE : " + phone.value + "\n";		
		result = true;
	}else{
		result = true;
	}
	return result;	
}


function idCheck(){ 
	var userid = document.joinMember.userid;
	
	if(userid.value==""){
		alert("아이디를 입력해 주세요."); 
		document.frm.userid.focus(); 
		return; 
	}
	if(userid.value.length<4 || userid.value.length>20){
		alert("아이디는 4글자 이상 20자 이하여야 합니다.");
		userid.focus();
		return;
	}
	//joinMembership.jsp쿼리스트링 값
	var url = "portpolio.do?command=idCheck&userid="+document.joinMember.userid.value; 
	
	window.open(url,"idcheck","width=600, height=250");
	
}
function idReCheck(){ 
	
	var userid = document.frm.userid;
	
	if(userid.value.length==0){
		alert("아이디를 입력해 주세요."); 
		document.frm.userid.focus(); 
		return; 
	}
	if(userid.value.length<4 || userid.value.length>20){
		alert("아이디는 4글자 이상 20자 이하여야 합니다.");
		userid.focus();
		return;
	}

}

function idOK(){
	opener.joinMember.userid.value = document.frm.userid.value;
	opener.joinMember.reid.value = document.frm.userid.value;
	
	self.close();
}

function loginCheck(){
	
	var userid = document.frm.userid;
	var pwd = document.frm.pwd;
	
	var text="";
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;   
	
	
	var result = false;
	
	if(userid.value.length==0){ // 아이디를 입력하지 않은 경우
		alert("아이디를 입력하세요");
		userid.focus();
	}else if(userid.value.length<4 || userid.value.length>20){ // 아이디가 4이상20자 이하 아닐경우
		alert("아이디는 4글자 이상 20자 이하여야 합니다.");
		userid.focus();
	}else if(pwd.value.length==0){ //암호를 입력하지 않을 경우
		alert("암호는 반드시 입력해야 합니다.");
		pwd.focus();
	}else if(!pattern1.test(pwd.value)||!pattern2.test(pwd.value)||!pattern3.test(pwd.value)||pwd.value.length<8 || pwd.value.length>50){
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); // 암호가 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.
		pwd.value="";
		pwd.focus();
	}else if(pwd.value.indexOf(userid.value)>-1){
		alert("비밀번호는 ID를 포함할 수 없습니다.");
		pwd.focus();
	}else{
		result = true;
	}
	
	return result;
	
}

function goBack(){
	window.history.back();
}

function passOK(){
	
	var result = false;
	
	var title = document.frm.title;
	var pwd = document.frm.pwd;
	var content = document.frm.content;
	
	var text="";
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;  
    
    if(title.value.length==0 || title.value.length>25){
    	alert("제목은 25자 이하 필수로 작성해야 합니다.");
		title.focus();
    }else if(pwd.value.length==0){ //암호를 입력하지 않을 경우
		alert("비밀번호는 반드시 입력해야 합니다.");
		pwd.focus();
	}else if(!pattern1.test(pwd.value)||!pattern2.test(pwd.value)||!pattern3.test(pwd.value)||pwd.value.length<8 || pwd.value.length>50){
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); // 암호가 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.
		pwd.value="";
		pwd.focus();
	}else if(content.value.length==0 || content.value.length>500){
		alert("내용은 500자 이하 필수로 작성해야 합니다.");
		content.focus();
	}else{
		result = true;
	}
    
    
    return result;	
}

function passCheck(){
	
	var result = false;
	
	var pwd = document.frm.pwd;
	
	var text="";
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;  
    
    if(pwd.value.length==0){ //암호를 입력하지 않을 경우
		alert("비밀번호는 반드시 입력해야 합니다.");
		pwd.focus();
	}else if(!pattern1.test(pwd.value)||!pattern2.test(pwd.value)||!pattern3.test(pwd.value)||pwd.value.length<8 || pwd.value.length>50){
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); // 암호가 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.
		pwd.value="";
		pwd.focus();
	}else{
		result = true;
	}
    
    
    return result;
}

function updateCheck(){
	var name = document.frm.name.value;
	var checkName = document.frm.checkName.value;
	var email = document.frm.email.value;
	var checkEmail = document.frm.checkEmail.value;
	
	if(name != checkName && email != checkEmail){
		alert("회원님의 정보와 일치하지 않으므로 수정하실 수 없습니다.");
		location.href="mguard.do?command=qna_description&num="+document.frm.num.value;
	}else{
		location.href="mguard.do?command=qna_update_form&num="+document.frm.num.value;
	}
	
}
function open_win(url, name){
	
	window.open(url, name, "width=500, height=300");
	
}

function open_source(url, name){
	
	window.open(url, name, "width=900, height=700");
	
}

function deleteCheck(){
	var userid = document.frm.userid;
	var pwd = document.frm.pwd;
	var pwdCheck = document.frm.pwdCheck;
	
	var text="";
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
    var pattern3 = /[~!@\#$%<>^&*]/;   
	
	var result = false;
	
	if(pwd.value.length==0){ //암호를 입력하지 않을 경우
		alert("암호는 반드시 입력해야 합니다.");
		pwd.focus();
	}else if(!pattern1.test(pwd.value)||!pattern2.test(pwd.value)||!pattern3.test(pwd.value)||pwd.value.length<8 || pwd.value.length>50){
		alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다."); // 암호가 영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.
		pwd.value="";
		pwd.focus();
	}else if(pwd.value.indexOf(userid.value)>-1){
		pwd.value="";
		alert("비밀번호는 ID를 포함할 수 없습니다.");
		pwd.focus();	
	}else if(document.getElementById('passCheck').value != pwdCheck.value){
		alert("비밀번호가 틀립니다.");
		pwd.value="";
		pwd.focus();
	}else{
		result = true;
	}
	return result;
	
}

function logout(){
	alert("로그아웃이 되었습니다.");
	location.href="portpolio.do?command=login";
}