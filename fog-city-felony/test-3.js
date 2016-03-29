function MiniScene =  function(text, action, nextActions) {
	this.text = text;
	this.action = action;
	this.nextActions = nextActions
}

MiniScene.prototype.next = function() {

}

// create new paragraph and node text elements
var p3 = document.createElement("p");
var node3 = document.createTextNode("He gets up, and the look of something wet on the wall catches his eye. It's blood.");
var p4 = document.createElement("p");
var node4 = document.createTextNode("Action(s): investigate");

var murder = new MiniScene([p3, p4], [node3, node4], {
	"run": run,
	"trip": trip
})

var miniScene1 = new MiniScene([p3, p4], [node3, node4], {
	"murder": murder
});




function DarkAlley() {
	this.enter = function() {
		// change background image
		document.body.style.backgroundImage = "url('img/alley1.jpg')";

		// create storyBox var element
		var storyBox = document.getElementById("story-box");

		// create paragraph elements
		var p1 = document.createElement("p");
		var p2 = document.createElement("p");

		// create nodes with text
		var node1 = document.createTextNode("Detective Bronson wakes up, if that's a word for what it is. It's more like staggering out of the blessed murky unconsciousness into a hang-over that starts in his head and ends somewhere in his lower back. He's sprawled on the cold ground of an abandoned alley. The streetlights at the end prick his eyes as the world swims into view. He'd rather go back to unconsciousness. Bronson takes stock. His gun is gone, he has a blistering headache, and he is most definitely out of cigarettes. \"Damn,\" he says softly.");
		var node2 = document.createTextNode("To continue the story, press enter.");

		//append nodes to paragraphs, and append to storyBox
		p1.appendChild(node1);
		p2.appendChild(node2);
		storyBox.appendChild(p1);
		storyBox.appendChild(p2);

		//add event listener for key
		window.addEventListener("keydown", checkKey, false);
		
		// if key is enter, then continue with rest of the story
		
	};
}