<!doctype html>
<html>
   <head>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.17/angular.min.js"></script>
   	  <script>
         angular.module("myapp", [])
         .controller("AjaxController", function($scope,$http) {
        	 $scope.time = "";
        	 $scope.getTime=function() {
        		 var url="/requestPrj/AjaxDemoServlet";
        		    $http.get(url).success( function(response) {
        		    	$scope.time=response;
                     });
        		 };
        	 
         });
      </script>
   <title>第一個AngularJS程序</title>
   </head>
   <body ng-app="myapp">
      <div ng-controller="AjaxController" >
         <h2>current time:{{time}}</h2>
         <button ng-click="getTime()">get current time</button>
      </div>
      
   </body>
</html>