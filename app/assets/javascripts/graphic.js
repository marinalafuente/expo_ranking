function generateChart(data){
    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: 'This month'
        },
        xAxis: {
            categories: ['Expo1', 'Expo2', 'Expo3']
        },
        yAxis: {
            title: {
                text: 'Most visited'
            }
        },
        series: data,
    });
}

function printChart() {
    $.ajax({
        url: '/chart-data',
        success: generateChart
    });
}

$(function showGraphic() {
    printChart();
});