<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<style><%@include file="/WEB-INF/jsp/blog.css"%></style>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $interval) {
  $scope.theTime = new Date().toLocaleTimeString();
  $interval(function () {
      $scope.theTime = new Date().toLocaleTimeString();
  }, 1000);
});
</script>

</head>
<body>

<section>
<header >
<div ng-app="myApp" ng-controller="myCtrl"> 
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Logout</a>
  <a href="#">Contact</a>
</div>

 <span style="font-size:20px;cursor:pointer"  text-align="right"   align= right onclick="openNav()">&#9776; Home</span> 
<h6 align=right style="font-size:20px;"> {{theTime}}</h6>
<center>Personal Blog </center>



  
  
  
  
  <center><img src="/rajesh.jpg" alt="Girl in a jacket" width="150" height="150"></center>
  
 
  </div>
  </header>
</section>
<section>
  <nav>
    <ul>
      <li><a href="/2.html">Education</a></li>
      <li><a href="/3.html">Work Exp</a></li>
      <li><a href="/4.html">Home</a></li>
    </ul>
  </nav>
  
  <article>
    <h1>Personal Info</h1>
    <p>Working as Associate Consultant in Cognizant Technology Services India Limited, Pune, from Jan-2019 to till date.</p>
     <p>Worked as Associate Consultant in Capgemini Technology Services India Limited, Pune, from July-2016 to Jan-2019.</p>
	<p>Worked as Software Engineer in Syntel Pvt.Ltd, Pune, from Feb-2015 to July-2016    </p>
	
     
     
     </article>
  
 
</section>

<footer>

  <p>Footer    </p>
</footer>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "150px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</body>
</html>
