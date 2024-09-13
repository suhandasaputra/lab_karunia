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
            body{
                zoom: 80%;
            }
            #total {
                top: 20px;
                left: 30px;
                /*background-color: green;*/
                height: 140px;
                display: flex;
            }
            #total_reservation {
                text-align: center;
                top: 20px;
                margin-left: 30px;
                padding-top: 10px;
                background-color: white;
                height: 100px;
                width: 322px;
                cursor: pointer;
                color: white;
                position: relative;
                color: #bb3434;
                border: 3px solid #bb3434;
            }
            #total_reservation:hover{
                color: #720e0e;
                border: 3px solid #720e0e;
            }
            #total_antrian {
                text-align: center;
                top: 20px;
                margin-left: 20px;
                padding-top: 10px;
                /*padding-left: 10px;*/
                background-color: white;
                height: 100px;
                width: 322px;
                cursor: pointer;
                color: white;
                position: relative;
                color: #4857AB;
                border: 3px solid #4857AB;
            }
            #total_antrian:hover{
                color: #1e2967;
                border: 3px solid #1e2967;
            }
            #total_sample {
                text-align: center;
                padding-top: 10px;
                /*padding-left: 10px;*/
                top: 20px;
                margin-left: 20px;
                background-color: white;
                height: 100px;
                width: 322px;
                cursor: pointer;
                color: white;
                position: relative;
                color: #3ab140;
                border: 3px solid #3ab140;
            }
            #total_sample:hover{
                color: #318b35;
                border: 3px solid #318b35;
            }
            #total_result {
                text-align: center;
                /*padding-left: 10px;*/
                padding-top: 10px;
                top: 20px;
                margin-left: 20px;
                background-color: white;
                height: 100px;
                width: 322px;
                cursor: pointer;
                color: white;
                position: relative;
                color: #9a33a9;
                border: 3px solid #9a33a9;
            }
            #total_result:hover{
                color: #7c198b;
                border: 3px solid #7c198b;
            }

            #today {
                /*background-color: blue;*/
                height: 80px;
                display: flex;
                position: relative;
            }
            #go_to_reservation {
                color: white;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #bb3434;
                position: relative;
                height: 50px;
                /*width: 293px;*/
                width: 322px;
                cursor: pointer;
            }
            #go_to_reservation:hover {
                color: white;
                background-color: #720e0e;
            }
            #go_to_queue {
                cursor: pointer;
                color: white;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #4857AB;
                position: relative;
                height: 50px;
                /*width: 293px;*/
                width: 322px;
                margin-left: 20px;

            }
            #go_to_queue:hover{
                color: white;
                background-color: #1e2967;

            }
            #go_to_sample {
                cursor: pointer;
                color: white;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #3ab140;
                position: relative;
                height: 50px;
                margin-left: 20px;
                width: 322px
            }
            #go_to_sample:hover {
                color: white;
                background-color: #318b35;
            }

            #go_to_result {
                cursor: pointer;
                color: white;
                left: 30px;
                padding-top: 10px;
                padding-left: 10px;
                background-color: #9a33a9;
                position: relative;
                height: 50px;
                margin-left: 20px;
                width: 322px
            }
            #go_to_result:hover {
                color: white;
                background-color: #7c198b;
            }


            #statistic {

                background-color: white;
                height: 380px;
                position: relative;
                width: 50%;
                margin-right: 10px;
            }
            #statistic_title {
                padding-left: 10px;
                font-weight: 600;
            }
            #statistic_value {
                /*background-color: yellow;*/
                font-weight: 600;
            }

            #outlet_reservation {
                padding: 10px;

                margin-left: 10px;
                font-weight: 600;
                background-color: white;
                height: 380px;
                position: relative;
                width: 50%;
            }
            #outlet_header {
                background-color: white;
                height: 30px;
                display: flex;
                position: relative;
            }
            #outlet_value {

                /*background-color: green;*/
                position: relative;
                color: #29B19C;
                font-size: 12px;
                min-height: 380px;
            }


            #tanggal_dashboard_from{
                width: 300px; 
                padding: 0px;    
            }
            #tanggal_dashboard_to{
                width: 300px; 
                padding: 0px;    
            }
            #bar_dashboard{
                display: inline; 
                color: #29B19C; 
                width: -webkit-fill-available;
            }
            #outlet_id_dashboard{
                height: 28px;
                width: 300px; 
                padding: 0px; 
                margin-left: 20px;
            }
            #outlet_and_date_dashboard{
                margin-left: 30px;
                background-color: white;
                height: 50px;
                display: flex;
                position: relative;
                width: 1350px;
                margin-top: 20px;
            }
            #search_dashboard{

                margin-left: 10px; 
                margin-right: 20px; 
            }

            #chart {
                zoom: 123%;
                /*max-width: -webkit-fill-available;*/
                /*margin: 35px auto;*/
                width: -webkit-fill-available;  
                float: left;
            }
            #app{
                width: -webkit-fill-available;
                /*height: 300px;*/ 
                /*float: left;*/ 
                /*margin-left: -90px;*/ 
                /*margin-top: 20px;*/
            }

            thead input {
                width: 100%;
            }
            div.dataTables_filter,
            div.dataTables_length {
                display: inline-block;
                margin-left: 1em;
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
                #total_reservation {
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
                #total_antrian {
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
                #total_sample {
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
                #total_result {
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

                #outlet_reservation {
                    font-weight: 600;
                    padding: 5px;
                    margin-left: 10px;
                    margin-top: 10px;
                    margin-right: 10px;
                    background-color: white;
                    height: 380px;
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
                #outlet_id_dashboard{
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

            }


        </style>
        <script>
            $(document).ready(function () {
                var layar = window.screen.availWidth;
                if (layar < 400) {
//                    document.getElementById('go_to_reservation').innerHTML = 'Sales';
//                    document.getElementById('go_to_queue').innerHTML = 'Item';
//                    document.getElementById('go_to_sample').innerHTML = 'Detail';
                }

                //select outlet
                var datjson2 = new Object();
                datjson2.procCode = "200005";
                datjson2.user_id = window.localStorage.getItem('lab_user_id');
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson2),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },
                    success: function (response) {
                        if (response.respCode == 0000) {
                            var data = response.list;
                            var options = '<option selected value="">All Lab</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                            }
                            $("select#outlet_id_dashboard").html(options);
                            setTimeout(getTableoutlet, 1000);
                        } else {
                            alert('gagal mengambil data lab ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });
                fun_res();
            });
            function getTableoutlet() {
                var tanggal_from = document.getElementById('tanggal_dashboard_from').value;
                var tanggal_to = document.getElementById('tanggal_dashboard_to').value;
                var outlet = document.getElementById('outlet_id_dashboard').value;

                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                today = yyyy + '-' + mm + '-' + dd;



                var datjson2 = new Object();

                datjson2.procCode = "100006";
                datjson2.user_id = window.localStorage.getItem('lab_user_id');



                if (tanggal_from === '') {
                    datjson2.startdate = today;
                } else {
                    datjson2.startdate = $('#tanggal_dashboard_from').val();
                }
                if (tanggal_to === '') {
                    datjson2.enddate = today;
                } else {
                    datjson2.enddate = $('#tanggal_dashboard_to').val();
                }
                if (outlet === '' || outlet === 'All Lab') {
                    datjson2.outlet_id = 'all';
                } else {
                    datjson2.outlet_id = $('#outlet_id_dashboard').val();
                }
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson2),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },
                    success: function (response) {
                        if (response.respCode == 0000) {
                            document.getElementById("reservation").innerHTML = masking_duit(response.total.reservation);
                            document.getElementById("result").innerHTML = masking_duit(response.total.result);
                            document.getElementById("queue").innerHTML = masking_duit(response.total.queue);
                            document.getElementById("sample").innerHTML = masking_duit(response.total.sampleplate);

                            var data_tgl = response.grafik.result_date;
                            var data_total_trx = response.grafik.total;
                            var options = {
                                series: [{
                                        name: 'result',
                                        data: data_total_trx
//                                        data: ["8","3","0","0","0","13","0","2","2","0","0","0","34","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"],
                                    }],
                                chart: {

                                    toolbar: {
                                        show: false
                                    },

                                    height: 250,
                                    type: 'area'
                                },
                                dataLabels: {
                                    enabled: false
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
                                    },
                                },
                            };

                            var chart = new ApexCharts(document.querySelector("#chart"), options);
                            chart.render();


                            var datanya = response.listlab;
                            $('#table_outlet').DataTable({
                                "scrollX": true,
                                "data": datanya,
                                "columns": [
                                    {data: "outlet_id"},
                                    {data: "outlet_name"},
                                    {data: "reservation"},
                                    {data: "queue"},
                                    {data: "sampleplate"},
                                    {data: "result"}

                                ],
                                dom: 'Bfrtip',
                                order: [0, 'desc'],
                                buttons: [
                                    {
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list lab",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list lab",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list lab",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list lab",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "print",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    }
                                                ]
                                    }
                                ]
                            });


                            $('#table_data').DataTable({
                                "data": datanya
                            });

                        } else {
                            alert('failed get data dashboard : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden')
                    }
                });
            }






            function fun_res() {
                document.getElementById('titlenya').innerHTML = 'Reservation';
                document.getElementById('titlenya').style.color = '#bb3434';
                destroyReservasi();
                destroyAntrian();
                destroySample();
                destroyReport();
                $('#table_reservasi_db_wrapper').remove();
                $('#table_antrian_db_wrapper').remove();
                $('#table_sample_db_wrapper').remove();
                $('#table_result_db_wrapper').remove();
                $('#table_reservasi_db').remove();
                $('#table_antrian_db').remove();
                $('#table_sample_db').remove();
                $('#table_result_db').remove();
                getListReservasi();
            }

            function fun_ant() {
                document.getElementById('titlenya').innerHTML = 'Queue';
                document.getElementById('titlenya').style.color = '#4857AB';
                destroyReservasi();
                destroyAntrian();
                destroySample();
                destroyReport();
                $('#table_reservasi_db_wrapper').remove();
                $('#table_antrian_db_wrapper').remove();
                $('#table_sample_db_wrapper').remove();
                $('#table_result_db_wrapper').remove();
                $('#table_reservasi_db').remove();
                $('#table_antrian_db').remove();
                $('#table_sample_db').remove();
                $('#table_result_db').remove();
                getListAntrian();
            }

            function fun_sam() {
                document.getElementById('titlenya').innerHTML = 'Sample Plate';
                document.getElementById('titlenya').style.color = '#3ab140';
                destroyReservasi();
                destroyAntrian();
                destroySample();
                destroyReport();
                $('#table_reservasi_db_wrapper').remove();
                $('#table_antrian_db_wrapper').remove();
                $('#table_sample_db_wrapper').remove();
                $('#table_result_db_wrapper').remove();
                $('#table_reservasi_db').remove();
                $('#table_antrian_db').remove();
                $('#table_sample_db').remove();
                $('#table_result_db').remove();
                getListSample();
            }

            function fun_rep() {
                document.getElementById('titlenya').innerHTML = 'Result';
                document.getElementById('titlenya').style.color = '#9a33a9';
                destroyReservasi();
                destroyAntrian();
                destroySample();
                destroyReport();
                $('#table_reservasi_db_wrapper').remove();
                $('#table_antrian_db_wrapper').remove();
                $('#table_sample_db_wrapper').remove();
                $('#table_result_db_wrapper').remove();
                $('#table_reservasi_db').remove();
                $('#table_antrian_db').remove();
                $('#table_sample_db').remove();
                $('#table_result_db').remove();
                getListReport();
            }



            function destroyReservasi() {
                $('#table_reservasi_db').dataTable().fnClearTable();
                $('#table_reservasi_db').dataTable().fnDestroy();
            }
            function getListReservasi() {
                $('#tbl_reservasi').append(`
                        <table class="table" id="table_reservasi_db" style="font-size: 12px; width: 100%;">
                            <thead>  
                                <tr>
                                    <th>booking date</th>
                                    <th>booking code</th>
                                    <th>patient id</th>                                                                    
                                    <th>idcard number</th>
                                    <th>name</th>
                                    <th>gender</th>
                                    <th>birthdate</th>
                                    <th>email</th>
                                    <th>phone</th>
                                    <th>nationality</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>`);




                var datjson1 = new Object();
                datjson1.procCode = "200018";
                datjson1.user_id = window.localStorage.getItem('lab_user_id');
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson1),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },

                    success: function (response) {
                        if (response.respCode == 0000) {
                            var datanya = response.list;
                            $('#table_reservasi_db').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "queue_date"},
                                    {data: "book_code"},
                                    {data: "patient_id"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "gender"},
                                    {data: "birth_date"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "citizenship_name"}

                                ],
                                dom: 'Bfrtip',
                                scrollX: true,
                                order: [1, 'desc'],
                                buttons: [
                                    {
                                        className: 'btn_colvis_reservasi_pasien',
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {
                                        className: 'btn_export_reservasi_pasien',
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list Reservasi",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list Reservasi",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list Reservasi",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list Reservasi",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "print",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    }
                                                ]
                                    }
                                ]
                            });
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
//                        if (userlevel == 8) {
//                            $('.btn-primary').remove();
//                            $('.btn_colvis_reservasi_pasien').remove();
//                            $('.btn_export_reservasi_pasien').remove();
//                        } else if (userlevel == 1) {
//                            popupeditreservasi();
//                        } else if (userlevel == 6) {
//                            popupeditreservasi();
//                        } else if (userlevel == 5) {
//                            popupeditreservasi();
//                        } else if (userlevel == 4) {
//                            popupeditreservasi();
//                        } else if (userlevel == 3) {
//                            popupeditreservasi();
//                        } else if (userlevel == 2) {
//                            popupeditreservasi();
//                        }
                    }
                });
            }


            function destroyAntrian() {
                $('#table_antrian_db').dataTable().fnClearTable();
                $('#table_antrian_db').dataTable().fnDestroy();
            }
            function getListAntrian() {
                $('#tbl_antrian').append(`
                        <table class="table" id="table_antrian_db" style="font-size: 12px; width: 100%;">
                            <thead>  
                                <tr>
                                    <th>queue_date</th>
                                    <th>queue_no</th>
                                    <th>patient_id</th>
                                    <th>idcard_number</th>
                                    <th>name</th>
                                    <th>birth_date</th>
                                    <th>gender</th>
                                    <th>email</th>
                                    <th>ins_name</th>
                                    <th>citizenship</th>
                                    <th>detail_jasa</th>
                                    <th>no_plate</th>
                                    <th>book_code</th>
                                    <th>book_status</th>
                                    <th>invoice_no</th>
                                    <th>invoice_status</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>`);


                var datjson1 = new Object();
                datjson1.procCode = "200019";
                datjson1.user_id = window.localStorage.getItem('lab_user_id');
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson1),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },

                    success: function (response) {
                        if (response.respCode == 0000) {


                            var datanya = response.list;
                            $('#table_antrian_db').DataTable({

                                "data": datanya,
                                "columns": [

                                    {data: "queue_date"},
                                    {data: "queue_no"},
                                    {data: "patient_id"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "birth_date"},
                                    {data: "gender"},
                                    {data: "email"},
                                    {data: "ins_name"},
                                    {data: "citizenship_name"},
                                    {data: "detail_jasa"},
                                    {data: "plate_no"},
                                    {data: "book_code"},
                                    {data: "book_status"},

                                    {data: "invoice_no"},
                                    {data: "invoice_status"
                                    },
                                    {data: "book_code",
                                        render: function (data) {
                                            return '<button type="button" class="btn btn-primary" id="print_guys">Print</button>';
                                        }
                                    }

                                ],
                                dom: 'Bfrtip',
                                scrollX: true,
                                order: [0, 'desc'],
                                buttons: [
                                    {
                                        className: 'btn_colvis_antrian',
                                        extend: 'colvis',
                                        text: 'Visibility'
                                    },
                                    {
                                        className: 'btn_export_antrian',
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list antrian",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list antrian",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list antrian",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list antrian",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "print",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    }
                                                ]
                                    }
                                ]
                            });
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
//                        if (userlevel == 8) {
//                            $('.btn-primary').remove();
//                            $('.btn_colvis_antrian').remove();
//                            $('.btn_export_antrian').remove();
//                        } else if (userlevel == 1) {
//                            popupeditantrian();
//                        } else if (userlevel == 6) {
//                            popupeditantrian();
//                        } else if (userlevel == 5) {
//                            popupeditantrian();
//                        } else if (userlevel == 4) {
//                            popupeditantrian();
//                        } else if (userlevel == 3) {
//                            popupeditantrian();
//                        } else if (userlevel == 2) {
//                            popupeditantrian();
//                        }
                    }
                });
            }


            function destroySample() {
                $('#table_sample_db').dataTable().fnClearTable();
                $('#table_sample_db').dataTable().fnDestroy();
            }
            function getListSample() {
                $('#tbl_sample').append(`
        <table class="table" id="table_sample_db" style="font-size: 12px; width: 100%;">
                            <thead>
                                <tr>
                                    <th>tanggal booking</th>                                  
                                    <th>kode booking</th>
                                    <th>no ktp</th>
                                    <th>nama</th>
                                    <th>negara</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>`);
                var datjson1 = new Object();
                datjson1.procCode = "200023";
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson1),
                    type: 'post',
                    success: function (response) {
                        if (response.respCode == 0000) {
                            var datanya = response.list;
                            $('#table_sample_db').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "createdate"},
//                                    {data: "queue_no"},
                                    {data: "book_code"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "citizenship"}
                                ],
                                dom: 'Bfrtip',
                                scrollX: true,
                                order: [0, 'desc'],
                                buttons: [
                                    {
                                        extend: 'colvis',
                                        text: 'Visibility'
                                    },
                                    {
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list sample",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list sample",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list sample",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list sample",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "print",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    }
                                                ]
                                    }
                                ]
                            });
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    }
                });
            }


            function destroyReport() {
                $('#table_report').dataTable().fnClearTable();
                $('#table_report').dataTable().fnDestroy();
            }
            function getListReport() {
                $('#tbl_result').append(`
                            <table class="nowrap" id="table_result_db" style="font-size: 12px; width: 100%;">
                            <thead>  
                                <tr>
                                    <th>Invoice</th>
                                    <th>No. Invoice</th>
                                    <th>No. Antrian</th>
                                    <th>Kode Pasien</th>
                                    <th>Lab</th>
                                    <th>Institusi</th>
                                    <th>Tgl Reservasi</th>
                                    <th>Tgl Antrian</th>
                                    <th>Waktu Antrian</th>
                                    <th>Nama Pasien</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Tgl Lahir</th>
                                    <th>Kewarganegaraan</th>
                                    <th>No. Identitas</th>
                                    <th>Email</th>
                                    <th>No. HP</th>
                                    <th>Kode Booking</th>
                                    <th>Sales</th>
                                    <th>Tipe Pembayaran</th>
                                    <th>Metode Pembayaran</th>
                                    <th>Tujuan</th>
                                    <th>Jasa Pelayanan</th>
                                    <th>Produk Reagent</th>
                                    <th>Tgl Plating</th>
                                    <th>No. Plate</th>
                                    <th>CT 1</th>
                                    <th>CT 2</th>
                                    <th>CT 3</th>
                                    <th>Hasil (Mesin)</th>
                                    <th>Tgl Hasil (Mesin)</th>
                                    <th>Hasil Final (QC)</th>
                                    <th>Tgl Final (QC)</th>
                                    <th>Link PDF Hasil</th>
                                    <th>Email terkirim</th>
                                    <th>Tgl Email</th>
                                    <th>Tower</th>
                                    <th>No. Kamar</th>
                                    <th>User Reservasi</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>`);

                var datjson = new Object();
                datjson.procCode = "200028";
                datjson.user_id = window.localStorage.getItem('lab_user_id');
                datjson.startdate = 'all';
                datjson.enddate = 'all';
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },

                    success: function (response) {
                        if (response.respCode == 0000) {
                            var datanya = response.list;
                            $('#table_result_db thead tr')
                                    .clone(true)
                                    .addClass('filters')
                                    .appendTo('#table_result_db thead');
                            $('#table_result_db').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "invoice_date"},
                                    {data: "invoice_no"},
                                    {data: "queue_no"},
                                    {data: "patient_id"},
                                    {data: "outlet_name"},
                                    {data: "ins_name"},
                                    {data: "book_date"},
                                    {data: "queue_date"},
                                    {data: "queue_hour"},
                                    {data: "name"},
                                    {data: "gender"},
                                    {data: "birth_date"},
                                    {data: "citizenship_name"},
                                    {data: "idcard_number"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "book_code"},
                                    {data: "sales_name"},
                                    {data: "tp_name"},
                                    {data: "metode_pembayaran"},
                                    {data: "tc_name"},
                                    {data: "jp_name"},
                                    {data: "product_name"},
                                    {data: "plate_date"},
                                    {data: "plate_no"},
                                    {data: "ct1"},
                                    {data: "ct2"},
                                    {data: "ct3"},
                                    {data: "result_mesin"},
                                    {data: "result_mesindate"},
                                    {data: "final_result"},
                                    {data: "result_date"},
                                    {data: "pdf"},
                                    {data: "mail_sendstatus"},
                                    {data: "mail_senddate"},
                                    {data: "tower"},
                                    {data: "room"},
                                    {data: "createby"}
                                ],
                                dom: 'Bfrtip',
                                "scrollX": true,
