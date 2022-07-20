$(function(){    
         abc2();
    }); 
	function abc2(){
         var $obj = $('#hot_ranks2 ul');  
         var len  = $obj.length;  
         var i = 0;  
         $("#next2").click(function(){  
              i++;  
              if(i==len){  
                i = 0;  
              }  
              $obj.stop(true,true).hide().eq(i).fadeIn(600);  
              return false;  
         });      
         $("#previous2").click(function(){  
              i--;  
              if(i==-1){  
                i = len-1;  
              }  
              $obj.stop(true,true).hide().eq(i).fadeIn(600);  
              return false;  
         });  
    }
	
	$(".it_expertxt").hover(function(){
		$(this).find(".it_expertit").css("color","#fff");
		$(this).find(".it_experconter").css("color","#fff");
		var div = $(this).find(".it_expertit");
		var div2 = $(this).find(".it_experconter")
		div.addClass("dest").animate({left: 20}, 200);
		div2.addClass("dest").animate({left: 20}, 200);
	},function(){
		var div = $(this).find(".it_expertit");
		var div2 = $(this).find(".it_experconter")
		$(this).find(".it_expertit").css("color","#434343");
		$(this).find(".it_experconter").css("color","#7d858c");
		div.addClass("dest").animate({left: 0}, 200);
		div2.addClass("dest").animate({left: 0}, 200);
	});