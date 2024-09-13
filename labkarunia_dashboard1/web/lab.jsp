<%-- 
    Document   : lab
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
            #table_lab {
                font-size: 12px;
            }
            .card-body{
                min-height: 705px;
            }
            #add_lab{
                cursor: pointer; padding: 10px; color: #29b19c; font-weight: 400;
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
                #add_lab{
                    cursor: pointer; padding: 10px; color: #29b19c; font-weight: 400;
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
                #table_lab {
                    font-size: 12px;
                }
            }

        </style>
        <script>
            jQuery(document).ready(function ($) {
                
                getListLab();
            });
            function destroyLab() {
                $('#table_lab').dataTable().fnClearTable();
                $('#table_lab').dataTable().fnDestroy();
            }
            function getListLab() {
                var datjson1 = new Object();
                datjson1.procCode = "200005";
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
                            $('#table_lab').DataTable({

                                "scrollX": true,
                                "data": datanya,
                                "columns": [
                                    {data: "outlet_id"},
                                    {data: "outlet_name"},
                                    {data: "alamat"},
                                    {data: "doctor"},
                                    {data: "manager"},
                                    {data: "description"},
                                    {data: "createdate"},
                                    {data: "creator"},
                                    {data: "updatetime"},
                                    {data: "modifier"},
                                    {data: "outlet_status",
                                        render: function (data) {
                                            if (data === '1') {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_status" checked disabled>'
                                                        + '<div class="slider round"><p hidden>' + data + '</p></div>'
                                                        + '</label>';
                                            } else {
                                                return '<label class="switch">'
                                                        + '<input type="checkbox" id="change_status" disabled>'
                                                        + '<div class="slider round"><p hidden>' + data + '</p></div>'
                                                        + '</label>';
                                            }
                                        }
                                    }

                                ],
                                dom: 'Bfrtip',
                                order: [[10, 'desc'], [6, 'desc']],
                                buttons: [
                                    {
                                        className: 'btn_colvis_lab',
                                        extend: 'colvis',
                                        text: 'Visibility'

                                    },
                                    {
                                        className: 'btn_export_lab',
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
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                        if (userlevel == 2) {
                            $('#ref_tabel_item').remove();
                            $('.btn_colvis_lab').remove();
                            $('.btn_export_lab').remove();
                        } else if (userlevel == 1) {
                            popupeditlab();
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
                                                        Lab
                                                    </p>
                                                </div>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%">
                                                    <div id="lab" class="tab-pane fade in active show">
                                                        <div class="container" id="ref_tabel_item">    
                                                            <label id="add_lab"><i class="icon fa fa-plus-circle" style="margin-right: 10px"></i>Create Lab</label>
                                                        </div>
                                                        <br>
                                                        <table class="table" id="table_lab" style="font-size: 12px; width: 100%">
                                                            <thead>  
                                                                <tr>
                                                                    <th>code</th>
                                                                    <th>name</th>
                                                                    <th>address</th>
                                                                    <th>doctor</th>
                                                                    <th>manager</th>
                                                                    <th>description</th>
                                                                    <th>create time</th>
                                                                    <th>create by</th>
                                                                    <th>last update</th>
                                                                    <th>update by</th>
                                                                    <th>status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                        <%@include file='pop_up_add_lab.jsp'%>
                                                        <%@include file='pop_up_edit_lab.jsp'%>
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
