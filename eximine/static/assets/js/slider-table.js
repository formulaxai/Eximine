$(window).ready(function(){
	const container = document.getElementById('slider-table-container');
	const table = document.getElementById('slider-table');
	if(container.clientWidth === table.clientWidth){
		document.querySelector('.slider-right').style.visibility = 'hidden';
		document.querySelector('.slider-left').style.visibility = 'hidden';
	}
	if(container.scrollLeft == 0){
		document.querySelector('.slider-left').style.visibility = 'hidden';
	}

})


$('.slider-right').on('click',()=>{
	document.getElementById('slider-table-container').scrollLeft +=120;
	if(document.getElementById('slider-table-container').scrollLeft > 0){
		document.querySelector('.slider-left').style.visibility = 'visible';
	}
});
$('.slider-right').on('click',()=>{
	document.getElementById('slider-table-container').scrollLeft +=120;
});
$('.slider-left').on('click',()=>{
	document.getElementById('slider-table-container').scrollLeft -=120;

});

setInterval(function(){
	if(document.getElementById('slider-table-container').scrollLeft <= 0){
		document.querySelector('.slider-left').style.visibility = 'hidden';
	}
},100)

