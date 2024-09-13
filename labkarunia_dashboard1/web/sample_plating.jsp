<%-- 
    Document   : sample_plating
    Created on : Feb 24, 2020, 4:38:43 PM
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
        <style>
            body{
                zoom: 80%;
            }

            .card {
                background-color: white;
            }
            th {
                background-color: #CCC;
            }
            td:hover{
                cursor: pointer;
            }
            .card-body{min-height: 705px}
            input {
                width: 300px;
                margin: 7px;
                border-radius: 3px;
            }
            label {
                margin-top: 15px;
                text-align: center;
                align-content: center;
            }
            .form-control{
                width: 300px;
            }


            .topnav {
                background-color: #CCC; 
                overflow: hidden;
            }

            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 5px 20px 5px 20px;
                text-decoration: none;
                font-size: 17px;
                border-left: 1px solid #ddd;
                border-bottom: 1px solid #000;

            }

            .topnav a:hover {
                background-color: white;
                color: #29B19C;
                border-bottom: 1px solid #29B19C;
            }

            .topnav a.active {
                background-color: #29B19C;
                color: white;
                border-bottom: 1px solid black;
            }

            td {
                margin: 0px;
                padding: 0px;
            }
            img{
                margin: 5px;
                width: 50px;
                height: 50px;
            }

            .table input {
                width: 200px;
                margin: 3px;
                border-radius: 3px;
            }


            @media only screen and (max-width: 400px) {
                .card-body{min-height: 620px}
            }



        </style>
        <script>
            jQuery(document).ready(function ($) {
                
                getListSample();
            });
            function destroySample() {
                $('#table_sample').dataTable().fnClearTable();
                $('#table_sample').dataTable().fnDestroy();
            }
            function getListSample() {
                var datjson1 = new Object();
                datjson1.procCode = "200023";
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
                            $('#table_sample').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "book_date"},
