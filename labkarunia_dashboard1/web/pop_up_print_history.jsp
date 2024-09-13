<%-- 
    Document   : pop_up_print_history
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>



<script>
    jQuery(document).ready(function ($) {
        $('#table_history').on('click', 'td', function () {
//            var row = $(this).closest("tr");
//            alert();
//            var book_code = $('#table_sample').DataTable().row(row).data().book_code;
//            document.getElementById('plating_print_history').value = book_code;
            $('.cd-popup-print-history').addClass('is-visible');
        });

        //close popup edit brand
        $('.cd-popup-print-history').on('click', function (event) {
            if ($(event.target).is('.cd-popup-print-history-close') || $(event.target).is('.cd-popup-print-history') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit brand
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-print-history').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-print-history" role="alert">
    <div class="cd-popup-print-history-container">
        <style>
            .cd-buttons-image-print-history
            {
                margin: 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
            }

            .img-replace-print-history {
                /* replace text with an image */
                display: inline-block;
                overflow: hidden;
                text-indent: 100%;
                color: transparent;
                white-space: nowrap;
            }

            .cd-popup-print-history {
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
            .cd-popup-print-history.is-visible {
                opacity: 1;
                visibility: visible;
                -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
                -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
                transition: opacity 0.3s 0s, visibility 0s 0s;
            }

            .cd-popup-print-history-container {
                /*margin-top: -100px;*/
                position: relative;
                width: 800px;
                height: 780px;
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

            .cd-popup-print-history-container .cd-buttons-image-print-history:after {
                content: "";
                display: table;
                clear: both;
            }
            .cd-popup-print-history-container .cd-buttons-image-print-history li {
                float: left;
                width: 50%;
                list-style: none;
            }
            .cd-popup-print-history-container .cd-buttons-image-print-history div {
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
            .cd-popup-print-history-container .cd-buttons-image-print-history li:first-child div {
                background: #3dceb7;
                border-radius: 0 0 0 .25em;
            }
            .cd-popup-print-history-container .cd-buttons-image-print-history li:first-child div:hover {
                background: #52e4cd;
                border-radius: 0 0 0 .25em;
            }

            .no-touch .cd-popup-print-history-container .cd-buttons-image-print-history li:first-child div:hover {
                background-color: #fc8982;
            }
            .cd-popup-print-history-container .cd-buttons-image-print-history li:last-child div {
                background: #b6bece;
                border-radius: 0 0 .25em 0;
            }
            .cd-popup-print-history-container .cd-buttons-image-print-history li:last-child div:hover {
                background: #d1d9e8;
                border-radius: 0 0 .25em 0;
            }
            .no-touch .cd-popup-print-history-container .cd-buttons-image-print-history li:last-child div:hover {
                background-color: #c5ccd8;
            }
            .cd-popup-print-history-container .cd-popup-print-history-close {
                position: absolute;
                top: 8px;
                right: 8px;
                width: 30px;
                height: 30px;
            }
            .cd-popup-print-history-container .cd-popup-print-history-close::before, .cd-popup-print-history-container .cd-popup-print-history-close::after {
                content: '';
                position: absolute;
                top: 12px;
                width: 14px;
                height: 3px;
                background-color: black;
            }
            .cd-popup-print-history-container .cd-popup-print-history-close::before {
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg);
                left: 8px;
            }
            .cd-popup-print-history-container .cd-popup-print-history-close::after {
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
                right: 8px;
            }
            .is-visible .cd-popup-print-history-container {
                -webkit-transform: translateY(0);
                -moz-transform: translateY(0);
                -ms-transform: translateY(0);
                -o-transform: translateY(0);
                transform: translateY(0);
            }

            @media only screen and (min-width: 1170px) {
                .cd-popup-print-history-container {
                    margin: 3.5em auto;
                }
            }



            td {
                /*height: 1px;*/
                margin: 0px;
                padding: 0px;
            }

            /*@media print {*/ 
            /*#bungkus {*/
            /*                    width : 2000px;
                                height : auto;*/
            /*}*/
            /*}*/

        </style>





            <div id="header_halaman" style="width: 100%; text-align: left; margin-left: 10px;">
                <table style="width: 100%; font-size: 12px; font-weight: 600">
                    <tr>
                        <td style="width: 20%">kode plate</td>
                        <td style="width: 5%">:</td>
                        <td style="width: 75%">1</td>
                    </tr>
                    <tr>
                        <td style="width: 20%">waktu</td>
                        <td style="width: 5%">:</td>
                        <td style="width: 75%">9/01/2022 12:05:20PM</td>
                    </tr>
                    <tr>
                        <td style="width: 20%">user</td>
                        <td style="width: 5%">:</td>
                        <td style="width: 75%">sugi biantoro</td>
                    </tr>
                </table>
            </div>








            <div id="isi_halaman" style="text-align: left; margin-left: 10px;margin-right:10px">
                <table style="width: 100%; font-size: 12px; border: 0.0px solid black">
                    <tr>
                        <td style="width: 50%; border: 1px solid black; text-align: center" colspan="5">A</td>
                        <td style="width: 50%; border: 1px solid black; text-align: center" colspan="5">B</td>
                    </tr>
                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">1</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">1</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">1</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>







                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">2</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">2</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">2</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>








                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">3</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">3</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">3</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>











                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">4</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">4</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">4</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>









                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">5</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">5</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">5</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>






                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">6</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">6</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">6</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>







                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">7</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">7</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">7</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black;border-right: 1px solid black">qr2</td>
                    </tr>







                    <tr>
                        <td style="width: 2%; border: 1px solid black" rowspan="5">8</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <td style="width: 2%; border: 1px solid black" rowspan="5">8</td>
                        <td style="width: 9%">nama</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">sex/ttl</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">no.identitas</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">sugy</td>
                        <td style="width: 10%">qr1</td>

                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%">tgl.antrian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 28%">adi</td>
                        <td style="width: 10%;border-right: 1px solid black">qr2</td>
                    </tr>
                    <tr>
                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">sugy</td>
                        <td style="width: 10%; border-bottom: 1px solid black">qr1</td>

                        <!--<td style="width: 2%">8</td>-->
                        <td style="width: 9%; border-bottom: 1px solid black">kd.booking</td>
                        <td style="width: 1%; border-bottom: 1px solid black">:</td>
                        <td style="width: 28%; border-bottom: 1px solid black">adi</td>
                        <td style="width: 10%; border-bottom: 1px solid black; border-right: 1px solid black">qr2</td>
                    </tr>

                </table>
            </div>
        <button type="button" class="btn btn-primary" style="position: absolute;top:8px;right: 60px;" id="btn_print_history">Print</button>
        <a href="#0" class="cd-popup-print-history-close img-replace-print-history">Close</a>
    </div>
</div>
<script>
    document.getElementById("btn_print_history").addEventListener("click", function () {
//        window.resizeTo(1000, 1000);

//        window.resizeTo(
//                window.screen.availWidth,
//                window.screen.availHeight
//                );




        window.print();

    });
</script>
