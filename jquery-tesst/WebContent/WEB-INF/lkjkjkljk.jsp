<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
<form id="myForm" action="test3.html">
<input type="text" id="field" name="personalId" onkeypress="return numbersOnly(this, event)" onpaste="return true;" data-error="#errNm1">
<br>
<input type="text" id="field" name="profitRate" onkeypress="return numbersAndDecimal(this, event)" onpaste="return true;" data-error="#errNm2">
<br>
<input type="text" id="field" name="familyNum">
<br>
<input type="submit" name="submit" class="button" value="Submit">
</form>
 <div class="errorTxt">
    <span id="errNm2"></span>
    <span id="errNm1"></span>
  </div> 

<script type="text/javascript">
$(document).ready(function(){
 $("#myForm").validate({
/* 	 errorPlacement: function(error, element) {
	     error.appendTo('#errordiv');
	   }, */
	  /*  errorPlacement: function(error, element) {
           error.insertAfter(element);
	   }, */
	rules: {
		personalId : {
			required : true,
			maxlength :10,
			minlength :10
		},
 profitRate : {
		required : true,
		dollarsscents: true
	},
	errorPlacement: function(error, element) {
	      var placement = $(element).data('error');
	      if (placement) {
	        $(placement).append(error)
	      } else {
	        error.insertAfter(element);
	      }
	    }
	/*  errorElement : 'p',
	 errorClass : 'jq error-msg-producer',
	 errorPlacement: function(error, element) {
		    switch (element.attr("name")) {
		        case 'personalId':
		            error.appendTo($("#error-msg1"));
		            break;
		        case 'profitRate':
		            error.appendTo($("#error-msg2"));
		            break;
		        default:
		           error.insertAfter(element);
		    }
		} */
/* 	    errorPlacement: function(error, element) {
	        var placement = $(element).data('error');
	        if (placement) {
	          $(placement).append(error)
	        } else {
	          error.insertAfter(element);
	        }
	      } */
	}
}); 
});
/* 
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    } else {
        return true;
    }      
} */

</script>
<script>
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    } else {
        return true;
    }      
}
function numbersOnly(oToCheckField, oKeyEvent) {
    return oKeyEvent.charCode === 0 ||
        /\d/.test(String.fromCharCode(oKeyEvent.charCode));
  }
  
function numbersAndDecimal(oToCheckField, oKeyEvent) {        
    var s = String.fromCharCode(oKeyEvent.charCode);
    var containsDecimalPoint = /\./.test(oToCheckField.value);
    return oKeyEvent.charCode === 0 || /\d/.test(s) || 
        /\./.test(s) && !containsDecimalPoint;
  }
$(document).ready(function () {
    jQuery.validator.addMethod("dollarsscents", function (value, element) {
        return this.optional(element) || /^\d{0,2}(\.\d{0,2})?$/i.test(value);
    }, "You must include two decimal places");
});
</script>