//                                    {data: "queue_no"},
                                    {data: "book_code"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "citizenship_name"}
                                ],
                                dom: '<"pull-left"f>rt<"pull-left"p><"clear">',
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
                    }
                });
            }
        </script>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar -->
            <%@include file='header.jsp'%>
            <!-- /.navbar -->
            <!-- Main Sidebar Container -->
            <%@include file='sidebar_left.jsp'%>
            <!--end sidebar-->
            <div class="content-wrapper">
                <div class="content-header">
                    <section class="content">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <p class="text-left" style="color: #29B19C; font-size: 20px;">
                                                        Sample Plating
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <ul class="nav nav-tabs topnav" id="myTab">
                                                    <!-- add data-toggle attribute to the anchors -->
                                                    <li><a data-toggle="tab" href="#setting" onclick="getbos2()" class="active">Setting</a></li>
                                                    <li><a data-toggle="tab" href="#history" onclick="getbos()">History</a></li>
                                                </ul>
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%">
                                                    <div id="setting" class="tab-pane fade in active show">
                                                        <div class="card-body" style="display: inline-flex;">
                                                            <div style="width: 50%; padding: 15px; height: 650px;margin-top: -20px;">
                                                                <div class="row">
                                                                    <div class="tab-content" style="width: 100%">
                                                                        <table class="table" id="table_sample" style="font-size: 12px; width: 100%">
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
                                                                        </table>
                                                                        <%@include file='pop_up_set_plating.jsp'%>
                                                                    </div>    
                                                                </div>
                                                            </div>
                                                            <div style="width: 50%; height: 650px;margin-top: -20px">
                                                                <div class="tab-content" style="width: 100%; text-align: center">
                                                                    <div id="myModal_ajukan_plate" class="modal">
                                                                        <div class="modal-content">
                                                                            <span class="close_ajukan_plate">&times;</span>
                                                                            <div id="push_text_ajukan_plate"></div>
                                                                        </div>
                                                                    </div>
                                                                    <!--<div style="display: inline-flex; margin-top: 30px; margin-left: 15px"><label>Masukan No. Plate :&nbsp;&nbsp;</label><input type="number" id="plate_no"></div>-->            
                                                                    <div style="display: inline-flex; margin-top: 30px; margin-bottom: 10px; margin-left: 15px; height: 30px"><label style="margin-top: 0px">Masukan No. Plate :&nbsp;&nbsp;</label><input type="number" id="plate_no" style="margin: 0px;width: 150px">  &ensp;&ensp;|&ensp;&ensp;  <button type="button" class="btn btn-warning" id="btn_clear_sample" style="align-self:center; height: 30px; padding: 0px 15px 0px 15px">Clear</button>
                                                                        <select id="target_clear" style="padding-left: 10px;
                                                                                border: 1px solid #CCC; 
                                                                                border-radius: 3px;
                                                                                height: 30px;">
                                                                            <option value="all">All</option>
                                                                            <option value="plate">plate number</option>
                                                                            <option value="a1">A1</option>
                                                                            <option value="a2">A2</option>
                                                                            <option value="a3">A3</option>
                                                                            <option value="a4">A4</option>
                                                                            <option value="a5">A5</option>
                                                                            <option value="a6">A6</option>
                                                                            <option value="a7">A7</option>
                                                                            <option value="a8">A8</option>
                                                                            <option value="b1">B1</option>
                                                                            <option value="b2">B2</option>
                                                                            <option value="b3">B3</option>
                                                                            <option value="b4">B4</option>
                                                                            <option value="b5">B5</option>
                                                                            <option value="b6">B6</option>
                                                                            <option value="b7">B7</option>
                                                                            <option value="b8">B8</option>
                                                                        </select></div>
                                                                    <div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a1" style="background-color: #FFFFCC; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A1"><input type="text" class="form-control" id="b1" style="background-color: #FFFFCC; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B1"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a2" style="background-color: #FFC20B; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A2"><input type="text" class="form-control" id="b2" style="background-color: #FFC20B; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B2"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a3" style="background-color: #CCFFFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A3"><input type="text" class="form-control" id="b3" style="background-color: #CCFFFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B3"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a4" style="background-color: #FFCCFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A4"><input type="text" class="form-control" id="b4" style="background-color: #FFCCFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B4"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a5" style="background-color: #CCCCFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A5"><input type="text" class="form-control" id="b5" style="background-color: #CCCCFF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B5"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a6" style="background-color: #FF9F88; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A6"><input type="text" class="form-control" id="b6" style="background-color: #FF9F88; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B6"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a7" style="background-color: #CCCCCC; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A7"><input type="text" class="form-control" id="b7" style="background-color: #CCCCCC; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B7"></div>
                                                                        <div style="display: inline-flex; margin-left: 10px"><input type="text" class="form-control" id="a8" style="background-color: #6C92FF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="A8"><input type="text" class="form-control" id="b8" style="background-color: #6C92FF; width: 300px;margin: 7px;border-radius: 3px;" readonly="" disabled="" placeholder="B8"></div>
                                                                    </div><br>
                                                                    <!--<br>-->
                                                                    <button type="button" class="btn btn-primary" id="btn_save_sample">Simpan Sample Plating</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="history" class="tab-pane fade">
                                                        <div class="container">
                                                            <table class="table" id="table_history" style="font-size: 12px; width: 100%; table-layout: fixed; margin-top: 20px;">
                                                                <thead>
                                                                    <tr>
                                                                        <th>tanggal plating</th>
                                                                        <th>id.plate</th>
                                                                        <th>no.plate</th>
                                                                        <th>kode booking</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>    
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- ./card-body -->
                                    </div>
                                    <!-- /.card -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                    </section>
                </div>
            </div>

            <div id="bungkus" hidden="">
                <div id="apa_coba">
                    <style>
                        img{
                            margin: 5px;
                            width: 80px;
                            height: 80px;
                        }
                    </style>
                    <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
                    <div id="header_halaman" style="text-align: left; margin: 10px 10px 0px 10px">
                        <table style="font-size: 24px; font-weight: 600;  width: -webkit-fill-available; border: 1px solid black">
                            <tr>
                                <td style="width: 20%">kode plate</td>
                                <td style="width: 5%">:</td>
                                <td style="width: 75%" id="value_kode_plate"></td>
                            </tr>
                            <tr>
                                <td style="width: 20%">no. plate</td>
                                <td style="width: 5%">:</td>
                                <td style="width: 75%" id="value_nomor_plate"></td>
                            </tr>
                            <tr>
                                <td style="width: 20%">waktu</td>
                                <td style="width: 5%">:</td>
                                <td style="width: 75%" id="value_waktu"></td>
                            </tr>
                            <tr>
                                <td style="width: 20%">user</td>
                                <td style="width: 5%">:</td>
                                <td style="width: 75%" id="value_user"></td>
                            </tr>
                        </table>
                    </div>
                    <br>
                    <br>
                    <label style="font-size:28px;font-weight:600;margin-left:10px;"><b>Sample Plating</b></label>

                    <div id="isi_halaman" style="text-align: left; margin-left: 10px;margin-right:10px">
                        <table style="font-size: 20px; font-weight: 600; border: 1px solid black; width: -webkit-fill-available; border: 1px solid black">
                            <tr>
                                <td style="width: 50%; border: 1px solid black; text-align: center" colspan="5">A</td>
                                <td style="width: 50%; border: 1px solid black; text-align: center" colspan="5">B</td>
                            </tr>
                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">1</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a1_nama"></td>
                                <td style="width: 10%; border: 1px solid black; width: 10px; height: 10px" id="a1_qr" rowspan="5"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">1</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b1_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" id="b1_qr" rowspan="5"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a1_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b1_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a1_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%"  id="b1_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a1_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b1_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a1_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b1_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">2</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a2_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a2_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">2</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b2_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b2_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a2_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b2_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a2_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b2_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a2_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b2_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a2_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b2_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">3</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a3_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a3_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">3</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b3_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b3_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a3_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b3_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a3_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b3_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a3_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b3_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a3_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b3_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">4</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a4_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a4_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">4</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b4_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b4_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a4_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b4_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a4_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b4_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a4_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b4_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a4_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b4_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">5</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a5_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a5_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">5</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b5_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b5_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a5_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b5_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a5_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b5_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a5_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b5_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a5_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b5_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">6</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a6_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a6_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">6</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b6_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b6_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a6_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b6_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a6_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b6_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a6_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b6_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a6_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b6_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">7</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a7_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a7_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">7</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b7_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b7_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a7_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b7_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a7_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b7_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a7_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b7_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a7_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b7_kd_book"></td>
                            </tr>

                            <tr>
                                <td style="width: 2%; border: 1px solid black" rowspan="5">8</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a8_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="a8_qr"></td>

                                <td style="width: 2%; border: 1px solid black" rowspan="5">8</td>
                                <td style="width: 9%">nama</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b8_nama"></td>
                                <td style="width: 10%;border: 1px solid black;width: 10px; height: 10px" rowspan="5" id="b8_qr"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a8_sex"></td>

                                <td style="width: 9%">sex/ttl</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b8_sex"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a8_no_id"></td>

                                <td style="width: 9%">no.identitas</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b8_no_id"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="a8_tgl"></td>

                                <td style="width: 9%">tgl.antrian</td>
                                <td style="width: 1%">:</td>
                                <td style="width: 28%" id="b8_tgl"></td>
                            </tr>
                            <tr>
                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="a8_kd_book"></td>

                                <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                                <td style="width: 1%; border-bottom: 1px solid black">:</td>
                                <td style="width: 28%; border-bottom: 1px solid black" id="b8_kd_book"></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>

            <!-- Main Footer -->
            <%@include file='footer.jsp'%>
        </div>
    </body>
    <script src="js/jQuery.print.js"></script>
    <script>
                                                        jQuery(document).ready(function ($) {
                                                            var user = window.localStorage.getItem('lab_user_id');
                                                            $('#btn_save_sample').on('click', function () {
                                                                var plate_no = document.getElementById('plate_no').value;
                                                                var a1 = document.getElementById('a1').value;
                                                                var a2 = document.getElementById('a2').value;
                                                                var a3 = document.getElementById('a3').value;
                                                                var a4 = document.getElementById('a4').value;
                                                                var a5 = document.getElementById('a5').value;
                                                                var a6 = document.getElementById('a6').value;
                                                                var a7 = document.getElementById('a7').value;
                                                                var a8 = document.getElementById('a8').value;
                                                                var b1 = document.getElementById('b1').value;
                                                                var b2 = document.getElementById('b2').value;
                                                                var b3 = document.getElementById('b3').value;
                                                                var b4 = document.getElementById('b4').value;
                                                                var b5 = document.getElementById('b5').value;
                                                                var b6 = document.getElementById('b6').value;
                                                                var b7 = document.getElementById('b7').value;
                                                                var b8 = document.getElementById('b8').value;
                                                                if (document.getElementById('a1').value == '') {
                                                                    a1 = '-';
                                                                }
                                                                if (document.getElementById('a2').value == '') {
                                                                    a2 = '-';
                                                                }
                                                                if (document.getElementById('a3').value == '') {
                                                                    a3 = '-';
                                                                }
                                                                if (document.getElementById('a4').value == '') {
                                                                    a4 = '-';
                                                                }
                                                                if (document.getElementById('a5').value == '') {
                                                                    a5 = '-';
                                                                }
                                                                if (document.getElementById('a6').value == '') {
                                                                    a6 = '-';
                                                                }
                                                                if (document.getElementById('a7').value == '') {
                                                                    a7 = '-';
                                                                }
                                                                if (document.getElementById('a8').value == '') {
                                                                    a8 = '-';
                                                                }
                                                                if (document.getElementById('b1').value == '') {
                                                                    b1 = '-';
                                                                }
                                                                if (document.getElementById('b2').value == '') {
                                                                    b2 = '-';
                                                                }
                                                                if (document.getElementById('b3').value == '') {
                                                                    b3 = '-';
                                                                }
                                                                if (document.getElementById('b4').value == '') {
                                                                    b4 = '-';
                                                                }
                                                                if (document.getElementById('b5').value == '') {
                                                                    b5 = '-';
                                                                }
                                                                if (document.getElementById('b6').value == '') {
                                                                    b6 = '-';
                                                                }
                                                                if (document.getElementById('b7').value == '') {
                                                                    b7 = '-';
                                                                }
                                                                if (document.getElementById('b8').value == '') {
                                                                    b8 = '-';
                                                                }

                                                                var book_code = a1 + '|' + a2 + '|' + a3 + '|' + a4 + '|' + a5 + '|' + a6 + '|' + a7 + '|' + a8 + '|' + b1 + '|' + b2 + '|' + b3 + '|' + b4 + '|' + b5 + '|' + b6 + '|' + b7 + '|' + b8;
                                                                var modal = document.getElementById("myModal_ajukan_plate");
                                                                var span = document.getElementsByClassName("close_ajukan_plate")[0];
                                                                var push = document.getElementById("push_text_ajukan_plate");

                                                                if (plate_no == "") {
                                                                    push.innerHTML = "<p>plate number must be fill</p>";
                                                                    modal.style.display = "block";
                                                                    span.onclick = function () {
                                                                        modal.style.display = "none";
                                                                    }
                                                                    window.onclick = function (event) {
                                                                        if (event.target == modal) {
                                                                            modal.style.display = "none";
                                                                        }
                                                                    }
                                                                } else if (plate_no != "") {
                                                                    if (a1 == '' && a2 == '' && a3 == '' && a4 == '' && a5 == '' && a6 == '' && a7 == '' && a8 == '' && b1 == '' && b2 == '' && b3 == '' && b4 == '' && b5 == '' && b6 == '' && b7 == '' && b8 == '') {
                                                                        alert('Sample harus diisi, minimal 1 Sample dalam 1 Plate');
                                                                    } else {
                                                                        var datjson3 = new Object();
                                                                        datjson3.procCode = "300018";
                                                                        datjson3.user_id = user;
                                                                        datjson3.plate_no = plate_no;
                                                                        datjson3.book_code = book_code;
                                                                        $.ajax({
                                                                            contentType: 'application/json',
                                                                            dataType: "json",
                                                                            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                                                            data: JSON.stringify(datjson3),
                                                                            type: 'post',
                                                                            beforeSend: function () {
                                                                                $('#loader').removeClass('hidden');
                                                                            },

                                                                            success: function (response) {
                                                                                if (response.respCode == 0000) {
                                                                                    alert('Success menyimpan Sample Pasien, nomor plate : ' + plate_no);
                                                                                    destroySample();
                                                                                    getListSample();
                                                                                    printsample(response.plate_id);

                                                                                    clear();




//                                                                                    send notif 1
                                                                                    var datjson4 = new Object();
                                                                                    datjson4.procCode = "LAB0035";
                                                                                    datjson4.book_code = book_code;

                                                                                    $.ajax({
                                                                                        contentType: 'application/json',
                                                                                        dataType: "json",
                                                                                        url: "http://www.app.mobatech.net:80/LABKARUNIAMOBILE/ProcessRequest",
                                                                                        data: JSON.stringify(datjson4),
                                                                                        type: 'post',
                                                                                        success: function (res) {
                                                                                        }

                                                                                    });




                                                                                } else {
                                                                                    alert('Gagal menyimpan Sample Pasien : ' + response.respDesc);
                                                                                }
                                                                            },
                                                                            complete: function () {
                                                                                $('#loader').addClass('hidden');
                                                                            }
                                                                        });
                                                                    }
                                                                }
                                                            });


                                                            $('#btn_clear_sample').on('click', function () {
                                                                clear();
                                                            });

                                                            $('#table_history').on('click', 'td', function () {
                                                                var row = $(this).closest("tr");
                                                                var plate_id = $('#table_history').DataTable().row(row).data().plate_id;
                                                                printsample(plate_id);
                                                            });
                                                        });


                                                        function printsample(pa) {
                                                            var datjson3 = new Object();
                                                            datjson3.procCode = "400016";
                                                            datjson3.user_id = window.localStorage.getItem('lab_user_id');
                                                            datjson3.plate_id = pa;
                                                            $.ajax({
                                                                contentType: 'application/json',
                                                                dataType: "json",
                                                                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                                                data: JSON.stringify(datjson3),
                                                                type: 'post',
                                                                beforeSend: function () {
                                                                    $('#loader').removeClass('hidden');
                                                                },

                                                                success: function (response) {
                                                                    if (response.respCode == 0000) {

                                                                        document.getElementById('value_kode_plate').innerHTML = response.plate_id;
                                                                        document.getElementById('value_nomor_plate').innerHTML = response.plate_no;
                                                                        document.getElementById('value_waktu').innerHTML = response.createdate;
                                                                        document.getElementById('value_user').innerHTML = response.user_id;

                                                                        document.getElementById('a1_nama').innerHTML = response.detail1.name;
                                                                        let qrcodeContainer1 = document.getElementById('a1_qr');
                                                                        qrcodeContainer1.innerHTML = "";
                                                                        new QRCode(qrcodeContainer1, response.detail1.book_code);
                                                                        document.getElementById('a1_sex').innerHTML = response.detail1.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail1.birth_date;
                                                                        document.getElementById('a1_no_id').innerHTML = response.detail1.idcard_number;
                                                                        document.getElementById('a1_tgl').innerHTML = response.detail1.queue_date + '&nbsp;&nbsp;' + response.detail1.queue_hour;
                                                                        document.getElementById('a1_kd_book').innerHTML = response.detail1.book_code;

                                                                        document.getElementById('a2_nama').innerHTML = response.detail2.name;
                                                                        let qrcodeContainer2 = document.getElementById('a2_qr');
                                                                        qrcodeContainer2.innerHTML = "";
                                                                        new QRCode(qrcodeContainer2, response.detail2.book_code);
                                                                        document.getElementById('a2_sex').innerHTML = response.detail2.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail2.birth_date;
                                                                        document.getElementById('a2_no_id').innerHTML = response.detail2.idcard_number;
                                                                        document.getElementById('a2_tgl').innerHTML = response.detail2.queue_date + '&nbsp;&nbsp;' + response.detail2.queue_hour;
                                                                        document.getElementById('a2_kd_book').innerHTML = response.detail2.book_code;

                                                                        document.getElementById('a3_nama').innerHTML = response.detail3.name;
                                                                        let qrcodeContainer3 = document.getElementById('a3_qr');
                                                                        qrcodeContainer3.innerHTML = "";
                                                                        new QRCode(qrcodeContainer3, response.detail3.book_code);
                                                                        document.getElementById('a3_sex').innerHTML = response.detail3.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail3.birth_date;
                                                                        document.getElementById('a3_no_id').innerHTML = response.detail3.idcard_number;
                                                                        document.getElementById('a3_tgl').innerHTML = response.detail3.queue_date + '&nbsp;&nbsp;' + response.detail3.queue_hour;
                                                                        document.getElementById('a3_kd_book').innerHTML = response.detail3.book_code;

                                                                        document.getElementById('a4_nama').innerHTML = response.detail4.name;
                                                                        let qrcodeContainer4 = document.getElementById('a4_qr');
                                                                        qrcodeContainer4.innerHTML = "";
                                                                        new QRCode(qrcodeContainer4, response.detail4.book_code);
                                                                        document.getElementById('a4_sex').innerHTML = response.detail4.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail4.birth_date;
                                                                        document.getElementById('a4_no_id').innerHTML = response.detail4.idcard_number;
                                                                        document.getElementById('a4_tgl').innerHTML = response.detail4.queue_date + '&nbsp;&nbsp;' + response.detail4.queue_hour;
                                                                        document.getElementById('a4_kd_book').innerHTML = response.detail4.book_code;

                                                                        document.getElementById('a5_nama').innerHTML = response.detail5.name;
                                                                        let qrcodeContainer5 = document.getElementById('a5_qr');
                                                                        qrcodeContainer5.innerHTML = "";
                                                                        new QRCode(qrcodeContainer5, response.detail5.book_code);
                                                                        document.getElementById('a5_sex').innerHTML = response.detail5.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail5.birth_date;
                                                                        document.getElementById('a5_no_id').innerHTML = response.detail5.idcard_number;
                                                                        document.getElementById('a5_tgl').innerHTML = response.detail5.queue_date + '&nbsp;&nbsp;' + response.detail5.queue_hour;
                                                                        document.getElementById('a5_kd_book').innerHTML = response.detail5.book_code;

                                                                        document.getElementById('a6_nama').innerHTML = response.detail6.name;
                                                                        let qrcodeContainer6 = document.getElementById('a6_qr');
                                                                        qrcodeContainer6.innerHTML = "";
                                                                        new QRCode(qrcodeContainer6, response.detail6.book_code);
                                                                        document.getElementById('a6_sex').innerHTML = response.detail6.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail6.birth_date;
                                                                        document.getElementById('a6_no_id').innerHTML = response.detail6.idcard_number;
                                                                        document.getElementById('a6_tgl').innerHTML = response.detail6.queue_date + '&nbsp;&nbsp;' + response.detail6.queue_hour;
                                                                        document.getElementById('a6_kd_book').innerHTML = response.detail6.book_code;

                                                                        document.getElementById('a7_nama').innerHTML = response.detail7.name;
                                                                        let qrcodeContainer7 = document.getElementById('a7_qr');
                                                                        qrcodeContainer7.innerHTML = "";
                                                                        new QRCode(qrcodeContainer7, response.detail7.book_code);
                                                                        document.getElementById('a7_sex').innerHTML = response.detail7.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail7.birth_date;
                                                                        document.getElementById('a7_no_id').innerHTML = response.detail7.idcard_number;
                                                                        document.getElementById('a7_tgl').innerHTML = response.detail7.queue_date + '&nbsp;&nbsp;' + response.detail7.queue_hour;
                                                                        document.getElementById('a7_kd_book').innerHTML = response.detail7.book_code;

                                                                        document.getElementById('a8_nama').innerHTML = response.detail8.name;
                                                                        let qrcodeContainer8 = document.getElementById('a8_qr');
                                                                        qrcodeContainer8.innerHTML = "";
                                                                        new QRCode(qrcodeContainer8, response.detail8.book_code);
                                                                        document.getElementById('a8_sex').innerHTML = response.detail8.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail8.birth_date;
                                                                        document.getElementById('a8_no_id').innerHTML = response.detail8.idcard_number;
                                                                        document.getElementById('a8_tgl').innerHTML = response.detail8.queue_date + '&nbsp;&nbsp;' + response.detail8.queue_hour;
                                                                        document.getElementById('a8_kd_book').innerHTML = response.detail8.book_code;

                                                                        document.getElementById('b1_nama').innerHTML = response.detail9.name;
                                                                        let qrcodeContainer9 = document.getElementById('b1_qr');
                                                                        qrcodeContainer9.innerHTML = "";
                                                                        new QRCode(qrcodeContainer9, response.detail9.book_code);
                                                                        document.getElementById('b1_sex').innerHTML = response.detail9.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail9.birth_date;
                                                                        document.getElementById('b1_no_id').innerHTML = response.detail9.idcard_number;
                                                                        document.getElementById('b1_tgl').innerHTML = response.detail9.queue_date + '&nbsp;&nbsp;' + response.detail9.queue_hour;
                                                                        document.getElementById('b1_kd_book').innerHTML = response.detail9.book_code;

                                                                        document.getElementById('b2_nama').innerHTML = response.detail10.name;
                                                                        let qrcodeContainer10 = document.getElementById('b2_qr');
                                                                        qrcodeContainer10.innerHTML = "";
                                                                        new QRCode(qrcodeContainer10, response.detail10.book_code);
                                                                        document.getElementById('b2_sex').innerHTML = response.detail10.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail10.birth_date;
                                                                        document.getElementById('b2_no_id').innerHTML = response.detail10.idcard_number;
                                                                        document.getElementById('b2_tgl').innerHTML = response.detail10.queue_date + '&nbsp;&nbsp;' + response.detail10.queue_hour;
                                                                        document.getElementById('b2_kd_book').innerHTML = response.detail10.book_code;

                                                                        document.getElementById('b3_nama').innerHTML = response.detail11.name;
                                                                        let qrcodeContainer11 = document.getElementById('b3_qr');
                                                                        qrcodeContainer11.innerHTML = "";
                                                                        new QRCode(qrcodeContainer11, response.detail11.book_code);
                                                                        document.getElementById('b3_sex').innerHTML = response.detail11.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail11.birth_date;
                                                                        document.getElementById('b3_no_id').innerHTML = response.detail11.idcard_number;
                                                                        document.getElementById('b3_tgl').innerHTML = response.detail11.queue_date + '&nbsp;&nbsp;' + response.detail11.queue_hour;
                                                                        document.getElementById('b3_kd_book').innerHTML = response.detail11.book_code;

                                                                        document.getElementById('b4_nama').innerHTML = response.detail12.name;
                                                                        let qrcodeContainer12 = document.getElementById('b4_qr');
                                                                        qrcodeContainer12.innerHTML = "";
                                                                        new QRCode(qrcodeContainer12, response.detail12.book_code);
                                                                        document.getElementById('b4_sex').innerHTML = response.detail12.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail12.birth_date;
                                                                        document.getElementById('b4_no_id').innerHTML = response.detail12.idcard_number;
                                                                        document.getElementById('b4_tgl').innerHTML = response.detail12.queue_date + '&nbsp;&nbsp;' + response.detail12.queue_hour;
                                                                        document.getElementById('b4_kd_book').innerHTML = response.detail12.book_code;

                                                                        document.getElementById('b5_nama').innerHTML = response.detail13.name;
                                                                        let qrcodeContainer13 = document.getElementById('b5_qr');
                                                                        qrcodeContainer13.innerHTML = "";
                                                                        new QRCode(qrcodeContainer13, response.detail13.book_code);
                                                                        document.getElementById('b5_sex').innerHTML = response.detail13.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail13.birth_date;
                                                                        document.getElementById('b5_no_id').innerHTML = response.detail13.idcard_number;
                                                                        document.getElementById('b5_tgl').innerHTML = response.detail13.queue_date + '&nbsp;&nbsp;' + response.detail13.queue_hour;
                                                                        document.getElementById('b5_kd_book').innerHTML = response.detail13.book_code;

                                                                        document.getElementById('b6_nama').innerHTML = response.detail14.name;
                                                                        let qrcodeContainer14 = document.getElementById('b6_qr');
                                                                        qrcodeContainer14.innerHTML = "";
                                                                        new QRCode(qrcodeContainer14, response.detail14.book_code);
                                                                        document.getElementById('b6_sex').innerHTML = response.detail14.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail14.birth_date;
                                                                        document.getElementById('b6_no_id').innerHTML = response.detail14.idcard_number;
                                                                        document.getElementById('b6_tgl').innerHTML = response.detail14.queue_date + '&nbsp;&nbsp;' + response.detail14.queue_hour;
                                                                        document.getElementById('b6_kd_book').innerHTML = response.detail14.book_code;

                                                                        document.getElementById('b7_nama').innerHTML = response.detail15.name;
                                                                        let qrcodeContainer15 = document.getElementById('b7_qr');
                                                                        qrcodeContainer15.innerHTML = "";
                                                                        new QRCode(qrcodeContainer15, response.detail15.book_code);
                                                                        document.getElementById('b7_sex').innerHTML = response.detail15.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail15.birth_date;
                                                                        document.getElementById('b7_no_id').innerHTML = response.detail15.idcard_number;
                                                                        document.getElementById('b7_tgl').innerHTML = response.detail15.queue_date + '&nbsp;&nbsp;' + response.detail15.queue_hour;
                                                                        document.getElementById('b7_kd_book').innerHTML = response.detail15.book_code;

                                                                        document.getElementById('b8_nama').innerHTML = response.detail16.name;
                                                                        let qrcodeContainer16 = document.getElementById('b8_qr');
                                                                        qrcodeContainer16.innerHTML = "";
                                                                        new QRCode(qrcodeContainer16, response.detail16.book_code);
                                                                        document.getElementById('b8_sex').innerHTML = response.detail16.gender + '&nbsp;&nbsp;&nbsp;&nbsp;' + response.detail16.birth_date;
                                                                        document.getElementById('b8_no_id').innerHTML = response.detail16.idcard_number;
                                                                        document.getElementById('b8_tgl').innerHTML = response.detail16.queue_date + '&nbsp;&nbsp;' + response.detail16.queue_hour;
                                                                        document.getElementById('b8_kd_book').innerHTML = response.detail16.book_code;

                                                                        const myTimeout = setTimeout(printguys, 2000);

                                                                        function printguys() {

                                                                            $("#apa_coba").print({
                                                                                //Use Global styles
                                                                                globalStyles: false,
                                                                                //Add link with attrbute media=print
                                                                                mediaPrint: false,
                                                                                //Custom stylesheet
                                                                                stylesheet: "css/bootstrap.min.css",
                                                                                //Print in a hidden iframe
                                                                                iframe: false,
                                                                                //Don't print this
                                                                                //Log to console when printing is done via a deffered callback
                                                                                deferred: $.Deferred().done(function () {
                                                                                    console.log('Printing done', arguments);
                                                                                })
                                                                            });
                                                                        }
                                                                    } else {
                                                                        alert('gagal mengambil data plate : ' + response.respDesc);
                                                                    }
                                                                },
                                                                complete: function () {
                                                                    $('#loader').addClass('hidden');
                                                                }
                                                            });
                                                        }


                                                        function clear() {
                                                            var target_clear = document.getElementById('target_clear').value;
                                                            switch (target_clear) {
                                                                case 'all':
                                                                    document.getElementById('plate_no').value = '';
                                                                    document.getElementById('a1').value = '';
                                                                    document.getElementById('a2').value = '';
                                                                    document.getElementById('a3').value = '';
                                                                    document.getElementById('a4').value = '';
                                                                    document.getElementById('a5').value = '';
                                                                    document.getElementById('a6').value = '';
                                                                    document.getElementById('a7').value = '';
                                                                    document.getElementById('a8').value = '';
                                                                    document.getElementById('b1').value = '';
                                                                    document.getElementById('b2').value = '';
                                                                    document.getElementById('b3').value = '';
                                                                    document.getElementById('b4').value = '';
                                                                    document.getElementById('b5').value = '';
                                                                    document.getElementById('b6').value = '';
                                                                    document.getElementById('b7').value = '';
                                                                    document.getElementById('b8').value = '';
                                                                    break;
                                                                case 'plate':
                                                                    document.getElementById('plate_no').value = '';
                                                                    break;
                                                                case 'a1':
                                                                    document.getElementById('a1').value = '';
                                                                    break;
                                                                case 'a2':
                                                                    document.getElementById('a2').value = '';
                                                                    break;
                                                                case 'a3':
                                                                    document.getElementById('a3').value = '';
                                                                    break;
                                                                case 'a4':
                                                                    document.getElementById('a4').value = '';
                                                                    break;
                                                                case 'a5':
                                                                    document.getElementById('a5').value = '';
                                                                    break;
                                                                case 'a6':
                                                                    document.getElementById('a6').value = '';
                                                                    break;
                                                                case 'a7':
                                                                    document.getElementById('a7').value = '';
                                                                    break;
                                                                case 'a8':
                                                                    document.getElementById('a8').value = '';
                                                                    break;
                                                                case 'b1':
                                                                    document.getElementById('b1').value = '';
                                                                    break;
                                                                case 'b2':
                                                                    document.getElementById('b2').value = '';
                                                                    break;
                                                                case 'b3':
                                                                    document.getElementById('b3').value = '';
                                                                    break;
                                                                case 'b4':
                                                                    document.getElementById('b4').value = '';
                                                                    break;
                                                                case 'b5':
                                                                    document.getElementById('b5').value = '';
                                                                    break;
                                                                case 'b6':
                                                                    document.getElementById('b6').value = '';
                                                                    break;
                                                                case 'b7':
                                                                    document.getElementById('b7').value = '';
                                                                    break;
                                                                case 'b8':
                                                                    document.getElementById('b8').value = '';
                                                                    break;
                                                                default:
                                                                    document.getElementById('plate_no').value;
                                                                    document.getElementById('a1').value = '';
                                                                    document.getElementById('a2').value = '';
                                                                    document.getElementById('a3').value = '';
                                                                    document.getElementById('a4').value = '';
                                                                    document.getElementById('a5').value = '';
                                                                    document.getElementById('a6').value = '';
                                                                    document.getElementById('a7').value = '';
                                                                    document.getElementById('a8').value = '';
                                                                    document.getElementById('b1').value = '';
                                                                    document.getElementById('b2').value = '';
                                                                    document.getElementById('b3').value = '';
                                                                    document.getElementById('b4').value = '';
                                                                    document.getElementById('b5').value = '';
                                                                    document.getElementById('b6').value = '';
                                                                    document.getElementById('b7').value = '';
                                                                    document.getElementById('b8').value = '';
                                                                    break;
                                                            }
                                                        }

                                                        function getbos() {
                                                            destroyBos();
                                                            getlistHistory();
                                                        }
                                                        function getbos2() {

                                                        }


                                                        function destroyBos() {
                                                            $('#table_history').dataTable().fnClearTable();
                                                            $('#table_history').dataTable().fnDestroy();
                                                        }
                                                        function getlistHistory() {
                                                            var datjson2 = new Object();
                                                            datjson2.procCode = "200021";
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
                                                                        $('#table_history thead tr').remove();
                                                                        $('#table_history thead').append(`
                <tr>
                <th>tanggal plating</th>
                <th>id.plate</th>
                <th>no.plate</th>
                <th>kode booking</th>
                </tr>`);




                                                                        $('#table_history thead tr')
                                                                                .clone(true)
                                                                                .addClass('filters')
                                                                                .appendTo('#table_history thead');


                                                                        var datanya = response.list;
                                                                        $('#table_history').DataTable({

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

                                                                            "data": datanya,
                                                                            "columns": [
                                                                                {data: "createdate"},
                                                                                {data: "plate_id"},
                                                                                {data: "plate_no"},
                                                                                {data: "book_code"}
                                                                            ],
                                                                            dom: '<"pull-left">rt<"pull-left"p><"clear">',
                                                                            scrollX: true,
                                                                            order: [[0, 'desc'], [2, 'desc']],
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
                                                                                                    title: "list history",
                                                                                                    exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                                                                    footer: true
                                                                                                },
                                                                                                {
                                                                                                    extend: "csvHtml5",
                                                                                                    title: "list history",
                                                                                                    exportOptions: {columns: ':visible:not()'},
                                                                                                    footer: true
                                                                                                },
                                                                                                {
                                                                                                    extend: "excelHtml5",
                                                                                                    title: "list history",
                                                                                                    exportOptions: {columns: ':visible:not()'},
                                                                                                    footer: true

                                                                                                },
                                                                                                {
                                                                                                    extend: "pdfHtml5",
                                                                                                    title: "list history",
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
                                                                }
                                                            });
                                                        }
    </script>        
</html>
