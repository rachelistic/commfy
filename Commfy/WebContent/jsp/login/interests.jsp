<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>

.bo {

  color: #353942;
  position:relative;
}


.button {
  outline: none;
  background-color: #e3bb88;
  border: none;
  border-radius: 5em;
  color: white;
  text-align: center;
  
  text-decoration: none;
  display: inline-block;
  font-size: 1.5rem;

  
}

.button:active {
  border: none;
  background-color: #DB9864;
  transform: scale(2, 2);
}

.a {
  float: left;
  position: absolute;
  top: 2.5em;
  left: calc(50% - 2.5em);
  width: 5em;
  height: 5em;
  transition: background-color 250ms;
  transition: transform 1000ms cubic-bezier(0.215, 0.610, 0.255, 1.000);
}

.b {
  float: left;
  position: absolute;
  top: 2.5em;
  left: calc(50% - 2.5em);
  width: 1em;
  height: 1em;
  opacity: 0;
  
  transition: background-color 250ms;
  transition: opacity 1000ms;
  transition: width 250ms;
  transition: height 250ms;
  transition: transform 1000ms cubic-bezier(0.215, 0.610, 0.255, 1.000);
  
}

.b0 {
  z-index: 100;
  
}

#b0 {
  transform: scale(1);
  background:blue;
}

#b0:hover {
  transform: scale(1.5);
}

#b1.open {
  /*animation: b1orbit 750ms ease 1 forwards;*/
  transform: rotate(360deg) translate(0em, 6em) rotate(-360deg);
  opacity: 1;
  width: 3em;
  height: 3em;
}

#b2.open {
  transform: rotate(360deg) translate(5em, 4em) rotate(-360deg);
  opacity: 1;
  width: 3em;
  height: 3em;
}

#b3.open {
  transform: rotate(360deg) translate(6em, -1em) rotate(-360deg);
  opacity: 1;
  width: 3em;
  height: 3em;
}

#b4.open {
  transform: rotate(360deg) translate(-5em, 4em) rotate(-360deg);
  opacity: 1;
  width: 3em;
  height: 3em;
}

#b5.open {
  transform: rotate(360deg) translate(-6em, -1em) rotate(-360deg);
  opacity: 1;
  width: 3em;
  height: 3em;
}

</style>

</head>


<body>

<div class="bo">

<a id="b0" class="button a b0 close" ><br><br>INTERESTS</a>
<a id="b1" class="button b b1 close"><input type="checkbox" name="interests" onclick='getCheckboxValue()'value="예술" style="border:0; background:none;font-size:20px;">예술</a>
<a id="b2" class="button b b2 close"><input type="checkbox" name="interests" onclick='getCheckboxValue()'value="음악" style=" border:0; background:none;font-size:20px;">음악</a>
<a id="b3" class="button b b3 close"><input type="checkbox" name="interests" onclick='getCheckboxValue()'value="운동" style=" border:0; background:none;font-size:20px;">운동</a>
<a id="b4" class="button b b4 close"><input type="checkbox" name="interests" onclick='getCheckboxValue()' value="친목" style=" border:0; background:none;font-size:20px;">친목</a>
<a id="b5" class="button b b5 close"><input type="checkbox" name="interests" onclick='getCheckboxValue()' value="어학" style=" border:0; background:none;font-size:20px;">어학</a>


</div>



</body>

<script>
var b0 = document.getElementById("b0");
var b1 = document.getElementById("b1");
var b2 = document.getElementById("b2");
var b3 = document.getElementById("b3");
var b4 = document.getElementById("b4");
var subButtons = [b1, b2, b3, b4]
b0.onclick = function() {
  
  toggle("b1"); 
  toggle("b2"); 
  toggle("b3"); 
  toggle("b4"); 
  toggle("b5"); 


}

function toggle(id){
  if ( document.getElementById(id).classList.contains('close') ){
    document.getElementById(id).classList.add('open');
document.getElementById(id).classList.remove('close');
  } else if( document.getElementById(id).classList.contains('open') ){
    document.getElementById(id).classList.add('close');
document.getElementById(id).classList.remove('open');
  } else {
    document.getElementById(id).classList.add('open');
  }
}

function getCheckboxValue()  {
	  // 선택된 목록 가져오기
	  const query = 'input[name="interests"]:checked';
	  const selectedEls = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록에서 value 찾기
	  let result = "";
	  selectedEls.forEach((el) => {
	    result += el.value + ',';
	  });
	  
	  // 출력
	  document.getElementById('result').innerText
	    = result;
	  document.getElementById('int').value
	    = result;
	}



</script>



</html>