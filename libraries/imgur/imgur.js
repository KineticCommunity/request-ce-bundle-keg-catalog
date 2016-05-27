jQuery(document).ready(function(){
	$("button[data-button-type='button']").click(function(){
		$('#filebrow').trigger('imgurUpload');
	});
	
	$('#filebrow').on('imgurUpload', function() {
	   if(this.files[0]!="undefinded"){
			/*
			** CONFIGURE UPLOAD VALUES
			*/
			var clientId = "08e30913df16dda";
			var MAX_WIDTH = 800;
			var MAX_HEIGHT = 800;
			
			var reader = new FileReader();
			reader.onloadend = function() {
				var tempImg = new Image();
				tempImg.src = reader.result;
				tempImg.onload = function() {
			 
					
					var tempW = tempImg.width;
					var tempH = tempImg.height;
					if (tempW > tempH) {
						if (tempW > MAX_WIDTH) {
						   tempH *= MAX_WIDTH / tempW;
						   tempW = MAX_WIDTH;
						}
					} else {
						if (tempH > MAX_HEIGHT) {
						   tempW *= MAX_HEIGHT / tempH;
						   tempH = MAX_HEIGHT;
						}
					}
			 
					var canvas = document.createElement('canvas');
					canvas.width = tempW;
					canvas.height = tempH;
					var ctx = canvas.getContext("2d");
					ctx.drawImage(this, 0, 0, tempW, tempH);
					var dataURL = canvas.toDataURL("image/jpeg");
					var iurl = dataURL.substr(dataURL.indexOf(",") + 1, dataURL.length);
			   $.ajax({
					url: "https://api.imgur.com/3/image",
					//url: albumAPI,
					type: "POST",
					datatype: "json",
					data: {
						'image': iurl,
						'type': 'base64',
						'title': form.field('title').value()
					},
					success: function(data){
						form.field('id').value(data.data.id);
						form.field('delete_hash').value(data.data.deletehash);
						form.submitPage();
					},
					error: function(jqXHR, textStatus, errorThrown){
						alert("failed: "+ textStatus + "-" + errorThrown);
					},
					beforeSend: function (xhr) {
						//Send anonymous - Add to gallery in Task
						xhr.setRequestHeader("Authorization", "Client-ID " + clientId);
					}
				});
			};
			};
			reader.readAsDataURL(this.files[0]);
		}
		else{
			alert('Please add a picture first!');
		}
	});
})
