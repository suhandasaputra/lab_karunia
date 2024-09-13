<%-- 
    Document   : reservasi_pasien
    Created on : Feb 24, 2020, 4:38:43 PM
    Author     : suhanda
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <%@include file='defaultextend.jsp'%>
        <script type="text/javascript" src="js/JsBarcode.all.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>lab karunia</title>
        <style>
            body{
                zoom: 75%;
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
            #table_reservasi {
                font-size: 12px;
            }
            .card-body{
                min-height: 705px;
            }

            .tab-content{
                width: 100%
            }





            .switch {
                position: relative;
                display: inline-block;
                width: 60px;
                height: 34px;
            }

            /* Hide default HTML checkbox */
            .switch input {
                opacity: 0;
                width: 0;
                height: 0;
            }

            /* The slider */
            .slider {
                position: absolute;
                cursor: pointer;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: #ccc;
                -webkit-transition: .4s;
                transition: .4s;
            }

            .slider:before {
                position: absolute;
                content: "";
                height: 26px;
                width: 26px;
                left: 4px;
                bottom: 4px;
                background-color: white;
                -webkit-transition: .4s;
                transition: .4s;
            }

            input:checked + .slider {
                background-color: #29b19c;
            }

            input:focus + .slider {
                box-shadow: 0 0 1px #2196F3;
            }

            input:checked + .slider:before {
                -webkit-transform: translateX(26px);
                -ms-transform: translateX(26px);
                transform: translateX(26px);
            }

            /* Rounded sliders */
            .slider.round {
                border-radius: 34px;
            }

            .slider.round:before {
                border-radius: 50%;
            }












            @media only screen and (max-width: 400px) {
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

                .card-body{
                    min-height: 620px;
                }

                .tab-content{
                    width: 100%
                }
                table{
                    margin: 0 auto;
                    width: 100%;
                    clear: both;
                    border-collapse: collapse;
                    table-layout: fixed;
                    word-wrap:break-word;
                }
                #table_reservasi {
                    font-size: 12px;
                }
            }

        </style>
        <script>
            jQuery(document).ready(function ($) {

                getListReservasi();
            });
            function destroyReservasi() {
                $('#table_reservasi').dataTable().fnClearTable();
                $('#table_reservasi').dataTable().fnDestroy();
            }
            function getListReservasi() {
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
                            $('#table_reservasi').DataTable({
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
                                    {data: "citizenship_name"},
                                    {data: "ext",
                                        render: function (data) {
                                            if (data === 'f') {
                                                return 'covid';
                                            } else if (data === 't') {
                                                return 'mcu';
                                            }
                                        }
                                    },
                                    {data: "book_code",
                                        render: function (data) {
                                            return '<button type="button" class="btn btn-primary" id="antrian_btn">Add Queue</button>';
                                        }
                                    }

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
                        if (userlevel == 8) {
                            $('.btn-primary').remove();
                            $('.btn_colvis_reservasi_pasien').remove();
                            $('.btn_export_reservasi_pasien').remove();
                        } else if (userlevel == 1) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        } else if (userlevel == 6) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        } else if (userlevel == 5) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        } else if (userlevel == 4) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        } else if (userlevel == 3) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        } else if (userlevel == 2) {
                            popupeditreservasi();
                            popupeditreservasimcu();
                        }
                    }
                });
            }
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
                                                        List Reservasi
                                                    </p>
                                                </div>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content">                                                    
                                                    <table class="table" id="table_reservasi" style="font-size: 12px; width: 100%">
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
                                                                <th>test type</th>
                                                                <th>action</th>
                                                            </tr>
                                                        </thead>  
                                                    </table>
                                                    <%@include file='pop_up_edit_reservasi_mcu.jsp'%>
                                                    <%@include file='pop_up_ajukan_antrian.jsp'%>
                                                    <%@include file='pop_up_ajukan_antrian_mcu.jsp'%>
                                                    <%@include file='pop_up_edit_reservasi.jsp'%>
                                                    
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
            <%@include file='pop_up_print_barcode.jsp'%>
            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- Main Footer -->
            <%@include file='footer.jsp'%>
        </div>

    </body>
    <script>
        $('#table_reservasi').on('click', '#antrian_btn', function () {
            var row = $(this).closest("tr");
            var book_code = $('#table_reservasi').DataTable().row(row).data().book_code;
            var ext = $('#table_reservasi').DataTable().row(row).data().ext;

            if (ext == 't') {
                antri_mcu(book_code);
            } else {
                antri_covid(book_code);
            }

        });


        $('#table_reservasi').on('click', 'td:nth-child(-n+10)', function () {
            var row = $(this).closest("tr");
            var book_code = $('#table_reservasi').DataTable().row(row).data().book_code;
            var ext = $('#table_reservasi').DataTable().row(row).data().ext;
            if (ext == 't') {
                alert('mcu');
                openpopupeditreservasimcu(book_code);
            } else {
                alert('covid');
                openpopupeditreservasicovid(book_code);
            }
        });
    </script>
</html>
