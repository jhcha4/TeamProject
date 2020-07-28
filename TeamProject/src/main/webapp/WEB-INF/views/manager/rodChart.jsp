<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

google.load('visualization', '1.0', {'packages':['corechart']});
google.setOnLoadCallback(drawChart);

function drawChart() {
	var data = new google.visualization.DataTable();
	data.addColumn('string', '인물 ');
	data.addColumn('number', ' 취득수 ');
	data.addRows([
			['티모', 51], ['베인', 34],
			['문도', 20], ['이즈리얼', 11],
			['아리', 8], ['애쉬', 4],
	]);

	var opt = {
		'title': '인기 투표 ',
		'width': 600, 'height': 400,
	};

	var chart = new google.visualization.BarChart(
			document.getElementById('chart_div'));
	chart.draw(data, opt);
}

</script>
</head>
<body>
<div id="chart_div"></div>
</body>
</html>