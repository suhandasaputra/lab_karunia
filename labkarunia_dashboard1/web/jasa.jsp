<%-- 
    Document   : jasa
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
                .card-body{min-height: 620px}
            }

        </style>
        <script>
            $(document).ready(function () {
                
                getListJasa();
            });

            function destroyJasa() {
                $('#table_jasa').dataTable().fnClearTable();
                $('#table_jasa').dataTable().fnDestroy();
            }

            function getListJasa() {
                var datjson = new Object();
                datjson.procCode = "200003";
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
                            $('#table_jasa').dataTable({
//                                "paging": false,
//                                "ordering": true,
//                                "info": false,
//                                "searching": false,
                                "data": datanya,
                                "columns": [
                                    {data: "jp_kode"},
                                    {data: "jp_name"},
//                                    {data: "jp_price",
//                                        "className": 'jp jp_price'},
                                    {data: "jp_kode_produk_vaksinku"},
                                    {data: "jp_createdate"},
                                    {data: "jp_createby"},
                                    {data: "jp_updatetime"},
                                    {data: "jp_updateby"},
                                    {data: "jp_metode_instan",
                                        render: function (data) {
                                            if (data === '1') {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_jp_metode_instan" checked disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            } else {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_jp_metode_instan" disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            }
                                        }
                                    },
                                    {data: "jp_status",
                                        render: function (data) {
                                            if (data === '1') {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_jpstatus" checked disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            } else {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_jpstatus" disabled>'
                                                        + '<div class="slider round"></div>'
                                                        + '</label>';
                                            }
                                        }
                                    }
                                ],
                                dom: 'Bfrtip',
                                "scrollX": true,
                                order: [[8, 'desc'],[3, 'desc']],
                                buttons: [
                                    {   
                                        className: 'btn_colvis_jasa',
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {   
                                        className: 'btn_export_jasa',
                                        extend: 'collection',
                                        text: 'Export',
                                        autoClose: true,
                                        buttons:
                                                [
                                                    {
                                                        extend: "copyHtml5",
                                                        title: "list jasa",
                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "csvHtml5",
                                                        title: "list jasa",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "list jasa",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "list jasa",
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
                        if (userlevel == 2) {
                            $('.btn_colvis_jasa').remove();
                            $('.btn_export_jasa').remove();
                        }
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
                                                        Jasa Pelayanan
                                                    </p>
                                                </div>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%">
                                                    <div id="jasa" class="tab-pane fade in active show">
                                                        <div class="container" id="ref_tabel_item">    
                                                            <label id="add_jasa" style="cursor: pointer; padding: 10px; color: #29b19c; font-weight: 400"><i class="icon fa fa-plus-circle" style="margin-right: 10px"></i>Create Jasa Pelayanan</label>
                                                        </div>
                                                        <br>
                                                        <table class="table" id="table_jasa" style="font-size: 12px; width: 100%">
                                                            <thead>
                                                                <tr>
                                                                    <th>code</th>
                                                                    <th>name</th>
                                                                    <th>kode vaksinku</th>
                                                                    <th>createdate</th>
                                                                    <th>create by</th>
                                                                    <th>updatetime</th>
                                                                    <th>update by</th>
                                                                    <th>metode</th>
                                                                    <th>status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                        <%@include file='pop_up_add_jasa.jsp'%>
                                                        <%@include file='pop_up_edit_jasa.jsp'%>
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
</html>