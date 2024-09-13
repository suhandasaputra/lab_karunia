<%-- 
    Document   : report
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
            td{
                margin: 0px;
                padding: 0px;
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

            .table input {
                width: 70px;
                margin: 3px;
                border-radius: 3px;
            }

            thead input {
                width: 100%;
            }
            div.dataTables_filter,
            div.dataTables_length {
                display: inline-block;
                margin-left: 1em;
            }

            @media only screen and (max-width: 400px) {
                .card-body{min-height: 620px}
            }
        </style>
        <script>
            $(document).ready(function () {
                
                getListReport();
            });

            function runguys() {
                destroyReport();
                getListReport();
            }
            function destroyReport() {
                $('#table_report').dataTable().fnClearTable();
                $('#table_report').dataTable().fnDestroy();
            }

            function getListReport() {
                var start = $('#tanggal_summary_from').val();
                var end = $('#tanggal_summary_to').val();

                var datjson = new Object();
                datjson.procCode = "200028";
                datjson.user_id = window.localStorage.getItem('lab_user_id');

                var today = new Date();
                if (start == '') {
                    var dd = String(today.getDate()).padStart(2, '0');
                    var mm = String(today.getMonth() + 1).padStart(2, '0');
                    var yyyy = today.getFullYear();
                    start = yyyy + '-' + mm + '-' + dd;
                }
                if (end == '') {
                    var dd = String(today.getDate()).padStart(2, '0');
                    var mm = String(today.getMonth() + 1).padStart(2, '0');
                    var yyyy = today.getFullYear();
                    end = yyyy + '-' + mm + '-' + dd;
                }

                datjson.startdate = start + ' 00:00:00';
                datjson.enddate = end + ' 23:59:59';
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
//                            $('#table_report thead tr').remove();
//                            $('#table_report thead').append(`<tr>
//                                                                    <th>Invoice</th>
//                                                                    <th>No. Invoice</th>
//                                                                    <th>No. Antrian</th>
//                                                                    <th>Kode Pasien</th>
//                                                                    <th>Lab</th>
//                                                                    <th>Institusi</th>
//                                                                    <th>Tgl Reservasi</th>
//                                                                    <th>Tgl Antrian</th>
//                                                                    <th>Waktu Antrian</th>
//                                                                    <th>Nama Pasien</th>
//                                                                    <th>Jenis Kelamin</th>
//                                                                    <th>Tgl Lahir</th>
//                                                                    <th>Kewarganegaraan</th>
//                                                                    <th>No. Identitas</th>
//                                                                    <th>Email</th>
//                                                                    <th>No. HP</th>
//                                                                    <th>Kode Booking</th>
//                                                                    <th>Sales</th>
//                                                                    <th>Tipe Pembayaran</th>
//                                                                    <th>Metode Pembayaran</th>
//                                                                    <th>Tujuan</th>
//                                                                    <th>Jasa Pelayanan</th>
//                                                                    <th>Produk Reagent</th>
//                                                                    <th>Tgl Plating</th>
//                                                                    <th>No. Plate</th>
//                                                                    <th>CT 1</th>
//                                                                    <th>CT 2</th>
//                                                                    <th>CT 3</th>
//                                                                    <th>Hasil (Mesin)</th>
//                                                                    <th>Tgl Hasil (Mesin)</th>
//                                                                    <th>Hasil Final (QC)</th>
//                                                                    <th>Tgl Final (QC)</th>
//                                                                    <th>Link PDF Hasil</th>
//                                                                    <th>Email terkirim</th>
//                                                                    <th>Tgl Email</th>
//                                                                    <th>Tower</th>
//                                                                    <th>No. Kamar</th>
//                                                                    <th>User Reservasi</th>
//                                                                </tr>`);
                            $('#table_report thead tr')
                                    .clone(true)
                                    .addClass('filters')
                                    .appendTo('#table_report thead');

                            var datanya = response.list;
                            $('#table_report').dataTable({

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
                                    {data: "invoice_date"},
                                    {data: "ext",
                                        render: function (data) {
                                            if (data === 'f') {
                                                return 'covid';
                                            } else if (data === 't') {
                                                return 'mcu';
                                            }
                                        }
                                    },
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
                                order: [32, 'desc'],
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
                                ]
                            });
                        } else {
                            alert('gagal : ' + response.respCode);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                        if (userlevel == 2) {
                            $('.btn_export_report').remove();
                        } else if (userlevel == 6) {
                            $('.btn_export_report').remove();
                        }
                    }
                });
            }

        </script>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!--Navbar--> 
            <%@include file='header.jsp'%>
            <!--/.navbar--> 
            <!--Main Sidebar Container--> 
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
                                                        Report
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="row" style="width: -webkit-fill-available;height: 50px;margin: 10px 0px 10px 0px;justify-content: center; background-color: #29B19C">
                                                <label style="font-weight: 100; color: white; margin: 10px 0px 0px 0px;font-weight: 600;">from</label>
                                                <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="tanggal_summary_from" class="col-md-3" name="tanggal_summary_from" placeholder="Today" style="border: 1px solid #CCC;border-radius: 3px;width: 100%;margin: 10px;height: 30px;">
                                                <label style="font-weight: 100; color: white; margin: 10px 0px 0px 20px;font-weight: 600;">to</label>
                                                <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="tanggal_summary_to" class="col-md-3" name="tanggal_summary_to" placeholder="Today" style="border: 1px solid #CCC;border-radius: 3px;width: 100%;margin: 10px;height: 30px;">
                                                <i class="icon fa fa-search" style="margin: 15px 0px 0px 0px; cursor: pointer; color: white" onclick="runguys()"></i>
                                            </div>
                                            <div id="pushtext2">
                                            </div>
                                            <div class="row">
                                                <div class="tab-content" style="width: 100%">
                                                    <div id="customer" class="tab-pane fade in active show">
                                                        <table class="nowrap" id="table_report" style="font-size: 12px; width: 100%;">
                                                            <thead>
                                                                <tr>
                                                                    <th>Invoice</th>
                                                                    <th>test type</th>
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
                                                        </table>
                                                    </div>
                                                </div>    
                                            </div>
                                            <!--/.row--> 
                                        </div>
                                        <!--./card-body--> 
                                    </div>
                                    <!--/.card--> 
                                </div>
                                <!--/.col--> 
                            </div>
                            <!--/.row--> 
                        </div>
                    </section>
                </div>
            </div>
            <!--Control Sidebar--> 
            <aside class="control-sidebar control-sidebar-dark">
                <!--Control sidebar content goes here--> 
            </aside>
            <!--Main Footer--> 
            <%@include file='footer.jsp'%>
        </div>

    </body>
</html>
