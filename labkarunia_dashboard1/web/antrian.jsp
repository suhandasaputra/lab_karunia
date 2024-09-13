<%-- 
    Document   : antrian
    Created on : Feb 24, 2020, 4:38:43 PM
    Author     : suhanda
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <%@include file='defaultextend.jsp'%>
        <script type="text/javascript" src="js/JsBarcode.all.min.js"></script>
        <script type="text/javascript" src="js/terbilang.js"></script>

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
            #table_antrian {
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
                #table_antrian {
                    font-size: 12px;
                }
            }

        </style>
        <script>
            jQuery(document).ready(function ($) {

                getListAntrian();
            });
            function destroyAntrian() {
                $('#table_antrian').dataTable().fnClearTable();
                $('#table_antrian').dataTable().fnDestroy();
            }
            function getListAntrian() {
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
                            $('#table_antrian').DataTable({

                                "data": datanya,
                                "columns": [

                                    {data: "queue_date"},
                                    {data: "ext",
                                        render: function (data) {
                                            if (data === 'f') {
                                                return 'covid';
                                            } else if (data === 't') {
                                                return 'mcu';
                                            }
                                        }
                                    },
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
                                    {data: "price"},
                                    {data: "discount"},
                                    {data: "total_bill"},
                                    {data: "invoice_no"},
                                    {data: "invoice_status"
//                                        ,
//                                        render: function (data) {
//                                            if (data === '1') {
//                                                return '<label class="switch">'
//                                                        + '<input type="checkbox" id="change_status" checked disabled>'
//                                                        + '<div class="slider round"></div>'
//                                                        + '</label>';
//                                            } else {
//                                                return '<label class="switch">'
//                                                        + '<input type="checkbox" id="change_status" disabled>'
//                                                        + '<div class="slider round"></div>'
//                                                        + '</label>';
//                                            }
//                                        }
                                    },
                                    {data: "book_code",
                                        render: function (data) {
                                            return '<button type="button" class="btn btn-primary" id="print_guys">Barcode</button>';
                                        }
                                    }
                                    ,
                                    {data: "book_code",
                                        render: function (data) {
                                            return '<button type="button" class="btn btn-primary" id="print_invoice">Kwitansi</button>';
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
                        if (userlevel == 8) {
                            $('.btn-primary').remove();
                            $('.btn_colvis_antrian').remove();
                            $('.btn_export_antrian').remove();
                        } else if (userlevel == 1) {
                            popupeditantrian();
                        } else if (userlevel == 6) {
                            popupeditantrian();
                        } else if (userlevel == 5) {
                            popupeditantrian();
                        } else if (userlevel == 4) {
                            popupeditantrian();
                        } else if (userlevel == 3) {
                            popupeditantrian();
                        } else if (userlevel == 2) {
                            popupeditantrian();
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
                                                        List Antrian
                                                    </p>
                                                </div>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content">
                                                    <!--<div id="lab" class="tab-pane fade in active show">-->
                                                    <!--<br>-->
                                                    <label id="import_antrian" style="cursor: pointer; padding: 10px; color: #29b19c; font-weight: 400"><i class="icon fa fa-arrow-up" style="margin-right: 10px"></i>Import Antrian</label>
                                                    <table class="table" id="table_antrian" style="font-size: 12px; width: 100%">
                                                        <thead>  
                                                            <tr>
                                                                <th>queue_date</th>
                                                                <th>test type</th>                                                                    
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
                                                                <th>price</th>
                                                                <th>discount</th>
                                                                <th>total</th>
                                                                <th>invoice_no</th>
                                                                <th>invoice_status</th>
                                                                <th>print barcode</th>
                                                                <th>print kwitansi</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                    <%@include file='pop_up_edit_antrian.jsp'%>
                                                    <%@include file='pop_up_import_antrian.jsp'%>
                                                    <!--</div>-->
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

        <div id="bungkusan" hidden="">
            <div id="kwitansi_nya" style="width: 21cm; height: 15cm; position: absolute;">
                <div id="title" style="text-align: center; margin-top: 15px; font-size: 27px">
                    <label><u>LABORATORIUM KARUNIA</u></label>
                </div>
                <div id="nama_pt" style="margin-left: 30px;text-align: center;font-weight: bold;width: 170px;font-size: 12px;margin-top: -15px;"><label>By : PT PENI MAHAARIA DIGDAYA</label></div>
                <div style="text-align: center;letter-spacing: 1px;"><label style="font-size: 12px">Head Office<br>Gd. Graha Dirgantara Lt. Gf Unit Plaza, Jl.Protokol HalimPerdana Kususma No.8 Jakarta Timur 13610.</label></div>
                <hr style="margin-top: 10px;">

                <div id="no_inv" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                    <label>NO.&nbsp;</label>
                    <input type="text" id="isi_no_inv" style="border-style: none; border-bottom: 1px solid black; height: 20px;width: 140px; font-size: 14px">
                    <label id="judul_kwitansi" style="font-size: 20px;width: 590px; height: 30px;border-style: none; margin-left: 8px; text-decoration: underline;text-align: center; letter-spacing: 1px;"><b>KWITANSI</b></label>
                </div>
                <br>
                <br>
                <div id="telah_terima_dari" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                    <label>Telah terima dari&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
                    <input type="text" id="isi_telah_terima_dari" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 5px;">
                </div>
                <!--<input type="text" id="isi_telah_terima_dari2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 195px;">-->
                <div id="uang_sejumlah" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                    <label>Uang Sejumlah&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
                    <input type="text" id="isi_uang_sejumlah" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px; background-color: #bfb4b4">
                </div>
                <div id="untuk_pembayaran" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                    <label>Untuk Pembayaran&nbsp;&ensp;&ensp;:</label>
                    <input type="text" id="isi_untuk_pembayaran" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px;">
                </div>
                <input type="text" id="isi_untuk_pembayaran2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 195px;">
                <!--<input type="text" id="isi_untuk_pembayaran3" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 195px;">-->
                <br>
                <br>
                <label style="left: 615px; position: absolute; margin-right: 20px;">Jakarta, <span id="tgl"></span></label>
                <br>
                <br>
                <label style="float: right; margin-right: 86px;">Hormat Kami,</label>
                <br><br>
                <label style="float: right; margin-right: 20px;margin-top: -20px"><b>Laboratorium Karunia</b></label>
                <br>
                <div style="margin-left: 30px; height: 30px; width: 200px; border-style: none; border-top: 1px solid black; border-bottom: 1px solid black; font-size: 18px; place-items: center; display: inline-flex;">
                    <div style="margin-right: 10px;text-align: center;font-style: italic"><strong>Rp</strong></div>
                    <div id="nilai_angka" style="width: -webkit-fill-available;height: -webkit-fill-available;padding-top: 5px;text-align: center; font-weight: 600; font-style: italic; background-color: #bfb4b4"></div>
                </div>
                <br><br>
                <div id="ttd_cs" style="float: right; margin-right: 30px; width: 150px; height: 25px; border-left: 1px solid black; border-right: 1px solid black; border-radius: 10px; text-align: center;"></div>
                <br>
                <br>
                <div id="ttd_cs_bawah" style="float: right; margin-right: 40px; width: 130px; font-size: 12px; border-top: 1px solid black; text-align: center; margin-top: -20px">Ttd : Customer Service</div>
            </div>
        </div>
    </body>
    <script>
        $('#table_antrian').on('click', '#print_invoice', function () {
            var row = $(this).closest("tr");
            var upp = $('#table_antrian').DataTable().row(row).data().ext;

            if (upp === 'f') {
                var today = new Date();
                var mnt = today.getMonth() + 1;
                var month;
                switch (mnt) {
                    case 1:
                        month = 'Januari';
                        break;
                    case 2:
                        month = 'Februari';
                        break;
                    case 3:
                        month = 'Maret';

                        break;
                    case 4:
                        month = 'April';

                        break;
                    case 5:
                        month = 'Mei';

                        break;
                    case 6:
                        month = 'Juni';

                        break;
                    case 7:
                        month = 'Juli';

                        break;
                    case 8:
                        month = 'Agustus';

                        break;
                    case 9:
                        month = 'September';

                        break;
                    case 10:
                        month = 'Oktober';

                        break;
                    case 11:
                        month = 'November';

                        break;
                    case 12:
                        month = 'Desember';
                        break;
                    default:
                        break;
                }
                var date = today.getDate() + '-' + month + '-' + today.getFullYear();

                var row = $(this).closest("tr");
                var invoice_no = $('#table_antrian').DataTable().row(row).data().invoice_no;
                var name = $('#table_antrian').DataTable().row(row).data().name;
                var total = $('#table_antrian').DataTable().row(row).data().total_bill;
                var detail_jasa = $('#table_antrian').DataTable().row(row).data().detail_jasa;
                document.getElementById('isi_no_inv').value = invoice_no;
                document.getElementById('isi_telah_terima_dari').value = name;
                document.getElementById('tgl').innerHTML = date;
                document.getElementById('isi_uang_sejumlah').value = '#' + terbilang(total) + 'rupiah#';
                document.getElementById('isi_untuk_pembayaran').value = 'Layanan Test ' + detail_jasa;
                document.getElementById('nilai_angka').innerHTML = masking_duit(total);
                document.getElementById('ttd_cs').innerHTML = user_name;
                printguys();
            }
        });



        function printguys() {
            $("#kwitansi_nya").print({
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
    </script>
</html>
