// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require masonry/jquery.masonry
//= require moment
//= require fullcalendar
//= require jquery-ui
//= require angular
//= require angular-route

	var app = angular.module('myApp', []);

	
	app.controller('mainController', ['$scope', function($scope){
	    $scope.current = 1;
	    
	    $scope.isSet = function(val){
	        return $scope.current === val;
	    }
	    
	    $scope.set = function(val){
	        $scope.current = val;
	    }
	}]);