//                                order: [1, 'desc'],
                                buttons: [
                                    {
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {
                                        className: 'btn_export_report',
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list report",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list report",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list report",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list report",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "print",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    }
                                                ]
                                    }
                                ],

                                orderCellsTop: true,
                                fixedHeader: true,
                                initComplete: function () {
                                    var api = this.api();

                                    // For each column
                                    api
                                            .columns()
                                            .eq(0)
                                            .each(function (colIdx) {
                                                // Set the header cell to contain the input element
                                                var cell = $('.filters th').eq(
                                                        $(api.column(colIdx).header()).index()
                                                        );
                                                var title = $(cell).text();
                                                $(cell).html('<input type="text" placeholder="' + title + '" />');

                                                // On every keypress in this input
                                                $(
                                                        'input',
                                                        $('.filters th').eq($(api.column(colIdx).header()).index())
                                                        )
                                                        .off('keyup change')
                                                        .on('keyup change', function (e) {
                                                            e.stopPropagation();

                                                            // Get the search value
                                                            $(this).attr('title', $(this).val());
                                                            var regexr = '({search})'; //$(this).parents('th').find('select').val();

                                                            var cursorPosition = this.selectionStart;
                                                            // Search the column for that value
                                                            api
                                                                    .column(colIdx)
                                                                    .search(
                                                                            this.value != ''
                                                                            ? regexr.replace('{search}', '(((' + this.value + ')))')
                                                                            : '',
                                                                            this.value != '',
                                                                            this.value == ''
                                                                            )
                                                                    .draw();

                                                            $(this)
                                                                    .focus()[0]
                                                                    .setSelectionRange(cursorPosition, cursorPosition);
                                                        });
                                            });
                                },
                            });
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
//                        if (userlevel == 2) {
//                            $('.btn_export_report').remove();
//                        } else if (userlevel == 6) {
//                            $('.btn_export_report').remove();
//                        }
                    }
                });
            }
        </script>
    </head>
    <body class="hold-transition sidebar-mini">
        <!--<>-->
        <div class="wrapper">
            <!-- Navbar -->
            <%@include file='header.jsp'%>
            <!-- /.navbar -->
            <!-- Main Sidebar Container -->
            <%@include file='sidebar_left.jsp'%>
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
                            <select id="outlet_id_dashboard" class="col-md-3" name="outlet_id_dashboard">
                            </select>
                            <i id="search_dashboard" class="icon fa fa-search" onclick="run()"></i>
                        </div>
                    </div>                    
                    <div id="total">
                        <div id="total_reservation" onclick="fun_res()">
                            Reservation<br class="hilangkan"><br>
                            <span style="font-size: 10px; margin-right: 30px" id="reservation"></span><i class="fa fa-chart-bar fa-2x"></i>
                        </div>
                        <div id="total_antrian" onclick="fun_ant()">
                            Queue<br class="hilangkan"><br>
                            <span style="font-size: 10px; margin-right: 30px" id="queue"></span><i class="fa fa-chart-bar fa-2x"></i>
                        </div>
                        <div id="total_sample" onclick="fun_sam()">
                            Sample Plate<br class="hilangkan"><br>
                            <span style="font-size: 10px; margin-right: 30px" id="sample" class="masking_duit"></span><i class="fa fa-chart-bar fa-2x"></i>
                        </div>
                        <div id="total_result" onclick="fun_rep()">
                            Result<br class="hilangkan"><br>
                            <span style="font-size: 10px; margin-right: 30px" id="result"></span><i class="fa fa-chart-bar fa-2x"></i>
                        </div>
                    </div>

                    <div id="middle" style="width: -webkit-fill-available; height: auto; margin: 0px 55px 30px 30px; background-color: white; padding: 10px">
                        <label id="titlenya" style="margin: 10px;font-weight: 600;font-size: 20px;">
                        </label>
                        <div id="tbl_reservasi"></div>
                        <div id="tbl_antrian"></div>
                        <div id="tbl_sample"></div>
                        <div id="tbl_result"></div>
                    </div>

                    <div id="today">
                        <a href="reg" onclick="li_reg()">
                            <div id="go_to_reservation">
                                <i class="fa fa-file"></i>
                                Go to Reservation
                            </div>
                        </a>
                        <a href="res" onclick="li_res()">
                            <div id="go_to_queue">
                                <i class="fa fa-file"></i>
                                Go to Queue
                            </div>
                        </a>
                        <a href="pla" onclick="li_pla()">
                            <div id="go_to_sample">
                                <i class="fa fa-file"></i>
                                Go to Sample Plate
                            </div>
                        </a>
                        <a href="em_has" onclick="li_em_has()">
                            <div id="go_to_result">
                                <i class="fa fa-file"></i>
                                Go to Result
                            </div>
                        </a>
                    </div>

                    <div id="bottom" style="width: -webkit-fill-available; margin: 0px 55px 0px 30px; display: inline-flex; margin-bottom: 20px;">
                        <div id="statistic">
                            <div id="statistic_title">
                                Result Chart
                            </div>
                            <div id="app">
                                <div id="chart">
                                    <!--<apexchart id="ff" type="area" height="250" :options="chartOptions" :series="series"></apexchart>-->
                                </div>
                            </div>
                        </div>
                        <div id="outlet_reservation">
                            <div id="outlet_header">
                                <div id="outlet_title">
                                    Lab Achievement
                                </div>
                            </div>
                            <div id="outlet_content">
                                <table id="table_outlet" class="table" style="font-size: 12px; width: 100%">
                                    <thead>  
                                        <tr>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th>Reservation</th>
                                            <th>Queue</th>
                                            <th>Sample Plate</th>
                                            <th>Result</th>
                                            <!--<th>Total</th>-->
                                        </tr>
                                    </thead>  
                                </table>
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
        <script>
            function run() {
                document.getElementById("reservation").innerHTML = '';
                document.getElementById("sample").innerHTML = '';
                document.getElementById("result").innerHTML = '';
                document.getElementById("queue").innerHTML = '';
                $("#chart").remove();
                $('#app').append('<div id="chart"></div>');
                $('#table_outlet').dataTable().fnClearTable();
                $('#table_outlet').dataTable().fnDestroy();
                getTableoutlet();
            }
        </script>
    </body>
</html>
