(function(){
	var app = angular.module('tabs',[])

	app.controller("TabController", function(){
		this.tab = 1;

		this.setTab = function(value){
		    this.tab = value;
		};

		this.isSet = function(value){
		    return this.tab === value;
		};
	});
})();



(function(){
	var app = angular.module('revs', [])

	app.controller("RevController", function(){

		console.log("RevController fires");

	});
})();