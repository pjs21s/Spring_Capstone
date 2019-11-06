<%@ page language="java" contentType="text/HTML;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
/* Set the size of the div element that contains the map */
	#map {
		height: 400px;  /* The height is 400 pixels */
		width: 100%;  /* The width is the width of the web page */
		}
</style>
</head>
<body>
<div id="map"></div>
<script>
function initMap() {
	  var center = {lat: 36.802258, lng: 127.107335};  var locations = [
	    ['학습&마음심리상담센터<br>\
	    	충청남도 천안시 서북구 불당동 1112<br>\
	   <a href="https://goo.gl/maps/x9eagj4gyLoavqos5">Get Directions</a>',   36.802258, 127.107335],
	    ['온다라심리교육상담실<br>\
	    	전라북도 전주시 덕진구 금암동 482-14<br>\
	   <a href="https://goo.gl/maps/begWsbntp9V7ZWxQA">Get Directions</a>', 35.835475, 127.135583],
	    ['최영미마음 상담센터<br>\
	    	광주광역시 북구 우산동 207-11<br>\
	    <a href="https://goo.gl/maps/hQz4w2iAeQbqLLr68">Get Directions</a>', 35.173348, 126.924999],
	    ['호연심리상담센터<br>\
	    	서울특별시 강남구 역삼동 선릉로 431<br>\
	    <a href="https://goo.gl/maps/CeHgUjYzGbax5u6ZA">Get Directions</a>', 37.503411, 127.049094],
	    ['이화심리 상담연구소<br>\
	    	대구시 남구 봉덕2동 1206-1 삼덕빌딩 5층<br>\
	   <a href="https://goo.gl/maps/G4xEemePwLHJxVjSA">Get Directions</a>', 35.882001, 128.592237]
	  ];var map = new google.maps.Map(document.getElementById('map'), {
	    zoom: 7,
	    center: center
	  });var infowindow =  new google.maps.InfoWindow({});var marker, count;for (count = 0; count < locations.length; count++) {
	    marker = new google.maps.Marker({
	      position: new google.maps.LatLng(locations[count][1], locations[count][2]),
	      map: map,
	      title: locations[count][0]
	    });google.maps.event.addListener(marker, 'click', (function (marker, count) {
	      return function () {
	        infowindow.setContent(locations[count][0]);
	        infowindow.open(map, marker);
	      }
	    })(marker, count));
	  }
	}
</script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key내키&callback=initMap">
</script>
</body>
</html>