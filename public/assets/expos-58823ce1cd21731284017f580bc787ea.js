function postLikes(t){var e=t.target.dataset.expoid,n=t.target===document.getElementById("likeButton")?"up":"down";$.post("/expos/"+e+"/vote",{vote:n},function(){var t=document.getElementById("likeCounter"),e=document.getElementById("dislikeCounter");"up"===n?t=parseInt(t.textContent)+1:e=parseInt(e.textContent)+1}).fail(function(){alert("ya has votado!")})}$.ajaxSetup({headers:{"X-CSRF-Token":$('meta[name="csrf-token"]').attr("content")}}),$("[data-expoid]").on("click",postLikes);