(function(){

	var app = angular.module('tattle',["ngResource"])

	app.controller("TattleController", function(){
		
		var msg = new SpeechSynthesisUtterance();
		msg.text="Enter the license plate number and review another driver.";
		speechSynthesis.speak(msg);

	});


})();