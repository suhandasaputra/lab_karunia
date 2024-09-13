<%-- 
    Document   : pop_up_ajukan_reservasi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-ajukan-reservasi
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-ajukan-reservasi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-ajukan-reservasi {
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
    .cd-popup-ajukan-reservasi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-ajukan-reservasi-container {
        position: relative;
        top: -50px;
        width: 90%;
        height: 700px;
        max-width: 1000px;
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

    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi div {
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
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-ajukan-reservasi-container .cd-buttons-ajukan-reservasi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-ajukan-reservasi-container .cd-popup-ajukan-reservasi-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-ajukan-reservasi-container .cd-popup-ajukan-reservasi-close::before, .cd-popup-ajukan-reservasi-container .cd-popup-ajukan-reservasi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-ajukan-reservasi-container .cd-popup-ajukan-reservasi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-ajukan-reservasi-container .cd-popup-ajukan-reservasi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-ajukan-reservasi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-ajukan-reservasi-container {
            margin: 8em auto;
        }
    }
    #label_ajukan_reservasi {
        text-align: center;
        align-content: center;
    }
    #boxx_reservasi{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1_reservasi {
        cursor: pointer;
        width: 495px;
        height: 650px;
        margin-right: 5px;
        margin-left: 15px;

        /*background-color: greenyellow;*/
    }
    #box2_reservasi {
        width: 495px;
        height: 650px;
        margin-right: 15px;
        margin-left: 5px;
        /*background-color: yellow;*/
    }
    input {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 5px;
    }
    select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        height: 28.5px;
        margin-bottom: 5px;
    }

    #buttonon_ajukan_res {
        color: white;
        margin-top: 10px;
        display: flex;
        justify-content: center;
    }
    /*    #btn_reject {
            cursor: pointer;
            width: 100px;
            background-color: #a7a0a0;
            border: 1px solid #CCC;
            margin-right: 4px;
            border-radius: 3px;
        }*/
    #btn_cancel_ajukan_res {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_ajukan_res {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_ajukan_res:hover {
        background-color: #CCC;
    }
    /*    #btn_reject:hover {
            background-color: #CCC;
        }*/
    #btn_save_ajukan_res:hover {
        background-color: #CCC;
    }



    #img_ktp1, #img_passport1, #img_self1 {
        width: 200px;
        height: 150px;
        margin-bottom: 5px;
    }




    /*--------------------------------------------------------------------------*/

    #myImg {
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    #myImg:hover {opacity: 0.7;}

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
    }

    /* Modal Content (image) */
    .modal-content {
        margin: auto;
        display: block;
        width: 90%;
        max-width: 700px;
    }



    /* Add Animation */
    .modal-content {  
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @-webkit-keyframes zoom {
        from {-webkit-transform:scale(0)} 
        to {-webkit-transform:scale(1)}
    }

    @keyframes zoom {
        from {transform:scale(0)} 
        to {transform:scale(1)}
    }

    /* The Close Button */
    .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #f1f1f1;
        font-size: 40px;
        font-weight: bold;
        transition: 0.3s;
    }

    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }

    .wajib {
        background-color: #d5fbf7;
    }

    /*--------------------------------------------------------------------------*/










    @media only screen and (max-width: 400px) {

        #box1_reservasi {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2_reservasi {
            width: 190px;
            height: 200px;
            /*margin-left: 5px;*/
            /*background-color: blue;*/
        }

        select{
            width: 10px;
        }
    }
</style>


