$(document).ready(function(){

	$('h1').hover(function(){
		$(this).css('border','4px solid black');
	});

	$('img').delay(400).fadeOut(500,function(){
		$(this).attr('src','https://img.memesuper.com/73825f3a714c7622b7b9b14eba3b516d_life-as-a-programmer-memes-programmer_436-304.jpeg').fadeIn(500);
	});


})