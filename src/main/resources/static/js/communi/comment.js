$(document).ready(function(){
    console.log("comment.js");
    $(".replyHiddenBt").on("click",function(){
        console.log($(this).attr("id"));
        $("#c"+$(this).attr("id")).css("visibility","visible");
        console.log($("#c"+$(this).attr("id")).val());
        console.log("#c"+$(this).attr("id"));
    })
})