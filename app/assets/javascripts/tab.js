// $(function(){
//   $("tab select2").on("click",function(){
//     $("card").addClass("hidden");
//     $("card2").removeClass("hidden");
//   })
// });

$(function(){
  $(".select").on("click",function(){
  $(".is-active").removeClass("is-active");
  $(this).addClass("is-active");
  $(".cards.is-show").removeClass("is-show");
  var index = $(this).index();
  $(".cards").eq(index).addClass("is-show");
  console.log(index);
      });
  });


// $(".cards").each(function(index,element){
//   $(".cards").addClass("is-show");
//       });


//日常がクリックされた時の動作
// $(function(){
//   $(".select2 ").on("click",function(){
//     $(".card2").addClass("active");
//     $(".card2").removeClass("hidden");
//     $(".card").removeClass("active");
//     $(".card").css("display","none");
//     $(this).css("background","blue");
//   });
// //幸運がクリックされた時
//   $(".select").on("click",function(){
//     $(".card").css("display","block");
//     $(".card2").css("display","none");
//     $(".card3").css("display","none");
//     $(".card4").css("display","none");
//     $(this).css("background","blue");
//   });

//    $(".select3").on("click",function(){
//     $(".card").css("display","none");
//     $(".card2").css("display","none");
//     $(".card3").css("display","block");
//     $(".card4").css("display","none");
//     $(this).css("background","blue");
//   });
// });


 // $(function(){
 //   $(".do").on("click",function(){
 //     $(".my-profile-container-all1").removeClass("active");
 //     $(".my-profile-container-all2").addClass("active");
 //     $(".my-profile-purchase__content__data.hidden").addClass("active");
 //    });
 //  $(".notice").on("click",function(){
 //     $(".my-profile-container-all1").addClass("active");
 //     $(".my-profile-container-all2").removeClass("active");
 //     $(".my-profile-purchase__content__data.hidden").removeClass("active");
 //   });
