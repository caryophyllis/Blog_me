function  photoMove() {
	setInterval(test, 3000);
	
	var index = 0;
	var array = new Array("images/scene.jpg", "images/scene2.jpg",
			"images/scene3.jpg");
	function test() {
		var myimg = document.getElementById("imgs");
		if (index == array.length - 1) {
			index = 0;
		} else {
			index++;
		}
		myimg.src = array[index];
	}
}

function  photoMove2() {
	setInterval(test, 3000);
	
	var index = 0;
	var array = new Array("image/scene.jpg", "image/scene2.jpg",
			"image/scene3.jpg");
	function test() {
		var myimg = document.getElementById("img");
		if (index == array.length - 1) {
			index = 0;
		} else {
			index++;
		}
		myimg.src = array[index];
	}
}