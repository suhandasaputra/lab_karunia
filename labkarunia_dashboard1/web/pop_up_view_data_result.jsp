<%-- 
    Document   : pop_up_ajukan_reservasi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    /*    table {
            width: 100%;
            border: 1px solid black;
        }*/
    .cbbox {
        width: 30px;
        height: 35px;
    }




    .cd-buttons-ajukan-reservasi-mcu
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-ajukan-reservasi-mcu {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-ajukan-reservasi-mcu {
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
    .cd-popup-ajukan-reservasi-mcu.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-ajukan-reservasi-mcu-container {
        position: relative;
        top: -50px;
        width: 100%;
        height: 780px;
        max-width: 1250px;
        text-align: -webkit-center;
        /*margin: 4em auto;*/
        background: #FFF;
        border-radius: .25em .25em .4em .4em;
        /*text-align: center;*/
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

    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu div {
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
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-ajukan-reservasi-mcu-container .cd-buttons-ajukan-reservasi-mcu li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-popup-ajukan-reservasi-mcu-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-popup-ajukan-reservasi-mcu-close::before, .cd-popup-ajukan-reservasi-mcu-container .cd-popup-ajukan-reservasi-mcu-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-popup-ajukan-reservasi-mcu-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-ajukan-reservasi-mcu-container .cd-popup-ajukan-reservasi-mcu-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-ajukan-reservasi-mcu-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-ajukan-reservasi-mcu-container {
            margin: 8em auto;
        }
    }
    #label_ajukan_reservasi_mcu {
        text-align: center;
        align-content: center;
    }
    #boxx_reservasi{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1_reservasi_mcu {
        cursor: pointer;
        width: 495px;
        height: 650px;
        margin-right: 5px;
        margin-left: 15px;

        /*background-color: greenyellow;*/
    }
    #box2_reservasi_mcu {
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

        #box1_reservasi_mcu {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2_reservasi_mcu {
            width: 190px;
            height: 200px;
            /*margin-left: 5px;*/
            /*background-color: blue;*/
        }

        select{
            width: 10px;
        }
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
</style>
<script>
    $(document).ready(function ($) {
        $('#btn_view_data').on('click', function () {
            $('.cd-popup-ajukan-reservasi-mcu').addClass('is-visible');
        });
        
        //close popup add reservasi
        $('.cd-popup-ajukan-reservasi-mcu').on('click', function (event) {
            if ($(event.target).is('.cd-popup-ajukan-reservasi-mcu-close')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });



        //select institusi
        $('#ajuan_reservasi_lab_mcu').on('change', function () {
            var lab_nya = document.getElementById("ajuan_reservasi_lab_mcu").value;
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
                        $("select#ajuan_reservasi_institusi_mcu").html(options);
                    } else {
                        alert('Failed get list institusi : ' + response.respDesc);
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
                    $("select#ajuan_reservasi_tipe_mcu").html(options);
                } else {
                    alert('Failed get list tipe pembayaran : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });
    });
</script>
<div class="cd-popup-ajukan-reservasi-mcu" role="alert">
    <div class="cd-popup-ajukan-reservasi-mcu-container">
        <label id="label_ajukan_reservasi_mcu">Ajukan Reservasi MCU Pasien Ini ?</label>

        <div class="row" style="margin-left: 10px;">
            <ul class="nav nav-tabs topnav" id="myTab">
                <li><a data-toggle="tab" href="#pasien" class="active" >pasien</a></li>
                <li><a data-toggle="tab" href="#hematologi" >hematologi</a></li>
                <li><a data-toggle="tab" href="#koagulasi" >koagulasi</a></li>
                <li><a data-toggle="tab" href="#kimia" >kimia</a></li>
                <li><a data-toggle="tab" href="#seroimunologi" >seroimunologi</a></li>
                <li><a data-toggle="tab" href="#hepatitis" >hepatitis</a></li>
                <li><a data-toggle="tab" href="#urinalisa" >urinalisa</a></li>
                <li><a data-toggle="tab" href="#narkotika" >narkotika-urine</a></li>
                <li><a data-toggle="tab" href="#faeces" >faeces</a></li>
                <li><a data-toggle="tab" href="#sekret" >sekret</a></li>
                <li><a data-toggle="tab" href="#sputum" >sputum</a></li>
                <!--<li><a data-toggle="tab" href="#konfirmasi" >konfirmasi</a></li>-->
            </ul>
        </div>
        <div class="row">
            <div class="tab-content" style="width: 100%; margin-top: 0px;">
                <div id="pasien" class="tab-pane fade in active show">
                    <form id="form_add_reservasi_mcu" style="width: 1000px; display: inline-flex">
                        <div id="myModal_ajukan_reservasi_mcu" class="modal">
                            <div class="modal-content">
                                <span class="close_ajukan_reservasi_mcu">&times;</span>
                                <div id="push_text_ajukan_reservasi_mcu"></div>
                            </div>
                        </div>
                        <div id="box1_reservasi_mcu">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">lab</label><select id="ajuan_reservasi_lab_mcu" class="wajib"></select>
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tanggal reservasi</label><input type="date" id="ajuan_reservasi_tanggal_mcu" class="wajib">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jam reservasi</label><select id="ajuan_reservasi_jam_mcu" class="wajib">
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
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><select id="ajuan_reservasi_institusi_mcu" class="wajib"></select>
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tipe pembayaran</label><select id="ajuan_reservasi_tipe_mcu" class="wajib"></select>
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien code</label><input type="text" id="add_regispasien_code_mcu" required="" placeholder="code" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">identity number</label><input type="text" id="add_regispasien_identitynumber_mcu" required="" placeholder="identity number" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">passport number</label><input type="text" id="add_regispasien_passport_mcu" required="" placeholder="passport number" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="add_regispasien_name_mcu" required="" placeholder="name" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="add_regispasien_gender_mcu" required="" placeholder="gender" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="add_regispasien_birthday_mcu" required="" placeholder="birtdate" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nationality</label><input type="text" id="add_regispasien_nation_mcu" required="" placeholder="nationality" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">address</label><input type="text" id="add_regispasien_adress_mcu" required="" placeholder="address" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="add_regispasien_email_mcu" required="" placeholder="email" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="add_regispasien_phone_mcu" required="" placeholder="phone" readonly="">
                        </div>
                        <div id="box2_reservasi_mcu">                    
                            <img id="img_ktp_ajukan_reservasi_mcu" alt="image ktp" src="image/upload_icon.jpeg" style="height: 250px; width: 450px; margin-top: 20px; border-radius: 5px"/>
                            <textarea id="t_area" style="width: 100%; margin-top: 50px;" disabled=""></textarea>
                            <br>
                            <textarea id="t_area_name" style="width: 100%;" disabled=""></textarea><br>
                            <button type="button" class="btn btn-primary" id="btn_save_ajukan_mcu">Save</button>
                        </div>
                    </form>
                </div>
                <div id="hematologi" class="tab-pane fade">
                    <h1 style="margin-top: 50px">HEMATOLOGI</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a1"></td><td>H2 ,TL ( Hb,Ht, Leuko, Trombosit</td><td class="cbbox"><input type="checkbox" id="hema_b1"></td><td>Trombosit</td><td class="cbbox"><input type="checkbox" id="hema_c1"></td><td>Sel LE</td><td class="cbbox"><input type="checkbox" id="hema_d1"></td><td>G 6 PD</td><td class="cbbox"><input type="checkbox" id="hema_e1"></td><td>Hb H</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a2"></td><td>Darah Rutin ( Hb, Ht, Eritrosit, </td><td class="cbbox"><input type="checkbox" id="hema_b2"></td><td>MCV, MCH, MCHC</td><td class="cbbox"><input type="checkbox" id="hema_c2"></td><td>LE Reaksi</td><td class="cbbox"><input type="checkbox" id="hema_d2"></td><td>G 6 PD Neonatus</td><td class="cbbox"><input type="checkbox" id="hema_e2"></td><td>Hb A2</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a3"></td><td>Leukosit, Trombosit</td><td class="cbbox"><input type="checkbox" id="hema_b3"></td><td>Retikulosit</td><td class="cbbox"><input type="checkbox" id="hema_c3"></td><td> Serum Iron (SI</td><td class="cbbox"><input type="checkbox" id="hema_d3"></td><td>NAP</td><td class="cbbox"><input type="checkbox" id="hema_e3"></td><td>Ham's Test</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a4"></td><td>Darah Lengkap</td><td class="cbbox"><input type="checkbox" id="hema_b4"></td><td>Hitung Eosinofil</td><td class="cbbox"><input type="checkbox" id="hema_c4"></td><td>TIBC</td><td class="cbbox"><input type="checkbox" id="hema_d4"></td><td>Malaria</td><td class="cbbox"><input type="checkbox" id="hema_e4"></td><td>Sugar Water Test</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a5"></td><td>Hemoglobin</td><td class="cbbox"><input type="checkbox" id="hema_b5"></td><td>Eos - Ingus</td><td class="cbbox"><input type="checkbox" id="hema_c5"></td><td>Feritin</td><td class="cbbox"><input type="checkbox" id="hema_d5"></td><td>Mikrofilaria</td><td class="cbbox"><input type="checkbox" id="hema_e5"></td><td>Sitogenetika</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a6"></td><td>LED</td><td class="cbbox"><input type="checkbox" id="hema_b6"></td><td>Golongan Darah / Rh</td><td class="cbbox"><input type="checkbox" id="hema_c6"></td><td>Transferin</td><td class="cbbox"><input type="checkbox" id="hema_d6"></td><td>Antibodi Trombosit</td><td class="cbbox"><input type="checkbox" id="hema_e6"></td><td>Kromosom</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a7"></td><td>Leukosit</td><td class="cbbox"><input type="checkbox" id="hema_b7"></td><td>RH Faktor</td><td class="cbbox"><input type="checkbox" id="hema_c7"></td><td>Asam Folat</td><td class="cbbox"><input type="checkbox" id="hema_d7"></td><td>CD4</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a8"></td><td>Eritrosit</td><td class="cbbox"><input type="checkbox" id="hema_b8"></td><td>Gambaran Darah Tepi</td><td class="cbbox"><input type="checkbox" id="hema_c8"></td><td> Vitamin B 12</td><td class="cbbox"><input type="checkbox" id="hema_d8"></td><td>CD4 - CD8</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a9"></td><td>Hitung Jenis</td><td class="cbbox"><input type="checkbox" id="hema_b9"></td><td> IT Ratio</td><td class="cbbox"><input type="checkbox" id="hema_c9"></td><td>Pewarnaan Sitokimia</td><td class="cbbox"><input type="checkbox" id="hema_d9"></td><td> Coomb's Test Direct/Indirect</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hema_a10"></td><td>Hematokrit</td><td class="cbbox"><input type="checkbox" id="hema_b10"></td><td>4</td><td class="cbbox"><input type="checkbox" id="hema_c10"></td><td>Hb Elektroforesa</td><td class="cbbox"><input type="checkbox" id="hema_d10"></td><td>Hb F (alkali denaturasi)</td>
                        </tr>
                    </table>
                </div>
                <div id="koagulasi" class="tab-pane fade">
                    <h1 style="margin-top: 50px;">KOAGULASI</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="koag_a1"></td><td>Hemostasis Lengkap</td><td class="cbbox"><input type="checkbox" id="koag_b1"></td><td>APTT</td><td class="cbbox"><input type="checkbox" id="koag_c1"></td><td>D-Dimer (Kuantitatif)</td><td class="cbbox"><input type="checkbox" id="koag_d1"></td><td>INR</td><td class="cbbox"><input type="checkbox" id="koag_e1"></td><td>Faktor VIII</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="koag_a2"></td><td>Ms. Pendarahan</td><td class="cbbox"><input type="checkbox" id="koag_b2"></td><td>Fibrinogen</td><td class="cbbox"><input type="checkbox" id="koag_c2"></td><td>Agregasi Trombosit</td><td class="cbbox"><input type="checkbox" id="koag_d2"></td><td>Protein C</td><td class="cbbox"><input type="checkbox" id="koag_e2"></td><td>Faktor IX</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="koag_a3"></td><td>Ms. Pembekuan</td><td class="cbbox"><input type="checkbox" id="koag_b3"></td><td>Masa Trombin</td><td class="cbbox"><input type="checkbox" id="koag_c3"></td><td>Anti Trombin III (AT III)</td><td class="cbbox"><input type="checkbox" id="koag_d3"></td><td>Protein S</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="koag_a4"></td><td>Ms. Protombin (PT</td><td class="cbbox"><input type="checkbox" id="koag_b4"></td><td>(Serial Trombin Time)</td><td class="cbbox"><input type="checkbox" id="koag_c4"></td><td>Perc. Pembendungan</td><td class="cbbox"><input type="checkbox" id="koag_d4"></td><td>Viskositas darah/plasma</td>
                        </tr>
                    </table>
                </div>
                <div id="kimia" class="tab-pane fade">
                    <h1 style="margin-top: 50px;">KIMIA</h1>
                    <table style="margin-top: 20px;width: 80%">
                        <tr>
                            <td class="cbbox"></td><td><strong>FUNGSI HATI</strong></td><td class="cbbox"></td><td><strong>LEMAK DARAH</strong></td><td class="cbbox"></td><td><strong>FUNGSI GINJAL</strong></td><td class="cbbox"></td><td><strong>KARBOHIDRAT</strong></td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a2"></td><td>Albumin</td><td class="cbbox"><input type="checkbox" id="kimia_b2"></td><td>Cholesterol Total</td><td class="cbbox"><input type="checkbox" id="kimia_c2"></td><td>Ureum</td><td class="cbbox"><input type="checkbox" id="kimia_d2"></td><td>Glukosa Puasa</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a3"></td><td>Total Protein</td><td class="cbbox"><input type="checkbox" id="kimia_b3"></td><td>LDL Cholesterol Direk</td><td class="cbbox"><input type="checkbox" id="kimia_c3"></td><td>Creatinin</td><td class="cbbox"><input type="checkbox" id="kimia_d3"></td><td>Glukosa 2 Jam PP</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a4"></td><td>Total Protein/Alb/Glob</td><td class="cbbox"><input type="checkbox" id="kimia_b4"></td><td>HDL Cholesterol</td><td class="cbbox"><input type="checkbox" id="kimia_c4"></td><td>Ureum Clearance Test (UCT)</td><td class="cbbox"><input type="checkbox" id="kimia_d4"></td><td>Glukosa Sewaktu</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a5"></td><td>Protein Elektroforesa</td><td class="cbbox"><input type="checkbox" id="kimia_b5"></td><td>Trigliserida</td><td class="cbbox"><input type="checkbox" id="kimia_c5"></td><td>Creatinin Clearance (CCT)</td><td class="cbbox"><input type="checkbox" id="kimia_d5"></td><td>Kurva Harian</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a6"></td><td>Bilirubin Direk</td><td class="cbbox"><input type="checkbox" id="kimia_b6"></td><td>Total Lipid</td><td class="cbbox"><input type="checkbox" id="kimia_c6"></td><td>Asam Urat</td><td class="cbbox"><input type="checkbox" id="kimia_d6"></td><td>GTT</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a7"></td><td>Bilirubin Indirek/Direk/Total</td><td class="cbbox"><input type="checkbox" id="kimia_b7"></td><td>Ratio Chol T/HDL Cholesterol</td><td class="cbbox"><input type="checkbox" id="kimia_c7"></td><td>Cystatin-C</td><td class="cbbox"><input type="checkbox" id="kimia_d7"></td><td>HbA1c</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a8"></td><td>Bilirubin Neonatus</td><td class="cbbox"><input type="checkbox" id="kimia_b8"></td><td>VLDL</td><td class="cbbox"><input type="checkbox" id="kimia_c8"></td><td>BUN</td><td class="cbbox"><input type="checkbox" id="kimia_d8"></td><td>Keton Darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a9"></td><td>SGOT</td><td class="cbbox"></td><td><strong>FUNGSI JANTUNG</strong></td><td class="cbbox"><input type="checkbox" id="kimia_c9"></td><td>eGFR</td><td class="cbbox"><input type="checkbox" id="kimia_d9"></td><td>Fruktosamine</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a10"></td><td>SGPT</td><td class="cbbox"><input type="checkbox" id="kimia_b10"></td><td>CK</td><td class="cbbox"></td><td><strong>ELEKTROLIT</strong></td><td class="cbbox"><input type="checkbox" id="kimia_d10"></td><td>C. Peptide</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a11"></td><td>Gamma GT</td><td class="cbbox"><input type="checkbox" id="kimia_b11"></td><td>CKMB</td><td class="cbbox"><input type="checkbox" id="kimia_c11"></td><td>Calcium</td><td class="cbbox"><input type="checkbox" id="kimia_d11"></td><td>Insulin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a12"></td><td>Cholinesterase</td><td class="cbbox"><input type="checkbox" id="kimia_b12"></td><td>LDH</td><td class="cbbox"><input type="checkbox" id="kimia_c12"></td><td> Phosphor Anorg</td><td class="cbbox"></td><td><strong>ANALISA GAS DARAH</strong></td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a13"></td><td>Alkali Phosphatase</td><td class="cbbox"><input type="checkbox" id="kimia_b13"></td><td>ol -HBDH</td><td class="cbbox"><input type="checkbox" id="kimia_c13"></td><td>Magnesium</td><td class="cbbox"><input type="checkbox" id="kimia_d13"></td><td> Analisa Gas Darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a14"></td><td>LAP</td><td class="cbbox"><input type="checkbox" id="kimia_b14"></td><td>Troponin T</td><td class="cbbox"><input type="checkbox" id="kimia_c14"></td><td>Paket Elektrolit (Na, K, Cl)</td><td class="cbbox"><input type="checkbox" id="kimia_d14"></td><td>Asam Lakta</td>
                        </tr>
                        <tr>
                            <td class="cbbox"></td><td><strong>PANKREAS</strong></td><td class="cbbox"><input type="checkbox" id="kimia_b15"></td><td>Troponin T (Kuantitatif)</td><td class="cbbox"><input type="checkbox" id="kimia_c15"></td><td>Plumbum Serum</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a16"></td><td>Amylase</td><td class="cbbox"><input type="checkbox" id="kimia_b16"></td><td>Troponin T (Kualitatif)</td><td class="cbbox"><input type="checkbox" id="kimia_c16"></td><td>Osmolalitas Darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="kimia_a17"></td><td>Lipase</td><td class="cbbox"><input type="checkbox" id="kimia_b17"></td><td>BNP (B-Natrium Peptide)</td><td class="cbbox"><input type="checkbox" id="kimia_c17"></td><td>Calsium Ion</td>
                        </tr>
                    </table>
                </div>
                <div id="seroimunologi" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SEROIMUNOLOGI</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a1"></td><td>Anti-Dengue IgG & IgM</td><td class="cbbox"><input type="checkbox" id="sero_b1"></td><td>Serologi Amuba</td><td class="cbbox"><input type="checkbox" id="sero_c1"></td><td>Anti EBV EA IgG</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a2"></td><td>Dengue NS 1 Antigen</td><td class="cbbox"><input type="checkbox" id="sero_b2"></td><td>VDRL</td><td class="cbbox"><input type="checkbox" id="sero_c2"></td><td>Anti EBV EA IgM</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a3"></td><td>Widal</td><td class="cbbox"><input type="checkbox" id="sero_b3"></td><td>TPHA</td><td class="cbbox"><input type="checkbox" id="sero_c3"></td><td>Anti TB IgG</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a4"></td><td>Anti Salmonella IgM/Tubex</td><td class="cbbox"><input type="checkbox" id="sero_b4"></td><td>Anti Leptospira IgG</td><td class="cbbox"><input type="checkbox" id="sero_c4"></td><td>Serologi Jamur</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a5"></td><td>CRP</td><td class="cbbox"><input type="checkbox" id="sero_b5"></td><td>Anti Leptospira IgM</td><td class="cbbox"><input type="checkbox" id="sero_c5"></td><td>Serologi Jamur Lengkap</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a6"></td><td>ASTO</td><td class="cbbox"><input type="checkbox" id="sero_b6"></td><td>Anti Mycoplasma IgG/IgM</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sero_a7"></td><td>Rheumatoid Faktor</td><td class="cbbox"><input type="checkbox" id="sero_b7"></td><td>Anti EBV EA IgA</td>
                        </tr>
                    </table>
                </div>
                <div id="hepatitis" class="tab-pane fade">
                    <h1 style="margin-top: 50px">HEPATITIS</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a1"></td><td>HBsAg</td><td class="cbbox"><input type="checkbox" id="hepa_b1"></td><td>Anti-HAV IgM</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a2"></td><td>Anti HBs</td><td class="cbbox"><input type="checkbox" id="hepa_b2"></td><td> Anti HAV Total</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a3"></td><td>HBeAg</td><td class="cbbox"><input type="checkbox" id="hepa_b3"></td><td>Anti HCV Total</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a4"></td><td>Anti HBe</td><td class="cbbox"><input type="checkbox" id="hepa_b4"></td><td>Anti HCV IgM</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a5"></td><td>Anti HBc Total</td><td class="cbbox"><input type="checkbox" id="hepa_b5"></td><td>Anti HDV</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a6"></td><td>Anti HBc IgM</td><td class="cbbox"><input type="checkbox" id="hepa_b6"></td><td>Anti HEV IgM</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hepa_a7"></td><td>HBV-DNA</td><td class="cbbox"><input type="checkbox" id="hepa_b7"></td><td>Anti HEV IgG</td>
                        </tr>
                    </table>
                </div>
                <div id="urinalisa" class="tab-pane fade">
                    <h1 style="margin-top: 50px">URINALISA</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_a1"></td><td>Urine Lengkap</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_a2"></td><td>(Urine rutin, sedimen,</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_a3"></td><td>leukosit esterase, dll)</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_a4"></td><td>Sedimen</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_a5"></td><td>Test Kehamilan EIA</td>
                        </tr>
                    </table>
                </div>
                <div id="narkotika" class="tab-pane fade">
                    <h1 style="margin-top: 50px">NARKOTIKA</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a1"></td><td>Amphetamin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a2"></td><td>Metamphetamin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a3"></td><td>Opiat/Morfin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a4"></td><td>Benzodiazepin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a5"></td><td>Ganja/THC</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a6"></td><td>Opiat, Amphetamin, Ganja</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="nark_a7"></td><td>Coccaine</td>
                        </tr>
                    </table>
                </div>
                <div id="faeces" class="tab-pane fade">
                    <h1 style="margin-top: 50px">FAECES</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a1"></td><td>Faeces Rutin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a2"></td><td>Faeces Lengkap (rtn+drh samar)</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a3"></td><td>Darah Samar</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a4"></td><td>Colon Albumin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a5"></td><td>Amuba</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a7"></td><td>Amylum</td>
                        </tr>
                    </table>
                </div>
                <div id="sekret" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SEKRET</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sekr_a1"></td><td>Pewarnaan Gram</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sekr_a2"></td><td>Candida Albicans</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sekr_a3"></td><td>Jamur</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sekr_a4"></td><td>Trikomonas</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sekr_a5"></td><td>KOH 10%</td>
                        </tr>
                    </table>
                </div>
                <div id="sputum" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SPUTUM</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sput_a1"></td><td>Pewarnaan Gram</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sput_a2"></td><td>Pewarnaan BTA</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sput_a3"></td><td>Difteri</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sput_a4"></td><td>Jamur</td>
                        </tr>
                    </table>
                    <h1 style="margin-top: 50px">SWAB</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sput_a6"></td><td> Pewarnaan Gram</td>
                        </tr>
                    </table>
                </div>
                <!--                <div id="konfirmasi" class="tab-pane fade">
                                    <h1 style="margin-top: 50px">KONFIRMASI</h1>
                                </div>-->
            </div>    
        </div>

        <a href="#0" class="cd-popup-ajukan-reservasi-mcu-close img-replace-ajukan-reservasi-mcu">Close</a>
    </div>
</div>


<script>
    var ext;
    $(document).ready(function ($) {
        var good_game = document.getElementById('t_area');
        var ggwp = document.getElementById('t_area_name');

        var myArray = [];
        var myIndex = '';
        ext = new Object();





        hema(myArray, good_game, ext, ggwp, myIndex);
        koag(myArray, good_game, ext, ggwp, myIndex);
        kimia(myArray, good_game, ext, ggwp, myIndex);
        sero(myArray, good_game, ext, ggwp, myIndex);
        hepa(myArray, good_game, ext, ggwp, myIndex);
        urin(myArray, good_game, ext, ggwp, myIndex);
        nark(myArray, good_game, ext, ggwp, myIndex);
        faec(myArray, good_game, ext, ggwp, myIndex);
        sekr(myArray, good_game, ext, ggwp, myIndex);
        sput(myArray, good_game, ext, ggwp, myIndex);
    });









    $('#btn_save_ajukan_mcu').on('click', function () {
        var user = window.localStorage.getItem('lab_user_id');
        var ajuan_reservasi_lab_mcu = document.getElementById('ajuan_reservasi_lab_mcu').value;
        var ajuan_reservasi_tanggal_mcu = document.getElementById('ajuan_reservasi_tanggal_mcu').value;
        var ajuan_reservasi_jam_mcu = document.getElementById('ajuan_reservasi_jam_mcu').value;
        var ajuan_reservasi_institusi_mcu = document.getElementById('ajuan_reservasi_institusi_mcu').value;
        var add_regispasien_code_mcu = document.getElementById('add_regispasien_code_mcu').value;
        var ajuan_reservasi_tipe_mcu = document.getElementById('ajuan_reservasi_tipe_mcu').value;
        
        var t_area_name = document.getElementById('t_area_name').value;


        var modal = document.getElementById("myModal_ajukan_reservasi_mcu");
        var span = document.getElementsByClassName("close_ajukan_reservasi_mcu")[0];
        var push = document.getElementById("push_text_ajukan_reservasi_mcu");

        if (ajuan_reservasi_lab_mcu == "") {
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
        } else if (ajuan_reservasi_lab_mcu != "") {
            if (ajuan_reservasi_tanggal_mcu == "") {
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
            } else if (ajuan_reservasi_tanggal_mcu != "") {
                if (ajuan_reservasi_jam_mcu == "") {
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
                } else if (ajuan_reservasi_jam_mcu != "") {
                    if (ajuan_reservasi_institusi_mcu == "") {
                        push.innerHTML = "<p>institution must be Fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (ajuan_reservasi_institusi_mcu != "") {




                        var datjson9 = new Object();
                        datjson9.user_id = user;
                        datjson9.procCode = "300022";
                        datjson9.patient_id = add_regispasien_code_mcu;
                        datjson9.ins_code = ajuan_reservasi_institusi_mcu;
                        datjson9.tp_code = ajuan_reservasi_tipe_mcu;
                        datjson9.queue_date = ajuan_reservasi_tanggal_mcu;
                        datjson9.queue_hour = ajuan_reservasi_jam_mcu;
                        datjson9.ext = ext;

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
                                    alert('Success Reservasi Pasien MCU ');
                                    $('.cd-popup-ajukan-reservasi-mcu').removeClass('is-visible');
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
    });

</script>
<script src="myjs/mcu.js"></script>