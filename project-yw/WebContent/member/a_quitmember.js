$(document).ready(function(){
	$("form").submit(function(){
		
		
		if($.trim($("#pass").val())==""){
			alert("비밀번호를 입력하세요");
			$("#passwd").focus();
			return false;
		}
		
	});
});