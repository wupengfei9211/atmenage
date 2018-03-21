$(function(){
	//点击论文管理
	$(".lunwgl").click(function(){
		$(".onelogin").css("display","none");
		$(".lunwg").css("display","block");
		
		//点击添加论文
	$(".adda").click(function(){
		$(".lunwg").css("display","none");
		$(".addlw").css("display","block");
		$(".fanhui").unbind("click").click(function(){
			$(".lunwg").css("display","block");
			$(".addlw").css("display","none");
		})
	})
	
	})

	$(".chaxun").click(function(){
		$.post("select/selectMes",
				{
					title:$('#title').val(),
					type:$('#type').val()
				},
				function(result){
            	var json=eval("("+result+")");
            	console.log(json);
				for(var i=0;i<json.length;i++){
					var t1=$('<td>'+json[i].title+'</td>');
                    var t2=$('<td>'+json[i].createdby+'</td>');
                    var t3=$('<td>'+json[i].tcode.codetypename+'</td>');
                    var t4=$('<td>'+json[i].creationdate+'</td>');
                    var t5=$('<td>'+json[i].modifydate+'</td>');
                    var t6=$('<td><input type="checkbox"/>&nbsp;<span class="shanchu">×</span></td>');
                    var tr=$('<tr></tr>');
                    tr.append(t1,t2,t3,t4,t5,t6);
                    $(".lwt").append(tr);
				}
		});
	})
	
})
