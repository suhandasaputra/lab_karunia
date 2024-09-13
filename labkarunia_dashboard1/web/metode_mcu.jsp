<%-- 
    Document   : metode_mcu
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
            .card {
                background-color: white;
            }
            .card-body {
                min-height: 705px;
            }
            th {
                background-color: #CCC;
            }









            /*            #table_metodemesin {
                            border-collapse: collapse;
                            width: 100%;
                            border: 1px solid #ddd;
                            font-size: 18px;
                        }
            
                        #table_metodemesin th, #table_metodemesin td {
                            text-align: left;
                            padding: 12px;
                        }
            
                        #table_metodemesin tr {
                            border-bottom: 1px solid #ddd;
                        }
            
                        #table_metodemesin tr.header, #table_metodemesin tr:hover {
                            background-color: #f1f1f1;
                        }*/




            /*-----------------------------------------------------------------------------------------*/            

            @media only screen and (max-width: 400px) {
                body{
                    zoom: 80%;
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
                .card {
                    background-color: white;
                }
                th {
                    background-color: #CCC;
                }

                /*                #table_metodemesin {
                                    border-collapse: collapse;
                                    width: 100%;
                                    border: 1px solid #ddd;
                                    font-size: 18px;
                                }
                
                                #table_metodemesin th, #table_metodemesin td {
                                    text-align: left;
                                    padding: 12px;
                                }
                
                                #table_metodemesin tr {
                                    border-bottom: 1px solid #ddd;
                                }
                
                                #table_metodemesin tr.header, #table_metodemesin tr:hover {
                                    background-color: #f1f1f1;
                                }*/
            }
        </style>
        <script>
            jQuery(document).ready(function ($) {
                
                getListMcu();
            });
            function destroyMcu() {
                $('#table_mcu').dataTable().fnClearTable();
                $('#table_mcu').dataTable().fnDestroy();
            }
            function getListMcu() {
                var datjson1 = new Object();
                datjson1.procCode = "200032";
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
                            $('#table_mcu').DataTable({
                                "data": datanya,
                                "columns": [
                                    
                                    
//                                     "book_code": "LK22032500F5",
//            "book_date": "2022-03-25 13:43:52",
//            "patient_id": "P100000007",
//            "idcard_number": "TBNY3933",
//            "name": "mohammed",
//            "gender": "laki-laki",
//            "birth_date": "31-01-2022",
//            "email": "suhanda.saputra8@gmail.com",
//            "phonenumber": "085464646",
//            "citizenship": "Afghanistan",
//            "citizenship_name": "Afghanistan",
//            "recheck": "0",
//            "createdate": "2022-01-31 13:19:59"
                                    
                                    
                                    {data: "book_date"},
                                    {data: "book_code"},
                                    {data: "patient_id"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "gender"},
                                    {data: "birth_date"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "citizenship_name"},
                                    {data: "recheck"}
                                ],
                                dom: 'Bfrtip',
//                                scrollX: true,
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
                                                        title: "list mcu",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list mcu",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list mcu",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list mcu",
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








//            function destroyMetodemesin() {
//                $('#table_metodemesin').dataTable().fnClearTable();
//                $('#table_metodemesin').dataTable().fnDestroy();
//            }
//            function getListMetodemesin() {
//                var datjson1 = new Object();
//                datjson1.procCode = "200023";
//                $.ajax({
//                    contentType: 'application/json',
//                    dataType: "json",
//                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
//                    data: JSON.stringify(datjson1),
//                    type: 'post',
//                    success: function (response) {
//                        if (response.respCode == 0000) {
//                            var datanya = response.list;
//                            $('#table_sample').DataTable({
//                                "data": datanya,
//                                "columns": [
//                                    {data: "createdate"},
////                                    {data: "queue_no"},
//                                    {data: "book_code"},
//                                    {data: "idcard_number"},
//                                    {data: "name"},
//                                    {data: "citizenship"}
//                                ],
//                                dom: 'Bfrtip',
//                                scrollX: true,
//                                order: [0, 'desc'],
//                                buttons: [
//                                    {
//                                        extend: 'colvis',
//                                        text: 'Visibility'
//                                    },
//                                    {
//                                        extend: 'collection',
//                                        text: 'Export',
//                                        autoClose: true,
//                                        buttons:
//                                                [
//                                                    {
//                                                        extend: "copyHtml5",
//                                                        title: "list metode mesin",
//                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
//                                                        footer: true
//                                                    },
//                                                    {
//                                                        extend: "csvHtml5",
//                                                        title: "list metode mesin",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    },
//                                                    {
//                                                        extend: "excelHtml5",
//                                                        title: "list metode mesin",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//
//                                                    },
//                                                    {
//                                                        extend: "pdfHtml5",
//                                                        title: "list metode mesin",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    },
//                                                    {
//                                                        extend: "print",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    }
//                                                ]
//                                    }
//                                ]
//                            });
//                        } else {
//                            alert('gagal : ' + response.respCode);
//                        }
//                    }
//                });
//            }
        </script>
    </head>
    <body class="hold-transition sidebar-mini sidebar-collapse">
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
                                                        Result -> MCU
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <ul class="nav nav-tabs topnav" id="myTab">
                                                    <!-- add data-toggle attribute to the anchors -->
                                                    <li><a data-toggle="tab" href="#mcu" class="active">MCU</a></li>
                                                    <!--                                                    <li><a data-toggle="tab" href="#metodemesin" onclick="getmetodemesin()">Metode Mesin</a></li>
                                                                                                        <li><a data-toggle="tab" href="#emailhasil">Email Hasil</a></li>-->
                                                </ul>
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%; margin-top: 20px">
                                                    <div id="mcu" class="tab-pane fade in active show">
                                                        <!--<div class="container">-->        
                                                        <table class="table" id="table_mcu" style = "font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                    <th>Tanggal Booking</th>
                                                                    <th>Kode Booking</th>
                                                                    <th>Id Pasien</th>
                                                                    <th>No. KTP</th>
                                                                    <th>Nama Pasien</th>
                                                                    <th>Jenis Kelamin</th>
                                                                    <th>Tgl Lahir</th>
                                                                    <th>Email</th>
                                                                    <th>Mobile</th>
                                                                    <th>Kewarganegaraan</th>
                                                                    <th>Recheck</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody></tbody>
                                                        </table>
                                                        <!--</div>-->
                                                        <%@include file='pop_up_mcu.jsp'%>
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
            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- Main Footer -->
            <%@include file='footer.jsp'%>
        </div>
    </body>
    <script>
    </script>
</html>
