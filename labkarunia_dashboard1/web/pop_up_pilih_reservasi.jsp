<%-- 
    Document   : pop_up_pilih_reservasi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-pilih-reservasi
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-pilih-reservasi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-pilih-reservasi {
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
    .cd-popup-pilih-reservasi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-pilih-reservasi-container {
        position: relative;
        width: 90%;
        height: 200px;
        max-width: 500px;
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

    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi div {
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
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-pilih-reservasi-container .cd-buttons-pilih-reservasi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-pilih-reservasi-container .cd-popup-pilih-reservasi-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-pilih-reservasi-container .cd-popup-pilih-reservasi-close::before, .cd-popup-pilih-reservasi-container .cd-popup-pilih-reservasi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-pilih-reservasi-container .cd-popup-pilih-reservasi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-pilih-reservasi-container .cd-popup-pilih-reservasi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-pilih-reservasi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-pilih-reservasi-container {
            margin: 8em auto;
        }
    }
    #label_pilih_reservasi {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_pilih_reservasi{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_pilih_reservasi {
        width: 215px;
        height: 200px;
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }

    #buttonon {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_covid {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_mcu {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_covid:hover {
        background-color: #CCC;
    }
    #btn_mcu:hover {
        background-color: #CCC;
    }


    /* The Close Button */
    .close {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>


<script>
    jQuery(document).ready(function ($) {
        if (userlevel !== 'owner') {
            $('#option_manager').remove();
        }

        //open popup provide password
        var patient_id = '';
        $('#table_listpasien').on('click', '#reservasi_btn', function (event) {
            event.preventDefault();
            var row = $(this).closest("tr");
            patient_id = $('#table_listpasien').DataTable().row(row).data().patient_id;
            $('.cd-popup-pilih-reservasi').addClass('is-visible');
        });

        //close popup provide password
        $('.cd-popup-pilih-reservasi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-pilih-reservasi-close') || $(event.target).is('.cd-popup-pilih-reservasi')) {
                event.preventDefault();
                $(this).removeClass('is-visible');


            }
        });
        $('.cd-popup-pilih-reservasi').on('click', function (event) {
            if ($(event.target).is('#btn_covid')) {
                event.preventDefault();

                var datjson8 = new Object();
                datjson8.procCode = "400008";
                datjson8.user_id = window.localStorage.getItem('lab_user_id');
                datjson8.patient_id = patient_id;
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson8),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },

                    success: function (response) {
                        if (response.respCode == 0000) {
                            document.getElementById("add_regispasien_code").value = patient_id;
                            document.getElementById("add_regispasien_identitynumber").value = response.idcard_number;
                            document.getElementById("add_regispasien_passport").value = response.passport_number;

                            document.getElementById("add_regispasien_name").value = response.name;
                            document.getElementById("add_regispasien_gender").value = response.gender;
                            document.getElementById("add_regispasien_birthday").value = response.birth_date;

                            document.getElementById("add_regispasien_nation").value = response.citizenship;
                            document.getElementById("add_regispasien_adress").value = response.address;
                            document.getElementById("add_regispasien_email").value = response.email;
                            document.getElementById("add_regispasien_phone").value = response.phonenumber;

                            var img_ktp2 = document.getElementById('img_ktp_ajukan_reservasi');
                            img_ktp2.src = response.idcard_img;
                            $('.cd-popup-ajukan-reservasi').addClass('is-visible');

                        } else {
                            alert('Failed get data pasien : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });



                $(this).removeClass('is-visible');
                $('.cd-popup-ajukan-reservasi').addClass('is-visible');
            } else if ($(event.target).is('#btn_mcu')) {
                event.preventDefault();
                
                
                
                var datjson8 = new Object();
                datjson8.procCode = "400008";
                datjson8.user_id = window.localStorage.getItem('lab_user_id');
                datjson8.patient_id = patient_id;
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson8),
                    type: 'post',
                    beforeSend: function () {
                        $('#loader').removeClass('hidden');
                    },

                    success: function (response) {
                        if (response.respCode == 0000) {
                            document.getElementById("add_regispasien_code_mcu").value = patient_id;
                            document.getElementById("add_regispasien_identitynumber_mcu").value = response.idcard_number;
                            document.getElementById("add_regispasien_passport_mcu").value = response.passport_number;

                            document.getElementById("add_regispasien_name_mcu").value = response.name;
                            document.getElementById("add_regispasien_gender_mcu").value = response.gender;
                            document.getElementById("add_regispasien_birthday_mcu").value = response.birth_date;

                            document.getElementById("add_regispasien_nation_mcu").value = response.citizenship;
                            document.getElementById("add_regispasien_adress_mcu").value = response.address;
                            document.getElementById("add_regispasien_email_mcu").value = response.email;
                            document.getElementById("add_regispasien_phone_mcu").value = response.phonenumber;

                            var img_ktp2 = document.getElementById('img_ktp_ajukan_reservasi_mcu');
                            img_ktp2.src = response.idcard_img;
                        } else {
                            alert('Failed get data pasien : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });
                
                
                
                $(this).removeClass('is-visible');
                $('.cd-popup-ajukan-reservasi-mcu').addClass('is-visible');
            }
        });


        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-pilih-reservasi').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-pilih-reservasi" role="alert">
    <div class="cd-popup-pilih-reservasi-container">
        <label id="label_pilih_reservasi">Pilih Tipe Layanan</label>
        <div id="boxx_pilih_reservasi">
            <div id="input_pilih_reservasi">
                <div id="buttonon">
                    <div id="btn_covid">Covid</div>
                    <div id="btn_mcu">MCU</div>
                </div>
                <div id="msgbox"></div>
            </div>
        </div>
        <a href="#0" class="cd-popup-pilih-reservasi-close img-replace-pilih-reservasi">Close</a>
    </div>
</div>