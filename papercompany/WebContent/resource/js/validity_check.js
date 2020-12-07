const sign_btn = document.getElementById("sign_btn");
const double_id_check = document.getElementById("double_id_check");

//Input data
var account_number = document.getElementById("account_number");
var account_password = document.getElementById("account_password");
var account_password_re = document.getElementById("account_password_re");
var account_name = document.getElementById("account_name");
var account_en_name = document.getElementById("account_en_name");
var account_email = document.getElementById("account_email");
var account_citizen_number = document.getElementById("account_citizen_number");

//data check
//
//console.log(account_number);
//console.log(account_password);
//console.log(account_password_re);
//console.log(account_name);
//console.log(account_en_name);
//console.log(account_email);
//console.log(account_citizen_number);

//Input form

//validity condition

var regVal_number = /^[0-9]*$/;
var regVal_korea = /^[가-힣]{2,4}$/;
var regVal_email = /^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
var regVal_account = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$/;

//var regVal_2 = /^[a-Z][0-9][@]*$/;

function doubleIdCheck() {
  var account_number_length = account_number.value.length;
  if (account_number.value === "") {
    alert("아이디를 입력해주세요");
    account_number.focus();

    return false;
  }
  if (account_number_length !== 8 && !regVal_number.test(account_number)) {
    alert("숫자또는 숫자로만 이루어진 8자리만 입력해주세요");
    account_number.focus();
    account_number.value = "";
    return false;
  } else {
    if (regVal_number.test(account_number.value)) {
      alert("올바른 사원번호 양식입니다.");
    }
  }
  
}

//  회원가입 버튼 양식
function signValidity() {
  if (account_password === "") {
    alert("비밀번호를 입력해주세요");
    account_password.focus();
    return false;
  }
  if (account_password_re.value !== account_password.value) {
    alert("비밀번호가 일치하지 않습니다. 확인해주세요");
    account_password_re.focus();
    account_password_re.value = "";
    return false;
  }

  if (!regVal_korea.test(account_name) && account_name.value === "") {
    alert("사원의 이름이 영문이거나 공백입니다. 확인해주세요");
    account_name.focus();
    account_name.value = "";
    return false;
  }
  if (
    !regVal_account.test(account_citizen_number) &&
    account_citizen_number.value === ""
  ) {
    alert("주민번호를 입력하지 않았거나, 공백입니다 확인해주세요");
    account_citizen_number.focus();
    account_citizen_number.value = "";
    return false;
  }
  if (!regVal_email.test(account_email) && account_email.value === "") {
    alert("이메일을 입력하지 않았거나 공백입니다. 확인해주세요");
    account_email.focus();
    account_email.value = "";
    return false;
  }
}

sign_btn.addEventListener("click", signValidity);
//double_id_check.addEventListener("click", doubleIdCheck);
