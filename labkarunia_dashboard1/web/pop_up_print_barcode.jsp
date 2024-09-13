<%-- 
    Document   : pop_up_print_barcode
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-image-print-barcode
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-print-barcode {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-print-barcode {
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
    .cd-popup-print-barcode.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-print-barcode-container {
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

    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode div {
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
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-print-barcode-container .cd-buttons-image-print-barcode li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-print-barcode-container .cd-popup-print-barcode-close {
        position: absolute;
        top: 0px;
        right: 0px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-print-barcode-container .cd-popup-print-barcode-close::before, .cd-popup-print-barcode-container .cd-popup-print-barcode-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: black;
    }
    .cd-popup-print-barcode-container .cd-popup-print-barcode-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-print-barcode-container .cd-popup-print-barcode-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-print-barcode-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-print-barcode-container {
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
        $('#table_antrian').on('click', '#print_guys', function () {
            var row = $(this).closest("tr");
            var upp = $('#table_antrian').DataTable().row(row).data().ext;
            
            if (upp === 'f') {
                
                var book_code = $('#table_antrian').DataTable().row(row).data().book_code;
                var name = $('#table_antrian').DataTable().row(row).data().name;
                var gender = $('#table_antrian').DataTable().row(row).data().gender;
                var birth_date = $('#table_antrian').DataTable().row(row).data().birth_date;
                var jasa = $('#table_antrian').DataTable().row(row).data().detail_jasa;
                var today = new Date();
                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                var dateTime = date + ' ' + time;

                JsBarcode("#barcode_nya", book_code, {
                    format: "code128",
                    lineColor: "black",
                    width: 4,
                    height: 100,
                    displayValue: false
                });

                document.getElementById('ant_kb').innerHTML = book_code;
                document.getElementById('ant_name').innerHTML = name;
                document.getElementById('ant_sex').innerHTML = gender + ' / ' + birth_date;
                document.getElementById('ant_jasa').innerHTML = jasa;
                document.getElementById('ant_tgl').innerHTML = dateTime;
                $('.cd-popup-print-barcode').addClass('is-visible');
            }






        });

        //close popup edit brand
        $('.cd-popup-print-barcode').on('click', function (event) {
            if ($(event.target).is('.cd-popup-print-barcode-close') || $(event.target).is('.cd-popup-print-barcode') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit brand
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-print-barcode').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-print-barcode" role="alert">
    <div class="cd-popup-print-barcode-container">
        <div id="pembungkus" style="">
            <style>
                /*                img{
                                    margin: 5px;
                                    width: 70mm;
                                    height: 10mm;
                                }*/
            </style>
            <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
            <div id="header_halaman" style="width: 80mm; height: 50mm;text-align: -webkit-center; padding-top: 2px">
                <div style="width:78mm; height: 15mm; border: 1px solid black">
                    <svg id="barcode_nya" style="width: 70mm; height: 14mm; align-content: center;"></svg>
                </div>
                <table style="width: 78mm; font-size: 12px; font-weight: 600; border: 1px solid black;">
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">kode booking</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_kb"></td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">Nama</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_name"></td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">Sex/Tgl.Lahir</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_sex"></td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">Jasa</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_jasa"></td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">Tgl.Sample</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_tgl"></td>
                    </tr>
                    <tr>
                        <td style="width: 30%; padding-left: 10px;border: 1px solid black;" class="brcode">Tower/Kamar</td>
                        <td style="width: 70%; padding-left: 10px;border: 1px solid black;" class="brcode" id="ant_tower"></td>
                    </tr>
                </table>
            </div><br>
            <!--<button type="button" class="btn btn-primary" style="width: 100px" id="btn_barcode">barcode</button>-->
            <button type="button" class="btn btn-primary" style="width: 100px" id="btn_print_barcode">Print</button>
        </div><br>
        <a href="#0" class="cd-popup-print-barcode-close img-replace-print-barcode">Close</a>
    </div>
</div>
<script src="js/jQuery.print.js"></script>
<script>
    jQuery(function ($) {
        'use strict';

        $("#btn_print_barcode").on('click', function () {
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
                noPrintSelector: "#btn_print_barcode",
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
