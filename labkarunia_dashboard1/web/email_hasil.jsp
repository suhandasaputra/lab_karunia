<%-- 
    Document   : email_hasil
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








            /*            #table_alreadyemail {
                            border-collapse: collapse;
                            width: 100%;
                            border: 1px solid #ddd;
                            font-size: 18px;
                        }
            
                        #table_alreadyemail th, #table_alreadyemail td {
                            text-align: left;
                            padding: 12px;
                        }
            
                        #table_alreadyemail tr {
                            border-bottom: 1px solid #ddd;
                        }
            
                        #table_alreadyemail tr.header, #table_alreadyemail tr:hover {
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
            }
        </style>
        <script>
            jQuery(document).ready(function ($) {

                //select institusi
                var datjson3 = new Object();
                datjson3.procCode = "200002";
                datjson3.user_id = window.localStorage.getItem('lab_user_id');
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson3),
                    type: 'post',
                    success: function (response) {
                        if (response.respCode == 0000) {
                            var data = response.list;
                            var options = '<option selected="true" disabled value="">pilih institusi</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].ins_code + '">' + data[i].ins_code + '</option>';
                            }
                            $("select#option_institusi").html(options);
                        } else {
                            alert('Failed get list institusi : ' + response.respDesc);
                        }
                    }
                });
                getListEmailhasil();
            });
            function destroyEmailhasil() {
                $('#table_email_hasil').dataTable().fnClearTable();
                $('#table_email_hasil').dataTable().fnDestroy();
            }
            function getListEmailhasil() {
                var datjson1 = new Object();
                datjson1.procCode = "200026";
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
                            $('#table_email_hasil').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "result_date"},
                                    {data: "patient_id"},

                                    {data: "book_code"},
                                    {data: "ext",
                                        render: function (data) {
                                            if (data === 'f') {
                                                return 'covid';
                                            } else if (data === 't') {
                                                return 'mcu';
                                            }
                                        }
                                    },
//                                    {data: "mail_sendstatus"},
//                                    {data: "mail_senddate"},
                                    {data: "outlet_name"},
                                    {data: "ins_name"},
//                                    {data: "idcard_number"},
                                    {data: "name"},
//                                    {data: "gender"},
//                                    {data: "birth_date"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "citizenship_name"},
                                    {data: "jp_name"},
                                    {data: "product_name"},
                                    {data: "plate_no"},
                                    {data: "orf1ab"},
                                    {data: "ngene"},
                                    {data: "egene"},
                                    {data: "cy5"},
                                    {data: "ct5"},
                                    {data: "result_mesin"},
                                    {data: "result_mesindate"},
                                    {data: "final_result"},
                                    {data: "plate_date"},
                                    {data: "book_date"},
                                    {data: "pdf",
                                        render: function (data) {
                                            return `<form action="` + data + `" target="blank"><input type="submit" value="Print" class="btn btn-primary"/></form>`;
                                        }
                                    }
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
                                                        title: "list siap untuk di email",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list siap untuk di email",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list siap untuk di email",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list siap untuk di email",
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

            function hajaralreadyemail() {
                destroyalreadyemail();
                getListalreadyemail();
            }

            function destroyalreadyemail() {
                $('#table_alreadyemail').dataTable().fnClearTable();
                $('#table_alreadyemail').dataTable().fnDestroy();
            }
            function getListalreadyemail() {
                var datjson1 = new Object();
                datjson1.procCode = "200027";
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
                            $('#table_alreadyemail').DataTable({
                                "data": datanya,
                                "columns": [
                                    {data: "mail_senddate"},
                                    {data: "patient_id"},
                                    {data: "book_code"},
                                    {data: "ext",
                                        render: function (data) {
                                            if (data === 'f') {
                                                return 'covid';
                                            } else if (data === 't') {
                                                return 'mcu';
                                            }
                                        }
                                    },
                                    {data: "mail_sendstatus"},
                                    {data: "outlet_name"},
                                    {data: "ins_name"},
                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "gender"},
                                    {data: "birth_date"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "citizenship_name"},
                                    {data: "jp_name"},
                                    {data: "product_name"},
                                    {data: "plate_no"},
                                    {data: "orf1ab"},
                                    {data: "ngene"},
                                    {data: "egene"},
                                    {data: "cy5"},
                                    {data: "ct5"},
                                    {data: "result_mesin"},
                                    {data: "result_mesindate"},
                                    {data: "final_result"},
                                    {data: "result_date"},
                                    {data: "plate_date"},
                                    {data: "book_date"},
                                    {data: "pdf",
                                        render: function (data) {
                                            return `<form action="` + data + `" target="blank"><input type="submit" value="Print" class="btn btn-primary"/></form>`;
                                        }
                                    }
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
                                                        title: "list already email",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list already email",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list already email",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list already email",
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
                                                        Result -> Email Hasil
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <ul class="nav nav-tabs topnav" id="myTab">
                                                    <!-- add data-toggle attribute to the anchors -->
                                                    <li><a data-toggle="tab" href="#emailhasil" class="active">Siap Untuk Di Email</a></li>
                                                    <li><a data-toggle="tab" href="#alreadyemail" onclick="hajaralreadyemail()">Sudah Di Email</a></li>
                                                </ul>
                                            </div>

                                            <div class="row">
                                                <div class="tab-content" style="width: 100%; margin-top: 20px">
                                                    <div id="emailhasil" class="tab-pane fade in active show">
                                                        <div class="row" style="height: 50px; justify-content: center;">
                                                            <label style="align-self: center; margin-right: 10px">kirim email 1 institusi</label>
                                                            <label id="cekbox" class="switch" style="align-self: center; margin: 0px 200px 0px 0px; padding: 0px;"><input type="checkbox" id="change_status" onchange="hide_ins()">
                                                                <div class="slider round"></div>
                                                            </label>
                                                            <select id="option_institusi" style="margin-right: 20px;width: 500px; align-self: center;border-radius: 3px;padding: 3px 20px 3px 20px;justify-content: center; visibility: hidden">
                                                                <option>pilih institusi</option>
                                                            </select>
                                                            <button type="button" class="btn btn-warning" style="height: 30px; padding: 0px 20px 0px 20px;align-self: center; visibility: hidden" id="btn_send" onclick="send1institution()">Send Email</button>
                                                        </div>
                                                        <div id="myModal_emailhasil" class="modal">
                                                            <div class="modal-content">
                                                                <span class="close">&times;</span>
                                                                <div id="push_text_emailhasil"></div>
                                                            </div>
                                                        </div>
                                                        <table class="table" id="table_email_hasil" style = "font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                    <th>Tanggal Hasil Final</th>
                                                                    <th>Id Pasien</th>
                                                                    <th>Kode Booking</th>
                                                                    <th>test type</th>
                                                                    <!--<th>Email Terkirim</th>-->
                                                                    <!--<th>Tanggal Kirim Email</th>-->
                                                                    <th>Lab</th>
                                                                    <th>Institusi</th>
                                                                    <!--<th>No. KTP</th>-->
                                                                    <th>Nama Pasien</th>
                                                                    <!--<th>Jenis Kelamin</th>-->
                                                                    <!--<th>Tgl Lahir</th>-->
                                                                    <th>Email</th>
                                                                    <th>Mobile</th>
                                                                    <th>Kewarganegaraan</th>

                                                                    <th>Jasa Pelayanan</th>
                                                                    <th>Produk Reagent</th>
                                                                    <th>No. Plate</th>
                                                                    <th>ORF1Ab</th>
                                                                    <th>N gene</th>
                                                                    <th>E gene</th>
                                                                    <th>CY5</th>
                                                                    <th>CT5</th>
                                                                    <th>Hasil Mesin</th>
                                                                    <th>Tanggal Proses Hasil Mesin</th>
                                                                    <th>Hasil Final</th>
                                                                    <th>Tgl Pengambilan Spesimen</th>
                                                                    <th>Tgl Registrasi</th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                        </table>
                                                        <%--<%@include file='pop_up_email_hasil.jsp'%>--%>
                                                        <%--<%@include file='pop_up_mcu_1.jsp'%>--%>
                                                    </div>
                                                    <div id="alreadyemail" class="tab-pane fade">
                                                        <table class="table" id="table_alreadyemail" style = "font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                <tr>
                                                                    <th>Tanggal Kirim Email</th>
                                                                    <th>Id Pasien</th>
                                                                    <th>Kode Booking</th>
                                                                    <th>test type</th>
                                                                    <th>Email Terkirim</th>
                                                                    <th>Lab</th>
                                                                    <th>Institusi</th>
                                                                    <th>No. KTP</th>
                                                                    <th>Nama Pasien</th>
                                                                    <th>Jenis Kelamin</th>
                                                                    <th>Tgl Lahir</th>
                                                                    <th>Email</th>
                                                                    <th>Mobile</th>
                                                                    <th>Kewarganegaraan</th>
                                                                    <th>Jasa Pelayanan</th>
                                                                    <th>Produk Reagent</th>
                                                                    <th>No. Plate</th>
                                                                    <th>ORF1Ab</th>
                                                                    <th>N gene</th>
                                                                    <th>E gene</th>
                                                                    <th>CY5</th>
                                                                    <th>CT5</th>
                                                                    <th>Hasil Mesin</th>

                                                                    <th>Tanggal Proses Hasil Mesin</th>
                                                                    <th>Hasil Final</th>
                                                                    <th>Tanggal Hasil Final</th>

                                                                    <th>Tgl Pengambilan Spesimen</th>
                                                                    <th>Tgl Registrasi</th>
                                                                    <th></th>
                                                                </tr>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <%@include file='pop_up_email_hasil.jsp'%>
                                                    <%@include file='pop_up_mcu_1.jsp'%>
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
        <script>
            function hide_ins() {
                var cek = document.getElementById('change_status').checked;
                if (cek) {
                    document.getElementById('option_institusi').style.visibility = 'visible';
                    document.getElementById('btn_send').style.visibility = 'visible';
                } else {
                    document.getElementById('option_institusi').style.visibility = 'hidden';
                    document.getElementById('btn_send').style.visibility = 'hidden';
                }
            }

            function send1institution() {
                var institution = document.getElementById('option_institusi').value;
                var modal = document.getElementById("myModal_emailhasil");
                var span = document.getElementsByClassName("close")[0];
                var push = document.getElementById("push_text_emailhasil");
                if (institution == "") {
                    push.innerHTML = "<p>institution must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (institution != "") {

                    var datjson8 = new Object();
                    datjson8.procCode = "100003";
                    datjson8.user_id = window.localStorage.getItem('lab_user_id');
                    datjson8.ins_code = institution;
                    $.ajax({
                        contentType: 'application/json',
                        dataType: "json",
                        url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                        data: JSON.stringify(datjson8),
                        type: 'post',
                        beforeSend: function () {
                            $('#loader').removeClass('hidden');
                        },
                        success: function (response) {
                            if (response.respCode == 0000) {
                                destroyEmailhasil();
                                getListEmailhasil();
                                alert('success send email to institution : ' + institution);
                                $('.cd-popup-add-email-hasil').removeClass('is-visible');
                                $("#form_add_email_hasil")[0].reset();
                            } else {
                                alert('failed send email institution : ' + response.respDesc);
                            }
                        },
                        complete: function () {
                            $('#loader').addClass('hidden');
                        }
                    });
                }
            }
        </script>
    </body>
</html>
