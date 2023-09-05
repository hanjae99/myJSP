function loginCheck(){
    if (document.frm.userid.value == 0){
        alert("아이디를 입력해주세요.");
        frm.userid.focus();
        return false;
    }
    if (document.frm.pwd.value == 0){
        alert("비밀번호를 입력해주세요.");
        frm.pwd.focus();
        return false;
    }
    return true;
}

function joinCheck() {
    if (document.frm.userid.value.length < 3) {
        alert("아이디는 3글자 이상 입력해주세요.");
        frm.userid.focus();
        return false;
    }
    if (document.frm.pwd.value != document.frm.re_pwd.value) {
        alert("비밀번호가 일치하지 않습니다.");
        frm.re_pwd.focus();
        return false;
    }
    if (document.frm.reid.value.length == 0){
        alert("중복 확인을 해주세요.")
        frm.userid.focus();
        return false;
    }
    return true;
}

function updateCheck(){
    if (document.frm.userid.value.length < 3) {
        alert("아이디는 3글자 이상 입력해주세요.");
        frm.userid.focus();
        return false;
    }
    if (document.frm.pwd.value != document.frm.re_pwd.value) {
        alert("비밀번호가 일치하지 않습니다.");
        frm.re_pwd.focus();
        return false;
    }
    return true;
}

function idCheck(){
    if (document.frm.userid.value.length == 0){
        alert("아이디를 넣어주세요.");
        frm.userid.focus();
        return false;
    }
    let url = "/idCheck.do?userid=" + document.frm.userid.value;
    window.open(url, "_blank", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200")
}

function idOk(){
    opener.frm.userid.value = document.frm.userid.value;
    opener.frm.reid.value = document.frm.userid.value;
    self.close();
}