<script>
    function popupajukanreservasi() {
        //select lab
        var datjson7 = new Object();
        datjson7.procCode = "200005";
        datjson7.user_id = window.localStorage.getItem('lab_user_id');
        $.ajax({
            contentType: 'application/json',
            dataType: "json",
            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
            data: JSON.stringify(datjson7),
            type: 'post',
            beforeSend: function () {
                $('#loader').removeClass('hidden');
            },

            success: function (response) {
                if (response.respCode == 0000) {
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Lab</option>';
//                    var options;
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                    }
                    $("select#ajuan_reservasi_lab").html(options);
                    $("select#ajuan_reservasi_lab_mcu").html(options);
                } else {
                    alert('Failed get list lab : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //select institusi
        $('#ajuan_reservasi_lab').on('change', function () {
            var lab_nya = document.getElementById("ajuan_reservasi_lab").value;
            var datjson11 = new Object();
            datjson11.procCode = "200014";
            datjson11.ins_lab = lab_nya;
            datjson11.user_id = window.localStorage.getItem('lab_user_id');
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson11),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        var data = response.list;
                        var options = '<option selected="true" disabled value="">Pilih Institusi</option>';
                        for (var i = 0; i < data.length; i++) {
                            options += '<option value="' + data[i].ins_code + '">' + data[i].ins_code + '</option>';
                        }
                        $("select#ajuan_reservasi_institusi").html(options);
                    } else {
                        alert('Failed get list institusi : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        //select tujuan        
        var datjson12 = new Object();
        datjson12.procCode = "200012";
        datjson12.user_id = window.localStorage.getItem('lab_user_id');
        $.ajax({
            contentType: 'application/json',
            dataType: "json",
            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
            data: JSON.stringify(datjson12),
            type: 'post',
            beforeSend: function () {
                $('#loader').removeClass('hidden');
            },

            success: function (response) {
                if (response.respCode == 0000) {
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Tujuan</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].tc_code + '">' + data[i].tc_code + '</option>';
                    }
                    $("select#ajuan_reservasi_tujuan").html(options);
                } else {
                    alert('Failed get list tujuan cek : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //pilih jasa pelayanan
        var datjson13 = new Object();
        datjson13.procCode = "200003";
        datjson13.user_id = window.localStorage.getItem('lab_user_id');
        $.ajax({
            contentType: 'application/json',
            dataType: "json",
            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
            data: JSON.stringify(datjson13),
            type: 'post',
            beforeSend: function () {
                $('#loader').removeClass('hidden');
            },

            success: function (response) {
                if (response.respCode == 0000) {
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Jasa Pelayanan</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].jp_kode + '">' + data[i].jp_kode + '</option>';
                    }
                    $("select#ajuan_reservasi_pelayanan").html(options);
                } else {
                    alert('Failed get list jasa pelayanan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //pilih detail jasa pelayanan
        $('#ajuan_reservasi_pelayanan').on('change', function () {
            var institusi = document.getElementById("ajuan_reservasi_institusi").value;
            var jp_code = document.getElementById("ajuan_reservasi_pelayanan").value;
            var datjson13 = new Object();
            datjson13.procCode = "200016";
            datjson13.ins_code = institusi;
            datjson13.jp_code = jp_code;
            datjson13.user_id = window.localStorage.getItem('lab_user_id');
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson13),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        var data = response.list;
                        var options = '<option selected="true" disabled value="">Pilih Detail Jasa Pelayanan</option>';
                        for (var i = 0; i < data.length; i++) {
                            options += '<option value="' + data[i].djp_code + '">' + data[i].detail_jasa + '</option>';
                        }
                        $("select#ajuan_reservasi_detailjasapelayanan").html(options);
                    } else {
                        alert('Failed get list jasa pelayanan : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });


        //dapat pilih harga
        $('#ajuan_reservasi_detailjasapelayanan').on('change', function () {
            var djp_code = document.getElementById("ajuan_reservasi_detailjasapelayanan").value;
            var datjson14 = new Object();
            datjson14.procCode = "400014";
            datjson14.user_id = window.localStorage.getItem('lab_user_id');
            datjson14.djp_code = djp_code;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson14),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        document.getElementById("ajuan_reservasi_harga").value = response.price;
                    } else {
                        alert('Failed get price detail jasa pelayanan : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        //pilih tipem
        var datjson14 = new Object();
        datjson14.procCode = "200011";
        datjson14.user_id = window.localStorage.getItem('lab_user_id');
        $.ajax({
            contentType: 'application/json',
            dataType: "json",
            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
            data: JSON.stringify(datjson14),
            type: 'post',
            beforeSend: function () {
                $('#loader').removeClass('hidden');
            },

            success: function (response) {
                if (response.respCode == 0000) {
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Tipe Pembayaran</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].tp_code + '">' + data[i].tp_code + '</option>';
                    }
                    $("select#ajuan_reservasi_tipe").html(options);
                } else {
                    alert('Failed get list tipe pembayaran : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //open popup add reservasi
//        $('#table_listpasien').on('click', '#reservasi_btn1', function () {
//            var row = $(this).closest("tr");
//            var patient_id = $('#table_listpasien').DataTable().row(row).data().patient_id;
//
//            var datjson8 = new Object();
//            datjson8.procCode = "400008";
//            datjson8.user_id = window.localStorage.getItem('lab_user_id');
//            datjson8.patient_id = patient_id;
//            $.ajax({
//                contentType: 'application/json',
//                dataType: "json",
//                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
//                data: JSON.stringify(datjson8),
//                type: 'post',
//                beforeSend: function () {
//                    $('#loader').removeClass('hidden');
//                },
//
//                success: function (response) {
//                    if (response.respCode == 0000) {
//                        document.getElementById("add_regispasien_code").value = patient_id;
//                        document.getElementById("add_regispasien_identitynumber").value = response.idcard_number;
//                        document.getElementById("add_regispasien_passport").value = response.passport_number;
//
//                        document.getElementById("add_regispasien_name").value = response.name;
//                        document.getElementById("add_regispasien_gender").value = response.gender;
//                        document.getElementById("add_regispasien_birthday").value = response.birth_date;
//
//                        document.getElementById("add_regispasien_nation").value = response.citizenship;
//                        document.getElementById("add_regispasien_adress").value = response.address;
//                        document.getElementById("add_regispasien_email").value = response.email;
//                        document.getElementById("add_regispasien_phone").value = response.phonenumber;
//
//                        var img_ktp2 = document.getElementById('img_ktp_ajukan_reservasi');
//                        img_ktp2.src = response.idcard_img;
//                        $('.cd-popup-ajukan-reservasi').addClass('is-visible');
//
//                    } else {
//                        alert('Failed get data pasien : ' + response.respDesc);
//                    }
//                },
//                complete: function () {
//                    $('#loader').addClass('hidden');
//                }
//            });
//        });





        //close popup add reservasi
        $('.cd-popup-ajukan-reservasi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-ajukan-reservasi-close') || $(event.target).is('.cd-popup-ajukan-reservasi') || $(event.target).is('#btn_cancel_ajukan_res')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_reservasi")[0].reset();
//                $('#img_ktp1').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add reservasi
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-ajukan-reservasi').removeClass('is-visible');
            }
        });
    }

</script>
<div class="cd-popup-ajukan-reservasi" role="alert">
    <div class="cd-popup-ajukan-reservasi-container">
        <label id="label_ajukan_reservasi">Ajukan Reservasi Covid Pasien Ini ?</label>
        <div id="boxx_reservasi">
            <form id="form_add_reservasi" style="width: 1000px; display: inline-flex">
                <div id="myModal_ajukan_reservasi" class="modal">
                    <div class="modal-content">
                        <span class="close_ajukan_reservasi">&times;</span>
                        <div id="push_text_ajukan_reservasi"></div>
                    </div>
                </div>
                <div id="box1_reservasi">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">lab</label><select id="ajuan_reservasi_lab" class="wajib"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tanggal reservasi</label><input type="date" id="ajuan_reservasi_tanggal" class="wajib">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jam reservasi</label><select id="ajuan_reservasi_jam" class="wajib">
                        <option value="01:00:00">01:00</option>
                        <option value="02:00:00">02:00</option>
                        <option value="03:00:00">03:00</option>
                        <option value="04:00:00">04:00</option>
                        <option value="05:00:00">05:00</option>
                        <option value="06:00:00">06:00</option>
                        <option value="07:00:00">07:00</option>
                        <option value="08:00:00">08:00</option>
                        <option value="09:00:00">09:00</option>
                        <option value="10:00:00">10:00</option>
                        <option value="11:00:00">11:00</option>
                        <option value="12:00:00">12:00</option>
                        <option value="13:00:00">13:00</option>
                        <option value="14:00:00">14:00</option>
                        <option value="15:00:00">15:00</option>
                        <option value="16:00:00">16:00</option>
                        <option value="17:00:00">17:00</option>
                        <option value="18:00:00">18:00</option>
                        <option value="19:00:00">19:00</option>
                        <option value="20:00:00">20:00</option>
                        <option value="21:00:00">21:00</option>
                        <option value="22:00:00">22:00</option>
                        <option value="23:00:00">23:00</option>
                        <option value="24:00:00">24:00</option>
                    </select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien code</label><input type="text" id="add_regispasien_code" required="" placeholder="code" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">identity number</label><input type="text" id="add_regispasien_identitynumber" required="" placeholder="identity number" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">passport number</label><input type="text" id="add_regispasien_passport" required="" placeholder="passport number" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="add_regispasien_name" required="" placeholder="name" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="add_regispasien_gender" required="" placeholder="gender" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="add_regispasien_birthday" required="" placeholder="birtdate" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nationality</label><input type="text" id="add_regispasien_nation" required="" placeholder="nationality" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">address</label><input type="text" id="add_regispasien_adress" required="" placeholder="address" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="add_regispasien_email" required="" placeholder="email" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="add_regispasien_phone" required="" placeholder="phone" readonly="">
                </div>
                <div id="box2_reservasi">                    
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><select id="ajuan_reservasi_institusi" class="wajib"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tujuan</label><select id="ajuan_reservasi_tujuan" class="wajib"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jasa pelayanan</label><select id="ajuan_reservasi_pelayanan" class="wajib"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><select id="ajuan_reservasi_detailjasapelayanan" class="wajib"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">harga</label><input type="number" id="ajuan_reservasi_harga" class="wajib" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tipe pembayaran</label><select id="ajuan_reservasi_tipe" class="wajib"></select>
                    <img id="img_ktp_ajukan_reservasi" alt="image ktp" src="image/upload_icon.jpeg" style="height: 300px; width: 450px; margin-top: 20px; border-radius: 5px"/>
                    <div id="buttonon_ajukan_res">
                        <div id="btn_cancel_ajukan_res">Cancel</div>
                        <div id="btn_save_ajukan_res">Save</div>
                    </div>
                </div>
            </form>

        </div>
        <a href="#0" class="cd-popup-ajukan-reservasi-close img-replace-ajukan-reservasi">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        var user = window.localStorage.getItem('lab_user_id');
        $('#btn_save_ajukan_res').on('click', function () {

            var ajuan_reservasi_lab = document.getElementById('ajuan_reservasi_lab').value;
            var ajuan_reservasi_tanggal = document.getElementById('ajuan_reservasi_tanggal').value;
            var ajuan_reservasi_jam = document.getElementById('ajuan_reservasi_jam').value;
            var add_regispasien_code = document.getElementById('add_regispasien_code').value;
            var add_regispasien_identitynumber = document.getElementById('add_regispasien_identitynumber').value;
            var add_regispasien_passport = document.getElementById('add_regispasien_passport').value;
            var add_regispasien_name = document.getElementById('add_regispasien_name').value;
            var add_regispasien_gender = document.getElementById('add_regispasien_gender').value;
            var add_regispasien_birthday = document.getElementById('add_regispasien_birthday').value;
            var add_regispasien_nation = document.getElementById('add_regispasien_nation').value;
            var add_regispasien_adress = document.getElementById('add_regispasien_adress').value;
            var add_regispasien_email = document.getElementById('add_regispasien_email').value;
            var add_regispasien_phone = document.getElementById('add_regispasien_phone').value;

            var ajuan_reservasi_institusi = document.getElementById('ajuan_reservasi_institusi').value;
            var ajuan_reservasi_tujuan = document.getElementById('ajuan_reservasi_tujuan').value;
            var ajuan_reservasi_pelayanan = document.getElementById('ajuan_reservasi_pelayanan').value;
            var ajuan_reservasi_detailjasapelayanan = document.getElementById('ajuan_reservasi_detailjasapelayanan').value;
            var ajuan_reservasi_harga = document.getElementById('ajuan_reservasi_harga').value;
            var ajuan_reservasi_tipe = document.getElementById('ajuan_reservasi_tipe').value;

            var modal = document.getElementById("myModal_ajukan_reservasi");
            var span = document.getElementsByClassName("close_ajukan_reservasi")[0];
            var push = document.getElementById("push_text_ajukan_reservasi");

            if (ajuan_reservasi_lab == "") {
                push.innerHTML = "<p>lab must be choose</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (ajuan_reservasi_lab != "") {
                if (ajuan_reservasi_tanggal == "") {
                    push.innerHTML = "<p>date must be Fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (ajuan_reservasi_tanggal != "") {
                    if (ajuan_reservasi_jam == "") {
                        push.innerHTML = "<p>hour must be Fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (ajuan_reservasi_jam != "") {

                        if (add_regispasien_code == "") {
                            push.innerHTML = "<p>code must be Fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (add_regispasien_code != "") {
                            if (add_regispasien_identitynumber == "") {
                                push.innerHTML = "<p>id number must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (add_regispasien_identitynumber != "") {
                                if (add_regispasien_passport == "") {
                                    push.innerHTML = "<p>passport must be fill</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (add_regispasien_passport != "") {
                                    if (add_regispasien_name == "") {
                                        push.innerHTML = "<p>name must be fill</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (add_regispasien_name != "") {
                                        if (add_regispasien_gender == "") {
                                            push.innerHTML = "<p>gender must be fill</p>";
                                            modal.style.display = "block";
                                            span.onclick = function () {
                                                modal.style.display = "none";
                                            }
                                            window.onclick = function (event) {
                                                if (event.target == modal) {
                                                    modal.style.display = "none";
                                                }
                                            }
                                        } else if (add_regispasien_gender != "") {
                                            if (add_regispasien_birthday == "") {
                                                push.innerHTML = "<p>birthday must be fill</p>";
                                                modal.style.display = "block";
                                                span.onclick = function () {
                                                    modal.style.display = "none";
                                                }
                                                window.onclick = function (event) {
                                                    if (event.target == modal) {
                                                        modal.style.display = "none";
                                                    }
                                                }
                                            } else if (add_regispasien_birthday != "") {
                                                if (add_regispasien_nation == "") {
                                                    push.innerHTML = "<p>nation must be fill</p>";
                                                    modal.style.display = "block";
                                                    span.onclick = function () {
                                                        modal.style.display = "none";
                                                    }
                                                    window.onclick = function (event) {
                                                        if (event.target == modal) {
                                                            modal.style.display = "none";
                                                        }
                                                    }
                                                } else if (add_regispasien_nation != "") {
                                                    if (add_regispasien_adress == "") {
                                                        push.innerHTML = "<p>address must be fill</p>";
                                                        modal.style.display = "block";
                                                        span.onclick = function () {
                                                            modal.style.display = "none";
                                                        }
                                                        window.onclick = function (event) {
                                                            if (event.target == modal) {
                                                                modal.style.display = "none";
                                                            }
                                                        }
                                                    } else if (add_regispasien_adress != "") {
                                                        if (add_regispasien_email == "") {
                                                            push.innerHTML = "<p>email must be fill</p>";
                                                            modal.style.display = "block";
                                                            span.onclick = function () {
                                                                modal.style.display = "none";
                                                            }
                                                            window.onclick = function (event) {
                                                                if (event.target == modal) {
                                                                    modal.style.display = "none";
                                                                }
                                                            }
                                                        } else if (add_regispasien_email != "") {
                                                            if (add_regispasien_phone == "") {
                                                                push.innerHTML = "<p>phone must be fill</p>";
                                                                modal.style.display = "block";
                                                                span.onclick = function () {
                                                                    modal.style.display = "none";
                                                                }
                                                                window.onclick = function (event) {
                                                                    if (event.target == modal) {
                                                                        modal.style.display = "none";
                                                                    }
                                                                }
                                                            } else if (add_regispasien_phone != "") {
                                                                if (ajuan_reservasi_institusi == "") {
                                                                    push.innerHTML = "<p>institusi must be fill</p>";
                                                                    modal.style.display = "block";
                                                                    span.onclick = function () {
                                                                        modal.style.display = "none";
                                                                    }
                                                                    window.onclick = function (event) {
                                                                        if (event.target == modal) {
                                                                            modal.style.display = "none";
                                                                        }
                                                                    }
                                                                } else if (ajuan_reservasi_institusi != "") {
                                                                    if (ajuan_reservasi_tujuan == "") {
                                                                        push.innerHTML = "<p>tujuan cek  must be fill</p>";
                                                                        modal.style.display = "block";
                                                                        span.onclick = function () {
                                                                            modal.style.display = "none";
                                                                        }
                                                                        window.onclick = function (event) {
                                                                            if (event.target == modal) {
                                                                                modal.style.display = "none";
                                                                            }
                                                                        }
                                                                    } else if (ajuan_reservasi_tujuan != "") {
                                                                        if (ajuan_reservasi_pelayanan == "") {
                                                                            push.innerHTML = "<p>jasa pelayanan must be fill</p>";
                                                                            modal.style.display = "block";
                                                                            span.onclick = function () {
                                                                                modal.style.display = "none";
                                                                            }
                                                                            window.onclick = function (event) {
                                                                                if (event.target == modal) {
                                                                                    modal.style.display = "none";
                                                                                }
                                                                            }
                                                                        } else if (ajuan_reservasi_pelayanan != "") {
                                                                            if (ajuan_reservasi_detailjasapelayanan == "") {
                                                                                push.innerHTML = "<p>detail must be fill</p>";
                                                                                modal.style.display = "block";
                                                                                span.onclick = function () {
                                                                                    modal.style.display = "none";
                                                                                }
                                                                                window.onclick = function (event) {
                                                                                    if (event.target == modal) {
                                                                                        modal.style.display = "none";
                                                                                    }
                                                                                }
                                                                            } else if (ajuan_reservasi_detailjasapelayanan != "") {
                                                                                if (ajuan_reservasi_harga == "") {
                                                                                    push.innerHTML = "<p>harga must be fill</p>";
                                                                                    modal.style.display = "block";
                                                                                    span.onclick = function () {
                                                                                        modal.style.display = "none";
                                                                                    }
                                                                                    window.onclick = function (event) {
                                                                                        if (event.target == modal) {
                                                                                            modal.style.display = "none";
                                                                                        }
                                                                                    }
                                                                                } else if (ajuan_reservasi_harga != "") {
                                                                                    if (ajuan_reservasi_tipe == "") {
                                                                                        push.innerHTML = "<p>tipe pembayaran must be fill</p>";
                                                                                        modal.style.display = "block";
                                                                                        span.onclick = function () {
                                                                                            modal.style.display = "none";
                                                                                        }
                                                                                        window.onclick = function (event) {
                                                                                            if (event.target == modal) {
                                                                                                modal.style.display = "none";
                                                                                            }
                                                                                        }
                                                                                    } else if (ajuan_reservasi_tipe != "") {

                                                                                        var datjson9 = new Object();
                                                                                        datjson9.procCode = "300016";
                                                                                        datjson9.user_id = user;
                                                                                        datjson9.patient_id = add_regispasien_code;
                                                                                        datjson9.ins_code = ajuan_reservasi_institusi;

                                                                                        datjson9.tc_code = ajuan_reservasi_tujuan;
                                                                                        datjson9.jp_code = ajuan_reservasi_pelayanan;
                                                                                        datjson9.djp_code = ajuan_reservasi_detailjasapelayanan;
                                                                                        datjson9.tp_code = ajuan_reservasi_tipe;
                                                                                        datjson9.citizenship = add_regispasien_nation;
                                                                                        datjson9.queue_date = ajuan_reservasi_tanggal;
                                                                                        datjson9.queue_hour = ajuan_reservasi_jam;

                                                                                        $.ajax({
                                                                                            contentType: 'application/json',
                                                                                            dataType: "json",
                                                                                            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                                                                            data: JSON.stringify(datjson9),
                                                                                            type: 'post',
                                                                                            beforeSend: function () {
                                                                                                $('#loader').removeClass('hidden');
                                                                                            },

                                                                                            success: function (response) {
                                                                                                if (response.respCode == 0000) {
                                                                                                    alert('Success Reservasi Pasien : ' + add_regispasien_code + ', Kode Booking : ' + response.book_code);
                                                                                                    $('.cd-popup-ajukan-reservasi').removeClass('is-visible');
                                                                                                    window.localStorage.setItem('side', 'res');
                                                                                                    window.location.href = "res";
                                                                                                } else {
                                                                                                    alert('Gagal Reservasi Pasien, ' + response.respDesc);
                                                                                                }
                                                                                            },
                                                                                            complete: function () {
                                                                                                $('#loader').addClass('hidden');
                                                                                            }
                                                                                        });
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
    });
</script>