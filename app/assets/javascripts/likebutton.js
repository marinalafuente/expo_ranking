/* likeButton function
*/
var likeButton = document.getElementById("likeButton");
    if (likeButton){
   	likeButton.addEventListener("click", likeButton.bind(this, expo.name, likes));
   	}

var DislikeButton =document.getElementById("DislikeButton");
	if (DislikeButton){
	DislikeButton.addEventListener("click",likeButton.bind(this, expo.name, likes));  
	}
//   document.getElementsByClassName("likeClick")[0].style.display="block";

function likeButton (expos,likes,event){
	if (event.target === document.getElementById("likeButton")){
		likes = likes + 1;
		document.getElementsByClassName("likeClick")[0].style.display="none";
	}else {
		likes = likes - 1;
		document.getElementsByClassName("likeClick")[0].style.display="none";

	}
	document.getElementById("likeCounter").innerHTML = likes;
	expos.like = likes;
	$.post('/sendLikes', JSON.stringify(expos))
}

