<%-- 
    Document   : pop_up_print_kwitansi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-image-print-kwitansi
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-print-kwitansi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-print-kwitansi {
        position: fixed;
        left: 0;
        top: 0;
        height: 100%;
        width: 100%;
        background-color: rgba(94, 110, 141, 0.9);
        opacity: 0;
        visibility: hidden;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0.3s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0.3s;
        transition: opacity 0.3s 0s, visibility 0s 0.3s;
    }
    .cd-popup-print-kwitansi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-print-kwitansi-container {
        /*margin-top: -100px;*/
        position: relative;
        width: 350px;
        /*height: 190px;*/
        /*max-width: 420px;*/
        margin: 3.5em auto;
        background: #FFF;
        border-radius: .25em .25em .4em .4em;
        text-align: center;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        -webkit-transform: translateY(-40px);
        -moz-transform: translateY(-40px);
        -ms-transform: translateY(-40px);
        -o-transform: translateY(-40px);
        transform: translateY(-40px);
        /* Force Hardware Acceleration in WebKit */
        -webkit-backface-visibility: hidden;
        -webkit-transition-property: -webkit-transform;
        -moz-transition-property: -moz-transform;
        transition-property: transform;
        -webkit-transition-duration: 0.3s;
        -moz-transition-duration: 0.3s;
        transition-duration: 0.3s;

    }

    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi div {
        cursor: pointer;
        display: block;
        height: 60px;
        line-height: 60px;
        text-transform: uppercase;
        color: #FFF;
        -webkit-transition: background-color 0.2s;
        -moz-transition: background-color 0.2s;
        transition: background-color 0.2s;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-print-kwitansi-container .cd-buttons-image-print-kwitansi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-print-kwitansi-container .cd-popup-print-kwitansi-close {
        position: absolute;
        top: 0px;
        right: 0px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-print-kwitansi-container .cd-popup-print-kwitansi-close::before, .cd-popup-print-kwitansi-container .cd-popup-print-kwitansi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: black;
    }
    .cd-popup-print-kwitansi-container .cd-popup-print-kwitansi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-print-kwitansi-container .cd-popup-print-kwitansi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-print-kwitansi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-print-kwitansi-container {
            margin:  8em auto;
        }
    }



    td {
        /*height: 1px;*/
        margin: 0px;
        padding: 0px;
    }
    /* style sheet for "A4" printing */
</style>

<script>
    jQuery(document).ready(function ($) {
        $('#table_antrian').on('click', '#print_invoice', function () {
//        $('#table_antrian').on('click', 'td', function () {

            var row = $(this).closest("tr");
            var book_code = $('#table_antrian').DataTable().row(row).data().book_code;
            var name = $('#table_antrian').DataTable().row(row).data().name;
            var gender = $('#table_antrian').DataTable().row(row).data().gender;
            var birth_date = $('#table_antrian').DataTable().row(row).data().birth_date;
            var jasa = $('#table_antrian').DataTable().row(row).data().detail_jasa;
            var today = new Date();
            var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
            var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
            var dateTime = date + ' ' + time;




            $('.cd-popup-print-kwitansi').addClass('is-visible');
        });

        //close popup edit brand
        $('.cd-popup-print-kwitansi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-print-kwitansi-close') || $(event.target).is('.cd-popup-print-kwitansi') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit brand
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-print-kwitansi').removeClass('is-visible');
            }
        });
    });
</script>

