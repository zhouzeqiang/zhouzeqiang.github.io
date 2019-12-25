let str = "abcdefghijklmnopqrstvuwxyz1234567890";
//先读取cookie
function getCookie(name) {
    let value = "; " + document.cookie;
    let parts = value.split("; " + name + "=");
    if (parts.length == 2)
        return parts.pop().split(";").shift();
}

//写cookies
function setCookie(name,value){
    let Days = 365;//默认缓存一年
    let exp = new Date();
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}



function randomStr(num) {
    let arr=str.split('')
    let tmp=[]
    for (let index = 0; index < index + 1; index++) {
        tmp.push(arr[Math.floor(Math.random()*arr.length)])
        if([...new Set(tmp)].length==num){
            return [...new Set(tmp)].join('')
            break;
        }
    }
}

var mycookie = getCookie("UM_distinctid");
if (!mycookie) {
    setCookie("UM_distinctid",);



}
//没有cookie那么就新建