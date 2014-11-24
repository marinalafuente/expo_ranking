/* likeButton function
*/

$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
});
var expoLikes = document.getElementById("likeCounter");


var button1 = document.getElementById("likeButton");    
   	likeButton.addEventListener("click", postLikes);

var button2 =document.getElementById("DislikeButton");	
	DislikeButton.addEventListener("click", postLikes); 

	
function postLikes (ev){
	var likes = parseInt(expoLikes.textContent)
	var type = ""
	if (ev.target === document.getElementById("likeButton")){
		likes = likes + 1;
		type = "up";
	}else {
		likes = likes - 1;
		type = "down"
	}
	expoLikes.textContent = likes;
	var id = ev.target.dataset.expoid;

	$.post('/expos/'+id+'/vote', {"vote": type})
	$.post('/locations/'+id+'/expos/'+id+'/vote', {"vote": type})

};
