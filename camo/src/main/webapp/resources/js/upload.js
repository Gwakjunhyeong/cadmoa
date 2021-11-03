/**
 * 
 */
$(document).ready(function(){

function showImage(fileCallPath){
	  
	  //alert(fileCallPath);
	
	  $(".bigPictureWrapper").css("display","flex").show();
	  
	  $(".bigPicture").html("<img src='/display?fileName="+fileCallPath+"'>").animate({width:'100%', height: '100%'}, 1000);

	}
	
	$(".bigPictureWrapper").on("click", function(e){
	  $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
	  setTimeout(() => {
	    $(this).hide();
	  }, 1000);
	});

	
	$(".uploadResult").on("click","span", function(e){
	   
	  var targetFile = $(this).data("file");
	  var type = $(this).data("type");
	  console.log(targetFile);
	  
	  $.ajax({
	    url: '/deleteFile',
	    data: {fileName: targetFile, type:type},
	    dataType:'text',
	    type: 'POST',
	      success: function(result){
	         alert(result);
	       }
	  }); //$.ajax
	  
	});

		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");	// 업로드 할 수 없는 파일 지정 (정규식)
		var maxSize = 5242880; //5MB

		function checkExtension(fileName, fileSize) {

			if (fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}

			if (regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}

		var cloneObj = $(".uploadDiv").clone();

		$("#uploadBtn").on("click", function(e) {

			var formData = new FormData();	// ajax에서 form 태그의 역할 을 함.

			var inputFile = $("input[name='uploadFile']");	// 속성 선택자

			var files = inputFile[0].files;

			console.log(files);

			for (var i = 0; i < files.length; i++) {

				if (!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				// uploadFile 변수를 이용하여 from 태그(formData)와 파일정보(files)를 연결
				formData.append("uploadFile", files[i]);

			}

	$.ajax({
		url : '/uploadAjaxAction',	// form태그의 action 역할 -> controller의 uploadAjaxAction을 실행
		processData : false,			// form태그의  exntype 역할 (ajax 쓸 때는 반드시 false로)
		contentType : false,			// form태그의  exntype 역할 (ajax 쓸 때는 반드시 false로)
		data : formData,
		type : 'POST',				// form태그의 method 역할 
		dataType : 'json',
		success : function(result) {
	
			console.log(result);
	
			showUploadedFile(result);
	
			$(".uploadDiv").html(cloneObj.html());
		}
	}); //$.ajax

});

var uploadResult = $(".uploadResult ul");

function showUploadedFile(uploadResultArr){
 
   var str = "";
   
   $(uploadResultArr).each(function(i, obj){		// each : jquery의 for문과 같음 each(index, 배열이름) {}
     console.log(obj);
     if(!obj.image){	// 업로드한 파일이 이미지가 아니면,
       
       var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
       
       var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
       
       str += "<li><div><a href='/download?fileName="+fileCallPath+"'>"+
           "<img src='/resources/img/attach.png'>"+obj.fileName+"</a>"+
           "<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>"+
           "<div></li>"
           
     }else{				// 업로드한 파일이 이미지면, 
       
       var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
       						// ㄴ jquery 내장함수 : jquery의 원화 표시를 url의 기호로 변경시켜 줌
       var originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName;
       
       originPath = originPath.replace(new RegExp(/\\/g),"/");
       
       str += "<li><a href=\"javascript:showImage(\'"+originPath+"\')\">"+
              "<img src='display?fileName="+fileCallPath+"'></a>"+
              "<span data-file=\'"+fileCallPath+"\' data-type='image'> x </span>"+
              "<li>";
     }
   });
   
   uploadResult.append(str);
 }
})