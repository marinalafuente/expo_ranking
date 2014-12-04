/* likeButton function
*/

$.ajaxSetup({
  headers: {
    'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
  }
});

/*var button1 = document.getElementById("likeButton");    
   	likeButton.addEventListener("click", postLikes);

var button2 =document.getElementById("DislikeButton");	
	DislikeButton.addEventListener("click", postLikes); */

 $('[data-expoid]').on('click', postLikes)
	
function postLikes (ev){
	/*var likes = parseInt(expoLikes.textContent)
	var type = ""
	if (ev.target === document.getElementById("likeButton")){
		likes = likes + 1;
		type = "up";
	}else {
		likes = likes - 1;
		type = "down"
	}
	expoLikes.textContent = likes;*/
	var id = ev.target.dataset.expoid;

	var type = (ev.target === document.getElementById("likeButton")) ? 'up' : 'down';
	$.post('/expos/'+id+'/vote', {"vote": type}, function(){
		var expoLikes = document.getElementById("likeCounter");
		var expoDislikes = document.getElementById("dislikeCounter");

	type === "up" ? expoLikes=parseInt(expoLikes.textContent)+1 : expoDislikes=parseInt(expoDislikes.textContent)+1

	}).fail(function(){
		alert("ya has votado!");
	})

};
