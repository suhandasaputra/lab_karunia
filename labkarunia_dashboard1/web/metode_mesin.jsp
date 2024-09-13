<%-- 
    Document   : metode_mesin
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
        <link rel="stylesheet" href="https://cdn.datatables.net/v/dt/dt-1.10.16/b-2.2.2/b-colvis-2.2.2/b-html5-2.2.2/sl-1.2.5/datatables.min.css">
        <link rel="stylesheet" href="https://gyrocode.github.io/jquery-datatables-checkboxes/1.2.10/css/dataTables.checkboxes.css">

        <script src="https://cdn.datatables.net/v/dt/dt-1.10.16/b-2.2.2/b-colvis-2.2.2/b-html5-2.2.2/sl-1.2.5/datatables.min.js"></script>
        <script src="https://gyrocode.github.io/jquery-datatables-checkboxes/1.2.10/js/dataTables.checkboxes.min.js"></script>
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
            .dt-buttons{
                margin: 10px;
            }

            table.dataTable.select tbody tr,
            table.dataTable thead th:first-child {
                cursor: pointer;
            }
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
            .red {
  background-color: red !important;
}
        </style>
        <script>
            jQuery(document).ready(function ($) {
                
                destroysettinghasil();
                getListsettinghasil();

            });
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
                                                        Result -> Metode Mesin
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <ul class="nav nav-tabs topnav" id="myTab">
                                                    <!-- add data-toggle attribute to the anchors -->
                                                    <!--<li><a data-toggle="tab" href="#uploaddatamesin" class="active">Upload Data Mesin</a></li>-->
                                                    <li><a data-toggle="tab" href="#settinghasil" onclick="getmetodemesin()" class="active">Setting Hasil</a></li>
                                                    <li><a data-toggle="tab" href="#qchasilfinal" onclick="getQc()">QC Set Final</a></li>
                                                </ul>
                                                <button type="button" class="btn btn-primary" style="margin-left: 200px; width: 300px" id="btn_set_metodemesin">Set Hasil</button>
                                                <button type="button" class="btn btn-warning" style="margin-left: 200px; width: 300px" id="btn_set_final">Set Final</button>
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%; margin-top: 0px">
                                                    <!--                                                    <div id="uploaddatamesin" class="tab-pane fade in active show">
                                                                                                        </div>-->
                                                    <div id="settinghasil" class="tab-pane fade in active show">
                                                        <table class="display select" id="table_settinghasil" cellspacing="0" width="100%" style = "font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>Tanggal Plating</th>
                                                                    <!--<th>Tanggal Booking</th>-->
                                                                    <th>Kode Booking</th>
                                                                    <th>Id Pasien</th>
                                                                    <!--<th>No. KTP</th>-->
                                                                    <th>Nama Pasien</th>
                                                                    <th>Produk Reagent</th>
                                                                    <th>ORF1Ab</th>
                                                                    <th>N gene</th>
                                                                    <th>E gene</th>
                                                                    <th>CY5</th>
                                                                    <th>CT5</th>
                                                                    <th>Hasil Mesin</th>
                                                                    <th>Tanggal Proses Hasil Mesin</th>
                                                                    <th>Hasil Final</th>
                                                                    <th>No. Plate</th>
                                                                    <th>Recheck</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                        <%@include file='pop_up_metode_mesin_seting_hasil.jsp'%>
                                                    </div>
                                                    <div id="qchasilfinal" class="tab-pane fade">
                                                        <table class="table" id="table_qchasilfinal" style = "font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>Tanggal Seting Hasil</th>
                                                                    <!--<th>Tanggal Booking</th>-->
                                                                    <th>Kode Booking</th>
                                                                    <!--<th>No. KTP</th>-->
                                                                    <th>Id Pasien</th>
                                                                    <th>Nama Pasien</th>
                                                                    <th>Produk Reagent</th>
                                                                    <th>ORF1Ab</th>
                                                                    <th>N gene</th>
                                                                    <th>E gene</th>
                                                                    <th>CY5</th>
                                                                    <th>CT5</th>
                                                                    <th>Hasil Mesin</th>
                                                                    <th>Tanggal Proses Hasil Mesin</th>
                                                                    <th>Hasil Final</th>
                                                                    <th>No. Plate</th>
                                                                    <th>Recheck</th>
                                                                    <th>Red flag</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                        <%@include file='pop_up_metode_mesin_qc.jsp'%>
                                                        <%@include file='pop_up_metode_mesin_approve.jsp'%>
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
        <script>
            function getmetodemesin() {
                document.getElementById('btn_set_metodemesin').style.display = 'block';
                document.getElementById('btn_set_final').style.display = 'none';

                document.getElementById('btn_set_metodemesin').disabled = false;
                document.getElementById('btn_set_final').disabled = true;

                destroysettinghasil();
                getListsettinghasil();


            }

            function destroysettinghasil() {
                $('#table_settinghasil').dataTable().fnClearTable();
                $('#table_settinghasil').dataTable().fnDestroy();
            }
            let table, table1;
            function getListsettinghasil() {
                document.getElementById('btn_set_metodemesin').style.display = 'block';
                document.getElementById('btn_set_final').style.display = 'none';

                document.getElementById('btn_set_metodemesin').disabled = false;
                document.getElementById('btn_set_final').disabled = true;
                var datjson1 = new Object();
                datjson1.procCode = "200024";
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
                            var rows_selected = [];
                            var datanya = response.list;
                            table = $('#table_settinghasil').DataTable({
                                dom: 'Bfrtip',
                                "data": datanya,

                                "columns": [
                                    {data: "book_code"},
                                    {data: "plate_date"},
//                                    {data: "book_date"},
                                    {data: "book_code"},
                                    {data: "patient_id"},
//                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "product_reagent"},
                                    {data: "orf1ab"},
                                    {data: "ngene"},
                                    {data: "egene"},
                                    {data: "cy5"},
                                    {data: "ct5"},
                                    {data: "result_mesin"},
                                    {data: "result_date"},
                                    {data: "final_result"},
                                    {data: "plate_no"},
                                    {data: "recheck"}

                                ],
                                'columnDefs': [
                                    {
                                        'targets': 0,
                                        'checkboxes': {
                                            'selectRow': true
                                        }
                                    }
                                ],
                                'select': {
                                    'style': 'multi'
                                },
                                scrollX: true,
                                order: [1, 'desc'],
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
//                                                    {
//                                                        extend: "copyHtml5",
//                                                        title: "List Seting Hasil",
//                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
//                                                        footer: true
//                                                    },
//                                                    {
//                                                        extend: "csvHtml5",
//                                                        title: "List Seting Hasil",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "List Seting Hasil",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "List Seting Hasil",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
//                                                    {
//                                                        extend: "print",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    }
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

            // Handle form submission event 
            $('#btn_set_metodemesin').on('click', function () {
                document.getElementById('set_hasil_orflab').style.display = 'none';
                document.getElementById('set_hasil_egene').style.display = 'none';
                document.getElementById('set_hasil_ngene').style.display = 'none';
                document.getElementById('set_hasil_ct5').style.display = 'none';
                document.getElementById('set_hasil_cy5').style.display = 'none';

                document.getElementById('set_hasil_orflab').value = '';
                document.getElementById('set_hasil_egene').value = '';
                document.getElementById('set_hasil_ngene').value = '';
                document.getElementById('set_hasil_ct5').value = '';
                document.getElementById('set_hasil_cy5').value = '';
                document.getElementById('set_hasil_orflab').disabled = true;
                document.getElementById('set_hasil_egene').disabled = true;
                document.getElementById('set_hasil_ngene').disabled = true;
                document.getElementById('set_hasil_ct5').disabled = true;
                document.getElementById('set_hasil_cy5').disabled = true;


                var lthg = table.rows('.selected').data().length;
                console.log('leng nya coy : ' + lthg);
                var kode_booking = [];
                var nama = [];
                var recheck = [];
                var gg;
                gg = table.tables().rows({selected: true}).data();
                for (var i = 0; i < lthg; i++) {
                    kode_booking.push(gg[i].book_code);
                    nama.push(gg[i].name);
                    recheck.push(gg[i].recheck)
                }
                if (lthg > 1) {
                    let check = recheck.includes("1");
                    if (check) {
                        alert('tidak boleh set multiple pada sample RECHECK');
                    } else {
                        document.getElementById("set_hasil_book_code").value = kode_booking;
                        document.getElementById("set_hasil_name").value = nama;
                        document.getElementById('set_hasil_hasil').value = 'NEGATIVE';
                        document.getElementById('set_hasil_hasil').disabled = true;
                        $('.cd-popup-metode_mesin_setting_hasil').addClass('is-visible');
                    }
                } else if (lthg == 1) {
                    document.getElementById('set_hasil_hasil').disabled = false;
                    document.getElementById("set_hasil_book_code").value = kode_booking;
                    document.getElementById("set_hasil_name").value = nama;
                    $('.cd-popup-metode_mesin_setting_hasil').addClass('is-visible');
                } else {
                    alert('pilih minimal 1 sample');
                }
            });

            function getQc() {
                destroyQc();
                getListQc();
            }

            function destroyQc() {
                $('#table_qchasilfinal').dataTable().fnClearTable();
                $('#table_qchasilfinal').dataTable().fnDestroy();
            }
            function getListQc() {
                document.getElementById('btn_set_metodemesin').style.display = 'none';
                document.getElementById('btn_set_final').style.display = 'block';

                document.getElementById('btn_set_metodemesin').disabled = true;
                document.getElementById('btn_set_final').disabled = false;
                var datjson1 = new Object();
                datjson1.procCode = "200025";
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
                            table1 = $('#table_qchasilfinal').DataTable({
                                
                                "data": datanya,
                                "columns": [
                                    {data: "book_code"},
                                    {data: "result_mesindate"},
//                                    {data: "book_date"},
                                    {data: "book_code"},
                                    {data: "patient_id"},
//                                    {data: "idcard_number"},
                                    {data: "name"},
                                    {data: "product_reagent"},
                                    {data: "orf1ab"},
                                    {data: "ngene"},
                                    {data: "egene"},
                                    {data: "cy5"},
                                    {data: "ct5"},
                                    {data: "result_mesin"},
                                    {data: "result_date"},
                                    {data: "final_result"},
                                    {data: "plate_no"},
                                    {data: "recheck"},
                                    {data: "red_flag"}
                                ],
                                'columnDefs': [
                                    {
                                        'targets': 0,
                                        'checkboxes': {
                                            'selectRow': true
                                        }
                                    }
                                ],
                                "createdRow": function (row, data, dataIndex) {
                                    if (data.red_flag == 1) {
                                        $(row).addClass('red');
                                    }
                                },
                                'select': {
                                    'style': 'multi'
                                },
                                dom: 'Bfrtip',
                                scrollX: true,
                                order: [1, 'desc'],
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
//                                                    {
//                                                        extend: "copyHtml5",
//                                                        title: "List Set Final",
//                                                        exportOptions: {columns: ':visible:not()'}, //last column has the action types detail/edit/delete
//                                                        footer: true
//                                                    },
//                                                    {
//                                                        extend: "csvHtml5",
//                                                        title: "List Set Final",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    },
                                                    {
                                                        extend: "excelHtml5",
                                                        title: "List Set Final",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true

                                                    },
                                                    {
                                                        extend: "pdfHtml5",
                                                        title: "List Set Final",
                                                        exportOptions: {columns: ':visible:not()'},
                                                        footer: true
                                                    },
//                                                    {
//                                                        extend: "print",
//                                                        exportOptions: {columns: ':visible:not()'},
//                                                        footer: true
//                                                    }
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





            // Handle form submission event 
            $('#btn_set_final').on('click', function () {
                var lthg1 = table1.rows('.selected').data().length;
                var kode_booking = [];
                var name = [];
                var orflab = [];
                var ngene = [];
                var egene = [];
                var cy5 = [];
                var ct5 = [];
                var hasil = [];
                var recheck = [];
                var gg;
                gg = table1.tables().rows({selected: true}).data();
                for (var i = 0; i < lthg1; i++) {
                    kode_booking.push(gg[i].book_code);
                    name.push(gg[i].name);
                    orflab.push(gg[i].orflab);
                    ngene.push(gg[i].ngene);
                    egene.push(gg[i].egene);
                    cy5.push(gg[i].cy5);
                    ct5.push(gg[i].ct5);
                    hasil.push(gg[i].result_mesin);
                    recheck.push(gg[i].recheck);
                }
                if (lthg1 > 1) {
                    console.log('ini hasil : ' + hasil);
                    console.log('ini recheck : ' + recheck);
                    let result = hasil.includes("POSITIVE");
                    let check = recheck.includes("1");
                    if (result) {
                        alert('tidak boleh set multiple pada sample POSITIVE');
                    } else if (check) {
                        alert('tidak boleh set multiple pada sample RECHECK');
                    } else {
                        document.getElementById("set_qc_book_code").value = kode_booking;
                        document.getElementById("set_qc_name").value = name;
                        document.getElementById("set_qc_orflab").value = '0';
                        document.getElementById("set_qc_ngene").value = '0';
                        document.getElementById("set_qc_egene").value = '0';
                        document.getElementById("set_qc_cy5").value = '0';
                        document.getElementById("set_qc_ct5").value = '0';
                        document.getElementById("set_qc_hasil").value = 'NEGATIVE';
                        document.getElementById("btn_recheck_qc").style.display = 'none';
                        $('.cd-popup-metode_mesin_qc').addClass('is-visible');
                    }
                } else if (lthg1 == 1) {
                    document.getElementById("btn_recheck_qc").style.display = 'block';
                    document.getElementById("set_qc_book_code").value = kode_booking;
                    document.getElementById("set_qc_name").value = name;
                    document.getElementById("set_qc_orflab").value = orflab;
                    document.getElementById("set_qc_ngene").value = ngene;
                    document.getElementById("set_qc_egene").value = egene;
                    document.getElementById("set_qc_cy5").value = cy5;
                    document.getElementById("set_qc_ct5").value = ct5;
                    document.getElementById("set_qc_hasil").value = hasil;

                    $('.cd-popup-metode_mesin_qc').addClass('is-visible');
                } else {
                    alert('pilih minimal 1 sample untuk set final');
                }
            });
        </script>
    </body>

</html>
