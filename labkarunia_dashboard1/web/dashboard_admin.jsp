<%-- 
    Document   : dashboard
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <%@include file='defaultextend.jsp'%>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>lab karunia</title>

        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue-apexcharts"></script>
        <style>
            #total {
                top: 20px;
                left: 30px;
                /*background-color: green;*/
                height: 140px;
                display: flex;
            }
            #total_sales {
                top: 20px;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: white;
                height: 100px;
                width: 307px;
                cursor: pointer;
                color: white;
                position: relative;
                color: red;
            }
            #total_items_sold {
                top: 20px;
                left: 70px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: white;
                height: 100px;
                width: 307px;
                cursor: pointer;
                color: white;
                position: relative;
                color: blue;
            }
            #total_earning {
                padding-top: 10px;
                padding-left: 10px;

                top: 20px;
                left: 110px;
                background-color: white;
                height: 100px;
                width: 308px;
                cursor: pointer;
                color: white;
                position: relative;
                color: green;
            }
            #total_customers {
                padding-left: 10px;
                padding-top: 10px;
                top: 20px;
                left: 150px;
                background-color: white;
                height: 100px;
                width: 308px;
                cursor: pointer;
                color: white;
                position: relative;
                color: purple;
            }

            #today {
                /*background-color: blue;*/
                height: 80px;
                display: flex;
                position: relative;
            }
            #today_summary {
                color: white;
                top: 20px;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #29B19C;
                position: relative;
                height: 50px;
                /*width: 293px;*/
                width: 436px;
                margin-right: 20px;
                cursor: pointer;
            }
            #today_summary:hover {
                color: white;
                background-color: #196f62;
            }
            #today_item {
                cursor: pointer;
                color: white;
                top: 20px;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #AB4C8A;
                position: relative;
                height: 50px;
                /*width: 293px;*/
                width: 436px;
                margin-right: 20px;

            }
            #today_item:hover{
                color: white;
                background-color: #822361;

            }
            #today_detail {
                cursor: pointer;
                color: white;
                top: 20px;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #4857AB;
                position: relative;
                height: 50px;
                /*width: 293px;*/
                width: 436px;
            }
            #today_detail:hover {
                color: white;
                background-color: #1e2967;
            }
            #statistic {
                margin-top: 20px;
                margin-left: 30px;
                padding-top: 10px;
                background-color: white;
                height: 350px;
                display: flex;
                position: relative;
                width: 1350px;
            }
            #statistic_title {
                font-weight: 600;
            }
            #statistic_value {
                margin-left: 10px;
                font-weight: 600;
            }
            #bottom_bar {
                width: 1400px;
                height: 450px;
                /*display: flex;*/
                position: relative;
                /*background-color: greenyellow;*/
            }
            #outlet_sales {
                font-weight: 600;
                padding: 10px;
                margin-left: 30px;
                margin-top: 20px;
                margin-right: 20px;
                background-color: white;
                height: 400px;
                /*display: flex;*/
                position: relative;
                /*width: 540px;*/
            }
            #outlet_header {
                /*font-weight: 600;*/
                /*padding: 10px;*/
                /*                margin-left: 30px;
                                margin-top: 20px;*/
                /*margin-right: 20px;*/
                background-color: white;
                height: 30px;
                display: flex;
                position: relative;
                /*width: 500px;*/
                /*background-color: red;*/
            }
            #outlet_value {
                position: relative;
                left: 245px;
                color: #29B19C;
                font-size: 12px;
            }
            #quick_detail {
                padding: 10px;
                font-weight: 600;
                margin-top: 20px;
                margin-left: 20px;
                background-color: white;
                height: 400px;
                /*display: flex;*/
                position: relative;
                width: 480px;
            }
            #quick_value {
                position: relative;
                left: 120px;
                color: #29B19C;
                font-size: 12px;
            }
            #tanggal_dashboard_from{
                width: 200px; 
                padding: 0px;    
            }
            #tanggal_dashboard_to{
                width: 200px; 
                padding: 0px;    
            }
            #bar_dashboard{
                display: inline; 
                color: #29B19C; 
                width: -webkit-fill-available;
            }
            #brand_id_dashboard{
                width: 250px; 
                padding: 0px; 
                margin-left: 20px;
            }
            #outlet_and_date_dashboard{
                top: 10px;
                margin-left: 30px;
                background-color: white;
                height: 50px;
                display: flex;
                position: relative;
                width: 1350px;
            }
            #search_dashboard{
                margin-left: 10px; 
                margin-right: 20px; 
            }
            body{
                zoom: 80%;
            }
            #chart {
                max-width: 1300px;
                margin: 35px auto;
                width: 1250px; 
                float: left;
            }
            #app{
                height: 300px; 
                float: left; 
                margin-left: -90px; 
                margin-top: 30px;
            }

            /*---------------------------------------------------------------------------------*/            

            @media only screen and (max-width: 400px) {
                body{
                    zoom: 80%;
                }
                #chart {
                    max-width: 450px;
                    margin: 5px auto;
                    width: -webkit-fill-available; 
                    float: left;
                }
                #app{
                    width: -webkit-fill-available; 
                    height: 300px; 
                    float: left; 
                    margin-left: -90px; 
                    margin-top: 30px;
                }
                #total {
                    top: 20px;
                    left: 30px;
                    /*background-color: green;*/
                    height: 70px;
                    display: flex;
                }
                #total_sales {
                    top: 20px;
                    left: 10px;
                    padding-top: 10px;
                    padding-left: 10px;
                    background-color: white;
                    height: 60px;
                    width: 100px;
                    cursor: pointer;
                    color: white;
                    position: relative;
                    color: red;
                    font-size: 11px;
                }
                #total_items_sold {
                    top: 20px;
                    left: 20px;
                    padding-top: 10px;
                    padding-left: 10px;
                    background-color: white;
                    height: 60px;
                    width: 100px;
                    cursor: pointer;
                    color: white;
                    position: relative;
                    color: blue;
                    font-size: 11px;

                }
                #total_earning {
                    padding-top: 10px;
                    padding-left: 10px;
                    top: 20px;
                    left: 30px;
                    background-color: white;
                    height: 60px;
                    width: 100px;
                    cursor: pointer;
                    color: white;
                    position: relative;
                    color: green;
                    font-size: 11px;

                }
                #total_customers {
                    padding-left: 10px;
                    padding-top: 10px;
                    top: 20px;
                    left: 40px;
                    background-color: white;
                    height: 60px;
                    width: 100px;
                    cursor: pointer;
                    color: white;
                    position: relative;
                    color: purple;
                    font-size: 11px;

                }

                #today {
                    /*background-color: blue;*/
                    height: 80px;
                    display: flex;
                    position: relative;
                }
                #today_summary {
                    color: white;
                    top: 20px;
                    left: 10px;
                    padding-top: 10px;
                    padding-left: 10px;
                    background-color: #29B19C;
                    position: relative;
                    height: 50px;
                    /*width: 293px;*/
                    width: 120px;
                    margin-right: 20px;
                    cursor: pointer;
                }
                #today_summary:hover {
                    color: white;
                    background-color: #196f62;
                }
                #today_item {
                    cursor: pointer;
                    color: white;
                    top: 20px;
                    left: 25px;
                    padding-top: 10px;
                    padding-left: 10px;
                    background-color: #AB4C8A;
                    position: relative;
                    height: 50px;
                    /*width: 293px;*/
                    width: 120px;
                    margin-right: 20px;

                }
                #today_item:hover{
                    color: white;
                    background-color: #822361;

                }
                #today_detail {
                    cursor: pointer;
                    color: white;
                    top: 20px;
                    left: 40px;
                    padding-top: 10px;
                    padding-left: 10px;
                    background-color: #4857AB;
                    position: relative;
                    height: 50px;
                    /*width: 293px;*/
                    width: 120px;
                }
                #today_detail:hover {
                    color: white;
                    background-color: #1e2967;
                }
                #statistic {
                    margin-top: 20px;
                    margin-left: 10px;
                    padding-top: 10px;
                    background-color: white;
                    height: 350px;
                    display: flex;
                    position: relative;
                    width: 430px;
                }
                #statistic_title {
                    font-weight: 600;
                }
                #statistic_value {
                    margin-left: 10px;
                    font-weight: 600;
                }
                #bottom_bar {
                    width: 450px;
                    height: 450px;
                    /*display: flex;*/
                    position: relative;
                    /*background-color: greenyellow;*/
                }
                #outlet_sales {
                    font-weight: 600;
                    padding: 5px;
                    margin-left: 10px;
                    margin-top: 10px;
                    margin-right: 10px;
                    background-color: white;
                    height: 400px;
                    /* display: flex; */
                    position: relative;
                    width: -webkit-fill-available;
                }
                #outlet_header {
                    /*font-weight: 600;*/
                    /*padding: 10px;*/
                    /*                margin-left: 30px;
                    margin-top: 20px;*/
                    /*margin-right: 20px;*/
                    background-color: white;
                    height: 30px;
                    display: flex;
                    position: relative;
                    /*width: 500px;*/
                    /*background-color: red;*/
                }
                #outlet_value {
                    position: relative;
                    left: 245px;
                    color: #29B19C;
                    font-size: 12px;
                }
                #quick_detail {
                    padding: 10px;
                    font-weight: 600;
                    margin-top: 20px;
                    margin-left: 20px;
                    background-color: white;
                    height: 400px;
                    /*display: flex;*/
                    position: relative;
                    width: 480px;
                }
                #quick_value {
                    position: relative;
                    left: 120px;
                    color: #29B19C;
                    font-size: 12px;
                }


                #tanggal_dashboard_from{
                    width: 90px; 
                    padding: 0px;    
                }
                #tanggal_dashboard_to{
                    width: 90px; 
                    padding: 0px;    
                }
                #add_item_text{
                    display: none;
                }
                #bar_dashboard{
                    padding-top: 10px;
                    display: inline; 
                    color: #29B19C; 
                    width: 420px;
                }
                #brand_id_dashboard{
                    width: 100px; 
                    padding: 0px; 
                    margin-left: 10px;
                }
                #outlet_and_date_dashboard{
                    top: 10px;
                    margin-left: 10px;
                    background-color: white;
                    height: 50px;
                    display: flex;
                    position: relative;
                    width: 430px;
                }
                #search_dashboard{
                    margin-left: 10px; 
                    margin-right: 10px; 
                }
                .fa-chart-bar{
                    display: none;
                }
                .hilangkan{
                    display: none;
                }
                table{
                    margin: 0 auto;
                    width: 100%;
                    clear: both;
                    border-collapse: collapse;
                    table-layout: fixed;
                    word-wrap:break-word;
                }

                #table_brand{
                    font-size: 10px; 
                    font-weight: 100;
                    width: 0%;
                }

            }

        </style>
        <script>
            $(document).ready(function () {

                $.getJSON('opt?action=option_brand', function (data) {
                    var options = '<option selected="true">All Merchant</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].brand_id + '">' + data[i].brand_name + '</option>';
                    }
                    $("select#brand_id_dashboard").html(options);
                });



                var userlevel = window.localStorage.getItem('userlevel');
                if (userlevel !== 'administrator') {
                    window.location.href = "ho";
                }
                var layar = window.screen.availWidth;
                if (layar < 400) {

                }
                getGraph();
                getTableoutlet();
            });
            function getTableoutlet() {
                var tanggal_from = document.getElementById('tanggal_dashboard_from').value;
                var tanggal_to = document.getElementById('tanggal_dashboard_to').value;
                var brand_id = document.getElementById('brand_id_dashboard').value;
                var datjson = new Object();
                if (tanggal_from === '') {
                    datjson.tanggal_from = 'today';
                } else {
                    datjson.tanggal_from = $('#tanggal_dashboard_from').val();
                }
                if (tanggal_to === '') {
                    datjson.tanggal_to = 'today';
                } else {
                    datjson.tanggal_to = $('#tanggal_dashboard_to').val();
                }
                if (brand_id === '' || brand_id === 'All Merchant') {
                    datjson.brand_id = 'all';
                } else {
                    datjson.brand_id = $('#brand_id_dashboard').val();
                }
                var table = $('#table_brand').DataTable({
                    "ajax": {
                        "url": "/ridapos_dashboard/brand_sal?data=" + JSON.stringify(datjson),
                        "type": "GET",
                        "dataSrc": "",
                        "contentType": "application/json"
                    },
                    "columns": [
                        {data: "brand_id", width: '5px'},
                        {data: "brand_name", width: '5px'},
                        {data: "transaction", width: '5px'},
                        {data: "amount", width: '5px'},
                        {data: "pajak", width: '5px'},
                        {data: "plus_pajak", width: '5px'}
                    ]
                });
            }


            function getGraph() {

                var tanggal_from = document.getElementById('tanggal_dashboard_from').value;
                var tanggal_to = document.getElementById('tanggal_dashboard_to').value;
                var brand_id = document.getElementById('brand_id_dashboard').value;
                var datjson2 = new Object();
                if (tanggal_from === '') {
                    datjson2.tanggal_from = 'today';
                } else {
                    datjson2.tanggal_from = $('#tanggal_dashboard_from').val();
                }
                if (tanggal_to === '') {
                    datjson2.tanggal_to = 'today';
                } else {
                    datjson2.tanggal_to = $('#tanggal_dashboard_to').val();
                }
                if (brand_id === '' || brand_id === 'All Merchant') {
                    datjson2.brand_id = 'all';
                } else {
                    datjson2.brand_id = $('#brand_id_dashboard').val();
                }
                $.ajax({
                    url: "brand_graph",
                    type: 'post',
                    dataType: "json",
                    data: JSON.stringify(datjson2),
                    contentType: 'application/json',
                    mimeType: 'application/json',
                    success: function (response) {
                        if (response.resp_code == 0000) {
                            var data_tgl = response.tgl_trx;
                            var data_amount_trx = response.total_amount;
                            var data_total_trx = response.total_trx;
                            new Vue({
                                el: '#app',
                                components: {
                                    apexchart: VueApexCharts
                                },
                                data: {
                                    series: [{
                                            name: 'amount transaction',
                                            data: data_amount_trx
                                        }, {
                                            name: 'total trx',
                                            data: data_total_trx
                                        }],
                                    chartOptions: {
                                        chart: {
                                            height: 350,
                                            type: 'area'
                                        },
                                        dataLabels: {
                                            enabled: true
                                        },
                                        stroke: {
                                            curve: 'smooth'
                                        },
                                        xaxis: {
                                            type: 'datetime',
                                            categories: data_tgl
                                        },
                                        tooltip: {
                                            x: {
                                                format: 'dd/MM/yy HH:mm'
                                            }
                                        }
                                    }
                                }
                            });
                        } else {
                            alert('no data');
                        }
                    }
                });
            }

        </script>
    </head>
    <body class="hold-transition sidebar-mini">
        <!--<>-->
        <div class="wrapper">
            <!-- Navbar -->
            <%@include file='header_admin.jsp'%>
            <!-- /.navbar -->
            <!-- Main Sidebar Container -->
            <%@include file='sidebar_left_admin.jsp'%>
            <!--end sidebar-->
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <div class="card" style="background-color: #f4f6f9">
                    <div id="outlet_and_date_dashboard">
                        <div id="bar_dashboard">
                            <label id="add_item_text" style="margin: 10px;
                                   font-weight: 600;
                                   font-size: 20px;
                                   color: #29B19C; 
                                   cursor: pointer;">
                                Dashboard
                            </label>
                            <label style="font-weight: 100; color: black; margin-left: 5px">from</label>
                            <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="tanggal_dashboard_from" class="col-md-3" name="tanggal_dashboard_from" placeholder="Today">
                            <label style="font-weight: 100; color: black; margin-left: 5px">to</label>                        
                            <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="tanggal_dashboard_to" class="col-md-3" name="tanggal_dashboard_to" placeholder="Today">
                            <select id="brand_id_dashboard" class="col-md-3" name="brand_id_dashboard">
                            </select>
                            <i id="search_dashboard" class="icon fa fa-search" cursor: pointer" onclick="run()"></i>
                        </div>
                    </div>
                    <div id="statistic">
                        <div id="statistic_value">
                            Sales Chart
                        </div>
                        <br>
                        <div id="app">
                            <div id="chart">
                                <apexchart id="ff" type="area" height="250" :options="chartOptions" :series="series"></apexchart>
                            </div>
                        </div>
                    </div>
                    <div id="bottom_bar">
                        <div id="outlet_sales">
                            <div id="outlet_header">
                                <div id="outlet_title">
                                    Merchant Sales
                                </div>
                            </div>
                            <div id="outlet_content">
                                <div class="row">
                                    <div class="container">        
                                        <table id="table_brand">
                                            <thead>  
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Trx</th>
                                                    <th>Amount</th>
                                                    <th>Tax</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>  
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.content-wrapper -->
            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- Main Footer -->
            <%@include file='footer.jsp'%>
        </div>
    </body>
    <script>
        function run() {
            $("#ff").remove();
            $('#chart').append('<apexchart id="ff" type="area" height="250" :options="chartOptions" :series="series"></apexchart>');
            getGraph();
            $('#table_brand').dataTable().fnClearTable();
            $('#table_brand').dataTable().fnDestroy();
            getTableoutlet();

        }
    </script>
</html>