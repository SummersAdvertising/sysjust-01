
function checkForm() {
	var is_error = false;
	
	var errorMessage = "";
			
	$('input[data-validate=true]').each( function() {	
	
		var parent = $(this).parents('td');
		var pIndex = parent.index();
		var label = parent.siblings().eq(pIndex-1).html();
		
		var labeledMessage = $(this).siblings('label.message');
		
		if ( labeledMessage.length > 0 && label != undefined ) {	
			is_error = true;
			errorMessage += "\n" + label + " 錯誤：" + labeledMessage.html();			
		} else if ( $(this).val().length <= 0 ) {
			is_error = true;
			errorMessage += "\n" + label + " 錯誤：請輸入訊息";
		} 
		
		
	} );	
	
	if (is_error) {
		alert("請重新檢查以下欄位：\n" + errorMessage);
		return false;
	}
	
}
