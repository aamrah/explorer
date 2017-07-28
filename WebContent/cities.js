var main =function(){
   /* $("#cities").click(function(){
    	var menuVisible=false;
    	if (menuVisible) {
    		
    	      $('#menu').css({'display':'none'});
    	      menuVisible = false;
    	      return;
    	    }
    	    $('#menu').css({'display':'block'});
    	    menuVisible = true;
        });
   */
	$("#cities").click(function(){
    	$("ul").toggleClass("menu")
        });
    };
   $(document).ready(main);