<div id="kwitansi_nya" style="width: 21cm; height: 15cm; position: absolute;">
    <div id="title" style="text-align: center; margin-top: 15px; font-size: 27px">
        <label><u>LABORATORIUM KARUNIA</u></label>
    </div>
    <div id="nama_pt" style="margin-left: 30px;text-align: center;font-weight: bold;width: 170px;font-size: 12px;margin-top: -15px;"><label>By : PT PENI MAHAARIA DIGDAYA</label></div>
    <div style="text-align: center;letter-spacing: 1px;"><label style="font-size: 12px">Head Office<br>Gd. Graha Dirgantara Lt. Gf Unit Plaza, Jl.Protokol HalimPerdana Kususma No.8 Jakarta Timur 13610.</label></div>
    <hr style="margin-top: 20px;">

    <div id="no_inv" style="display: inline-flex; margin-left: 30px; width: 20cm;">
        <label>NO.&nbsp;</label>
        <input type="text" id="isi_no_inv" style="border-style: none; border-bottom: 1px solid black; height: 20px;width: 120px">
        <label id="judul_kwitansi" style="font-size: 20px;width: 590px; height: 30px;border-style: none; margin-left: 8px; text-decoration: underline;text-align: center; letter-spacing: 1px;"><b>KWITANSI</b></label>
    </div><br>
    <div id="telah_terima_dari" style="display: inline-flex; margin-left: 30px; width: 20cm;">
        <label>Telah terima dari&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
        <input type="text" id="isi_telah_terima_dari" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 5px;">
    </div>
    <input type="text" id="isi_telah_terima_dari2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
    <div id="uang_sejumlah" style="display: inline-flex; margin-left: 30px; width: 20cm;">
        <label>Uang Sejumlah&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
        <input type="text" id="isi_uang_sejumlah" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px; background-color: #bfb4b4">
    </div>
    <div id="untuk_pembayaran" style="display: inline-flex; margin-left: 30px; width: 20cm;">
        <label>Untuk Pembayaran&ensp;&ensp;&ensp;:</label>
        <input type="text" id="isi_untuk_pembayaran" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px;">
    </div>
    <input type="text" id="isi_untuk_pembayaran2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
    <input type="text" id="isi_untuk_pembayaran3" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
    <br>
    <br>
    <br>
    <label style="left: 615px; position: absolute; margin-right: 20px;">Jakarta, <span id="tgl"></span></label>
    <br>
    <br>
    <br>
    <label style="float: right; margin-right: 86px;">Hormat Kami,</label>
    <br>
    <label style="float: right; margin-right: 20px;"><b>Laboratorium Karunia</b></label>
    <br>
    <div style="margin-left: 30px; height: 30px; width: 200px; border-style: none; border-top: 1px solid black; border-bottom: 1px solid black; font-size: 18px; place-items: center; display: inline-flex;">
        <div style="margin-right: 10px;text-align: center;font-style: italic"><strong>Rp</strong></div>
        <div id="nilai_angka" style="width: -webkit-fill-available;height: -webkit-fill-available;padding-top: 5px;text-align: center; font-weight: 600; font-style: italic; background-color: #bfb4b4">30000</div>
    </div>
    <br><br>
    <div id="ttd_cs" style="float: right; margin-right: 30px; width: 150px; height: 25px; border-left: 1px solid black; border-right: 1px solid black; border-radius: 10px"></div>
    <br>
    <br>
    <div id="ttd_cs_bawah" style="float: right; margin-right: 40px; width: 130px; font-size: 12px; border-top: 1px solid black; text-align: center; margin-top: -10px">Ttd : Customer Service</div>
</div>





<script src="js/jQuery.print.js"></script>
<script>
    jQuery(function ($) {
        'use strict';

        $("#btn_print_kwitansi").on('click', function () {
            //Print ele4 with custom options
            $("#header_halaman").print({
                //Use Global styles
                globalStyles: false,
                //Add link with attrbute media=print
                mediaPrint: false,
                //Custom stylesheet
                stylesheet: "css/bootstrap.min.css",
                //Print in a hidden iframe
                iframe: false,
                //Don't print this
                noPrintSelector: "#btn_print_kwitansi",
                //Add this at top
//                prepend: "Hello World!!!<br/>",
                //Add this on bottom
//                append: "<span><br/>Buh Bye!</span>",
                //Log to console when printing is done via a deffered callback
                deferred: $.Deferred().done(function () {
                    console.log('Printing done', arguments);
                })
            });
        });
    });
</script>
