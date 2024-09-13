<%-- 
    Document   : pop_up_edit_brand
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-image
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-brand {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-image {
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
    .cd-popup-image.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-image-container {
        position: relative;
        width: 500px;
        height: 400px;
        /*max-width: 420px;*/
        margin: 4em auto;
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

    .cd-popup-image-container .cd-buttons-image:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-image-container .cd-buttons-image li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-image-container .cd-buttons-image div {
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
    .cd-popup-image-container .cd-buttons-image li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-image-container .cd-buttons-image li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-image-container .cd-buttons-image li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-image-container .cd-buttons-image li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-image-container .cd-buttons-image li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-image-container .cd-buttons-image li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-image-container .cd-popup-image-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-image-container .cd-popup-image-close::before, .cd-popup-image-container .cd-popup-image-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-image-container .cd-popup-image-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-image-container .cd-popup-image-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-image-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-image-container {
            margin: 8em auto;
        }
    }

    #boxx_brand{
        display: flex;
        justify-content: center;
        align-content: center;
    }



</style>


<script>
    jQuery(document).ready(function ($) {
        $('#table_listpasien').on('click', '.idcard_img', function () {

            var row = $(this).closest("tr");
            var patient_id = $('#table_listpasien').DataTable().row(row).data().patient_id;
            var datjson1 = new Object();
            datjson1.procCode = "400008";
            datjson1.user_id = window.localStorage.getItem('lab_user_id');
            datjson1.patient_id = patient_id;
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
                        var img_ktp = document.getElementById('img_ktp');
                        img_ktp.src = response.idcard_img;
                        img_ktp.style.width = '500px';
                        img_ktp.style.height = '400px';
                        img_ktp.style.padding = '30px';
                        $('.cd-popup-image').addClass('is-visible');

                    } else {
                        alert('Failed get data : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        $('#table_listpasien').on('click', '.passport_img', function () {
            var row = $(this).closest("tr");
            var patient_id = $('#table_listpasien').DataTable().row(row).data().patient_id;
            var datjson2 = new Object();
            datjson2.procCode = "400008";
            datjson2.user_id = window.localStorage.getItem('lab_user_id');
            datjson2.patient_id = patient_id;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson2),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        var img_ktp = document.getElementById('img_ktp');
                        img_ktp.src = response.passport_img;
                        img_ktp.style.width = '500px';
                        img_ktp.style.height = '400px';
                        img_ktp.style.padding = '30px';
                        $('.cd-popup-image').addClass('is-visible');

                    } else {
                        alert('Failed get data : ' + response.respDesc);
                    }

                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        $('#table_listpasien').on('click', '.self_img', function () {
            var row = $(this).closest("tr");
            var patient_id = $('#table_listpasien').DataTable().row(row).data().patient_id;
            var datjson3 = new Object();
            datjson3.procCode = "400008";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.patient_id = patient_id;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson3),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        var img_ktp = document.getElementById('img_ktp');
                        img_ktp.src = response.self_img;
                        img_ktp.style.width = '500px';
                        img_ktp.style.height = '400px';
                        img_ktp.style.padding = '30px';
                        $('.cd-popup-image').addClass('is-visible');

                    } else {
                        alert('Failed get data : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        //close popup edit brand
        $('.cd-popup-image').on('click', function (event) {
            if ($(event.target).is('.cd-popup-image-close') || $(event.target).is('.cd-popup-image') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit brand
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-image').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-image" role="alert">
    <div class="cd-popup-image-container">
        <div id="boxx_brand">

            <img id="img_ktp">

        </div>
        <a href="#0" class="cd-popup-image-close img-replace-edit-brand">Close</a>
    </div>
</div>