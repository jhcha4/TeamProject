<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">



      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
	  
	  var count = 0;
	  var data;
	  var chart;
      var options;
	  
      function drawChart() {
    	  var jsonData = $.ajax({
    		 url : "${path}/visit/rodChart",
    		 dataType : "json",
    		 async : false
    	  }).responseText;
    	  console.log(jsonData);
	  data = new google.visualization.DataTable(jsonData);
	 
	  
	  
        options = {
          chart: {
            title: 'Analysis of Dialogue System',
            subtitle: '',
          }
        };

        chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      function btn(){
    	  count++;
    	  data.addRow(['Dialogue'+count,string($("#visit_time").value),Number($("input[name=todayCon]").value)]);
      	  chart.eroaw(data. options)
      }
     
    </script>

    <div id="columnchart_material" style="width: 800px; height: 500px;"></div>
 
	<button id="btn" onclick="btn();">버튼</button>

<c:forEach items="${list}" var="visitVo">
<input type="text" id="visit_time"name="visit_time" value="${visitVo.visit_time}">
<input type="text" id="todayCon" name="todayCon" value="${visitVo.todayCon}"> 
</c:forEach>

