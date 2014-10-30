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
        	// console.log($resource)
            return $resource("/reviews/:id");
        }
    ])

	app.controller("RevController", ["ngReview", function(ngReview){

		this.allReviews = ngReview.query();

		console.log(this.allReviews);

	}]);

})();

