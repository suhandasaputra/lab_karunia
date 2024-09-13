<%-- 
    Document   : pasien
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
            .card-body{min-height: 705px}


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

            div.dt-button-collection button.dt-button:active:not(.disabled), div.dt-button-collection button.dt-button.active:not(.disabled), div.dt-button-collection div.dt-button:active:not(.disabled), div.dt-button-collection div.dt-button.active:not(.disabled), div.dt-button-collection a.dt-button:active:not(.disabled), div.dt-button-collection a.dt-button.active:not(.disabled) {
                height: 30px
            }
            div.dt-button-collection button.dt-button, div.dt-button-collection div.dt-button, div.dt-button-collection a.dt-button{
                height: 30px
            }

            @media only screen and (max-width: 400px) {
                .card-body{min-height: 620px}
            }

        </style>
        <script>
            $(document).ready(function () {

                getlistPasien();

//                switch (userlevel) {
//                    case '1':
//
//                        break;
//                    case '2':
//
//                        break;
//                    case '3':
//
//                        break;
//                    case '4':
//
//                        break;
//                    case '5':
//
//                        break;
//                    case '6':
//
//                        break;
//                    case '7':
//
//                        break;
//                    case '8':
//                        break;
//                    default:
//
//                        break;
//                }
            });

            function destroyPasien() {
                $('#table_listpasien').dataTable().fnClearTable();
                $('#table_listpasien').dataTable().fnDestroy();
            }

            function getlistPasien() {
                var datjson = new Object();
                datjson.procCode = "200008";
                datjson.user_id = window.localStorage.getItem('lab_user_id');
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
                            var timestamp = new Date().getTime();
                            var t = '?t=';
                            $('#table_listpasien').dataTable({
                                "paging": true,
                                "ordering": true,
                                "info": true,
                                "searching": true,
                                "data": datanya,
                                "columns": [
                                    {data: "patient_id"},
                                    {data: "idcard_number"},
                                    {data: "passport_number"},
                                    {data: "name"},
                                    {data: "gender"},
                                    {data: "birth_date"},
                                    {data: "citizenship_name"},
                                    {data: "address"},
                                    {data: "email"},
                                    {data: "phonenumber"},
                                    {data: "createdate"},
                                    {data: "createby"},
                                    {data: "updatetime"},
                                    {data: "updateby"},
                                    {data: "idcard_img",
                                        "className": 'idcard_img',
                                        "render": function (data) {
                                            return '<img height="80px" width="80px" src="' + data + t + timestamp + '"/>';
                                        }
                                    },
                                    {data: "passport_img",
                                        "className": 'passport_img',
                                        "render": function (data) {
                                            return '<img height="80px" width="80px" src="' + data + t + timestamp + '"/>';
                                        }
                                    },
                                    {data: "self_img",
                                        "className": 'self_img',
                                        "render": function (data) {
                                            return '<img height="80px" width="80px" src="' + data + t + timestamp + '"/>';
                                        }
                                    },
                                    {data: "status",
                                        render: function (data) {
                                            if (data === '1') {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_pasienstatus" checked disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            } else {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_pasienstatus" disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            }
                                        }
                                    },
                                    {data: "patient_id",
                                        "className": 'reservasi_btn',
                                        render: function (data) {
                                            return '<button type="button" class="btn btn-primary" id="reservasi_btn">Reservasi</button>';
                                        }
                                    }
                                ],
                                dom: 'Bfrtip',
                                "scrollX": true,
                                order: [[17, 'desc'], [10, 'desc']],
                                buttons: [
                                    {
                                        className: 'btn_colvis_pasien',
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {
                                        className: 'btn_export_pasien',
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list pasien",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list pasien",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list pasien",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list pasien",
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
                            $('.btn_colvis_pasien').remove();
                            $('.btn_export_pasien').remove();
                            $('#ref_tabel_item').remove();
                        } else if (userlevel == 1) {
                            popupeditpasien();
                            popupajukanreservasi();
                        } else if (userlevel == 6) {
                            popupeditpasien();
                            popupajukanreservasi();
                            $('#btn_delete_pasien').remove();
                        } else if (userlevel == 5) {
                            popupeditpasien();
                            popupajukanreservasi();
                        } else if (userlevel == 4) {
                            popupeditpasien();
                            popupajukanreservasi();
                        } else if (userlevel == 2) {
                            popupeditpasien();
                            popupajukanreservasi();
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
                                                        List Pasien
                                                    </p>
                                                </div>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%">
                                                    <label id="add_pasien" style="cursor: pointer; padding: 10px; color: #29b19c; font-weight: 400"><i class="icon fa fa-plus-circle" style="margin-right: 10px"></i>Create Pasien</label>
                                                    <table class="table" id="table_listpasien" style="font-size: 12px; width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>patient id</th>
                                                                <th>identity number</th>
                                                                <th>passport number</th>
                                                                <th>name</th>
                                                                <th>gender</th>
                                                                <th>birthdate</th>
                                                                <th>nationality</th>
                                                                <th>address</th>
                                                                <th>email</th>
                                                                <th>phone</th>
                                                                <th>createtime</th>                                                                                                                                        
                                                                <th>createby</th>
                                                                <th>updatetime</th>
                                                                <th>updateby</th>
                                                                <th>id img</th>
                                                                <th>passport img</th>
                                                                <th>self img</th>
                                                                <th>status</th>
                                                                <th>action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                    <%@include file='pop_up_add_reg_pasien.jsp'%>
                                                    <%@include file='pop_up_image_pasien.jsp'%>
                                                    <%@include file='pop_up_edit_pasien.jsp'%>
                                                    <%@include file='pop_up_pilih_reservasi.jsp'%>
                                                    <%@include file='pop_up_ajukan_reservasi.jsp'%>
                                                    <%@include file='pop_up_ajukan_reservasi_mcu.jsp'%>
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
//            $('#table_listpasien').on('click', 'td:nth-child(-n+19)', function () {
//                var $row = $(this).closest("tr");
//                var patient_id = $row.find(".patient_id").text();
//            });
        </script>
    </body>
</html>
