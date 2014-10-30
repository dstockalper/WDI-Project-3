(function(){

	var app = angular.module('myApp',["ngResource"])

	// TabController controlls the three tab click functions
	app.controller("TabController", function(){
		this.tab = 1;

		this.setTab = function(value){
		    this.tab = value;
		};

		this.isSet = function(value){
		    return this.tab === value;
		};

	});

	// Use $resource (high level $http) to query db for all reviews
	app.factory("ngReview", ["$resource",
        function($resource){
        	// the argument inside $resource indecates the routing: in this case the index action of reviews controller...:id gets ignored
            return $resource("/reviews");
        }
    ])

	app.controller("RevController", ["ngReview", function(ngReview){
		// setInterval(function(){
		// 	this.allCurrentUserReviews = ngReview.query();
		// 	console.log(this.allCurrentUserReviews);
		// }, 3000);

		

		// $timeout(function() {
		// 	this.allCurrentUserReviews = ngReview.query();
		// 	console.log(this.allCurrentUserReviews);
		// }, 3000);


		this.allCurrentUserReviews = ngReview.query();
		console.log(this.allCurrentUserReviews);

		// var audio = new Audio();
		// audio.src ='http://translate.google.com/translate_tts?ie=utf-8&tl=en&q=Hello%20World.';
		// audio.play();

		//http://updates.html5rocks.com/2014/01/Web-apps-that-talk---Introduction-to-the-Speech-Synthesis-API
		var msg = new SpeechSynthesisUtterance();
		msg.text="Others are reviewing you.  Check out your reviews feed tab.";
		speechSynthesis.speak(msg);


	}]);


})();


