/**
 * cookie.js
 */

function delCookie(cname, path){

    let now = new Date();
    now.setDate( now.getDate() - 10 );
    let expires = now.toUTCString();

    // 쿠키 저장
    document.cookie = `${cname}=; expires=${expires}; path=${path}`;

}

function getCookie(cname){
    // "id=admin; age=20;"
    let cookies = document.cookie;

    let cvalue;

    //
    let pattern = /;\s/;
    let cookieArr = cookies.split(pattern);
    cookieArr.forEach(function(elemt, index, array){
        let cnvArr = elemt.split("=");
        if( cnvArr[0] == cname ){
        cvalue = unescape( cnvArr[1] );
        };
    })

    if(cvalue){
        return cvalue;
    }else {
        return null;
    }
}

    //모든 쿠키값을 가져오는 함수
function getAllCookies(){

    let cookies = document.cookie;
    return cookies;
}

function setCookie(cname, cvalue, exdays){
    //만기날짜
    let now = new Date();
    now.setDate(now.getDate() + exdays);
    let expires = now.toUTCString();

    // 쿠키를 저장하는 코딩
    document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=/`;
}

function setCookie(cname, cvalue, exdays, path){
    //만기날짜
    let now = new Date();
    now.setDate(now.getDate() + exdays);
    let expires = now.toUTCString();

    // 쿠키를 저장하는 코딩
    document.cookie = `${cname}=${escape(cvalue)}; expires=${expires}; path=${path}`;
}