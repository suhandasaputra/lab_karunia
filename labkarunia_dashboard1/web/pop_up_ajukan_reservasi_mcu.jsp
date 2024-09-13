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

    .wajib1 {
        height: 23px;
        
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
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien code</label><input type="text" id="add_regispasien_code_mcu" required="" placeholder="code" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">identity number</label><input type="text" id="add_regispasien_identitynumber_mcu" required="" placeholder="identity number" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">passport number</label><input type="text" id="add_regispasien_passport_mcu" required="" placeholder="passport number" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="add_regispasien_name_mcu" required="" placeholder="name" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="add_regispasien_gender_mcu" required="" placeholder="gender" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="add_regispasien_birthday_mcu" required="" placeholder="birtdate" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nationality</label><input type="text" id="add_regispasien_nation_mcu" required="" placeholder="nationality" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">address</label><input type="text" id="add_regispasien_adress_mcu" required="" placeholder="address" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="add_regispasien_email_mcu" required="" placeholder="email" readonly="" class="wajib1">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="add_regispasien_phone_mcu" required="" placeholder="phone" readonly="" class="wajib1">
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
                            <td class="cbbox"><input type="checkbox" id="darah_rutin"></td><td>darah rutin</td>
                            <td class="cbbox"><input type="checkbox" id="hitung_eosinofil"></td><td>hitung eosinofil</td>
                            <td class="cbbox"><input type="checkbox" id="pewarnaan_sitokimia"></td><td>pewarnaan sitokimia</td>
                            <td class="cbbox"><input type="checkbox" id="cd4"></td><td>cd4</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="darah_lengkap"></td><td>darah lengkap</td>
                            <td class="cbbox"><input type="checkbox" id="golongan_darah"></td><td>golongan darah</td>
                            <td class="cbbox"><input type="checkbox" id="sel_le"></td><td>sel le</td>
                            <td class="cbbox"><input type="checkbox" id="cd4_cd8"></td><td>cd4-cd8</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hemoglobin"></td><td>hemoglobin</td>
                            <td class="cbbox"><input type="checkbox" id="morfologi_darah_tepi"></td><td>morfologi darah tepi</td>
                            <td class="cbbox"><input type="checkbox" id="le_reaksi"></td><td>le reaksi</td>
                            <td class="cbbox"><input type="checkbox" id="coombs_test_direct_indirect"></td><td>coombs test direct/indirect</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hematokrit"></td><td>hematokrit</td>
                            <td class="cbbox"><input type="checkbox" id="it_ratio"></td><td>it ratio</td>
                            <td class="cbbox"><input type="checkbox" id="hb_elektroforesa"></td><td>hb elektroforesa</td>
                            <td class="cbbox"><input type="checkbox" id="hb_f"></td><td>hb f (alkali denaturasi)</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="trombosit"></td><td>trombosit</td>
                            <td class="cbbox"><input type="checkbox" id="serum_iron"></td><td>serum iron(si)</td>
                            <td class="cbbox"><input type="checkbox" id="g6_pd"></td><td>g6 pd</td>
                            <td class="cbbox"><input type="checkbox" id="hb_h"></td><td>hb h</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="leukosit"></td><td>leukosit</td>
                            <td class="cbbox"><input type="checkbox" id="tibc"></td><td>tibc</td>
                            <td class="cbbox"><input type="checkbox" id="g6_pd_neonatus"></td><td>g6 pd neonatus</td>
                            <td class="cbbox"><input type="checkbox" id="hb_a2"></td><td>hb a2</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="eritrosit"></td><td>eritrosit</td>
                            <td class="cbbox"><input type="checkbox" id="feritin"></td><td>feritin</td>
                            <td class="cbbox"><input type="checkbox" id="nap"></td><td>nap</td>
                            <td class="cbbox"><input type="checkbox" id="hams_test"></td><td>ham's test</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="mcv_mch_mch"></td><td>mcv mch mch</td>
                            <td class="cbbox"><input type="checkbox" id="transferin"></td><td>transferin</td>
                            <td class="cbbox"><input type="checkbox" id="malaria"></td><td>malaria</td>
                            <td class="cbbox"><input type="checkbox" id="sugar_water_test"></td><td>sugar water test</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hitung_jenis_leukosit"></td><td>hitung jenis leukosit</td>
                            <td class="cbbox"><input type="checkbox" id="asam_folat"></td><td>asam folat</td>
                            <td class="cbbox"><input type="checkbox" id="mikrofilaria"></td><td>mikrofilaria</td>
                            <td class="cbbox"><input type="checkbox" id="sito_genetika"></td><td>sito genetika</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="retikulosit"></td><td>retikulosit</td>
                            <td class="cbbox"><input type="checkbox" id="vitamin_b12"></td><td>vitamin b12</td>
                            <td class="cbbox"><input type="checkbox" id="antibodi_trombosit"></td><td>antibodi trombosit</td>
                            <td class="cbbox"><input type="checkbox" id="kromosom"></td><td>kromosom</td>
                        </tr>
                    </table>
                </div>
                <div id="koagulasi" class="tab-pane fade">
                    <h1 style="margin-top: 50px;">KOAGULASI</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hemostasis_lengkap"></td><td>hemostasis lengkap</td>
                            <td class="cbbox"><input type="checkbox" id="aptt"></td><td>aptt</td>
                            <td class="cbbox"><input type="checkbox" id="agregasi_trobosit"></td><td>agregasi trobosit</td>
                            <td class="cbbox"><input type="checkbox" id="protein_c"></td><td>protein c</td>
                            <td class="cbbox"><input type="checkbox" id="faktor_ix"></td><td>faktor ix</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="masa_pendarahan"></td><td>masa pendarahan(bt)</td>
                            <td class="cbbox"><input type="checkbox" id="fibrinogen"></td><td>fibrinogen</td>
                            <td class="cbbox"><input type="checkbox" id="anti_trombin_iii"></td><td>anti trombin iii</td>
                            <td class="cbbox"><input type="checkbox" id="protein_s"></td><td>protein s</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="masa_pembekuan"></td><td>masa pembekuan(ct)</td>
                            <td class="cbbox"><input type="checkbox" id="masa_trombin"></td><td>masa trombin(tt)</td>
                            <td class="cbbox"><input type="checkbox" id="percobaan_pembendungan"></td><td>percobaan pembendungan</td>
                            <td class="cbbox"><input type="checkbox" id="viskositas_darah_plasma"></td><td>viskositas darah / plasma</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="masa_protrombin"></td><td>masa protrombin(pt)</td>
                            <td class="cbbox"><input type="checkbox" id="d_dimer"></td><td>d-dimer(kuantitatif)</td>
                            <td class="cbbox"><input type="checkbox" id="inr"></td><td>inr</td>
                            <td class="cbbox"><input type="checkbox" id="faktor_viii"></td><td>faktor viii</td>
                        </tr>
                    </table>
                </div>
                <div id="kimia" class="tab-pane fade">
                    <h1 style="margin-top: 50px;">KIMIA</h1>
                    <table style="margin-top: 20px;width: 80%">
                        <tr>
                            <td class="cbbox"></td><td><strong>FUNGSI HATI</strong></td>
                            <td class="cbbox"></td><td><strong>LEMAK DARAH</strong></td>
                            <td class="cbbox"></td><td><strong>FUNGSI GINJAL</strong></td>
                            <td class="cbbox"></td><td><strong>KARBOHIDRAT</strong></td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="albumin"></td><td>albumin</td>
                            <td class="cbbox"><input type="checkbox" id="cholesterol_total"></td><td>cholesterol total</td>
                            <td class="cbbox"><input type="checkbox" id="ureum"></td><td>ureum</td>
                            <td class="cbbox"><input type="checkbox" id="gula_darah_puasa"></td><td>gula darah puasa</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="total_protein"></td><td>total protein</td>
                            <td class="cbbox"><input type="checkbox" id="ldl_cholesterol"></td><td>ldl cholesterol direk</td>
                            <td class="cbbox"><input type="checkbox" id="creatinin"></td><td>creatinin</td>
                            <td class="cbbox"><input type="checkbox" id="gula_darah_2_jam_pp"></td><td>gula darah 2 jam pp</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="total_protein_albumin_globulin"></td><td>total protein/alb/glob</td>
                            <td class="cbbox"><input type="checkbox" id="hdl_cholesterol"></td><td>hdl cholesterol</td>
                            <td class="cbbox"><input type="checkbox" id="ureum_clearance_test"></td><td>ureum clearance test (uct)</td>
                            <td class="cbbox"><input type="checkbox" id="glukosa_sewaktu"></td><td>glukosa sewaktu</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="protein_elektroforesa"></td><td>protein elektroforesa</td>
                            <td class="cbbox"><input type="checkbox" id="trigliserida"></td><td>trigliserida</td>
                            <td class="cbbox"><input type="checkbox" id="creatinin_clearance_test"></td><td>creatinin clearance (cct)</td>
                            <td class="cbbox"><input type="checkbox" id="kurva_harian"></td><td>kurva harian</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="bilirubin_direct"></td><td>Bilirubin Direk</td>
                            <td class="cbbox"><input type="checkbox" id="total_lipid"></td><td>Total Lipid</td>
                            <td class="cbbox"><input type="checkbox" id="asam_urat"></td><td>Asam Urat</td>
                            <td class="cbbox"><input type="checkbox" id="gtt"></td><td>GTT</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="bilirubin_indirect_direct_total"></td><td>bilirubin indirek/direk/total</td>
                            <td class="cbbox"><input type="checkbox" id="ratio_chol_t_hdl"></td><td>ratio chol t/hdl cholesterol</td>
                            <td class="cbbox"><input type="checkbox" id="cystatin_c"></td><td>cystatin-c</td>
                            <td class="cbbox"><input type="checkbox" id="hba1c"></td><td>hba1c</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="bilirubin_neonatus"></td><td>bilirubin neonatus</td>
                            <td class="cbbox"><input type="checkbox" id="vldl"></td><td>vldl</td>
                            <td class="cbbox"><input type="checkbox" id="bun"></td><td>bun</td>
                            <td class="cbbox"><input type="checkbox" id="keton_darah"></td><td>keton darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sgot"></td><td>sgot</td>
                            <td class="cbbox"></td><td><strong>FUNGSI JANTUNG</strong></td>
                            <td class="cbbox"><input type="checkbox" id="e_gfr"></td><td>egfr</td>
                            <td class="cbbox"><input type="checkbox" id="fruktosamin"></td><td>fruktosamine</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sgpt"></td><td>sgpt</td>
                            <td class="cbbox"><input type="checkbox" id="ck"></td><td>ck</td>
                            <td class="cbbox"></td><td><strong>ELEKTROLIT</strong></td>
                            <td class="cbbox"><input type="checkbox" id="c_peptide"></td><td>c. peptide</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="gamma_gt"></td><td>gamma gt</td>
                            <td class="cbbox"><input type="checkbox" id="ckmb"></td><td>ckmb</td>
                            <td class="cbbox"><input type="checkbox" id="calcium"></td><td>calcium</td>
                            <td class="cbbox"><input type="checkbox" id="insulin"></td><td>insulin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="cholinesterase"></td><td>cholinesterase</td>
                            <td class="cbbox"><input type="checkbox" id="ldh"></td><td>ldh</td>
                            <td class="cbbox"><input type="checkbox" id="phospor_anorganik"></td><td>phosphor anorg</td>
                            <td class="cbbox"></td><td><strong>ANALISA GAS DARAH</strong></td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="alkali_phosphatase"></td><td>alkali phosphatase</td>
                            <td class="cbbox"><input type="checkbox" id="alfa_hbdh"></td><td>alfa -hbdh</td>
                            <td class="cbbox"><input type="checkbox" id="magnesium"></td><td>magnesium</td>
                            <td class="cbbox"><input type="checkbox" id="analisa_gas_darah"></td><td>analisa gas darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="lap"></td><td>lap</td>
                            <td class="cbbox"><input type="checkbox" id="troponin_t_kuantitatif"></td><td>troponin t (kuantitatif)</td>
                            <td class="cbbox"><input type="checkbox" id="paket_elektrolit"></td><td>paket elektrolit (na, k, cl)</td>
                            <td class="cbbox"><input type="checkbox" id="asam_laktat"></td><td>asam laktat</td>
                        </tr>
                        <tr>
                            <td class="cbbox"></td><td><strong>PANKREAS</strong></td>
                            <td class="cbbox"><input type="checkbox" id="troponin_t_kualitatif"></td><td>troponin t (kualitatif)</td>
                            <td class="cbbox"><input type="checkbox" id="plumbum_serum"></td><td>plumbum serum</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="amilase"></td><td>amylase</td>
                            <td class="cbbox"><input type="checkbox" id="nt_pro_bnp"></td><td>nt pro bnp</td>
                            <td class="cbbox"><input type="checkbox" id="osmolalitas_darah"></td><td>osmolalitas darah</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="lipase"></td><td>lipase</td><td></td><td></td><td class="cbbox"><input type="checkbox" id="calcium_ion"></td><td>calsium ion</td>
                        </tr>
                    </table>
                </div>
                <div id="seroimunologi" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SEROIMUNOLOGI</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_dengue_igg_igm"></td><td>anti-dengue igg & igm</td>
                            <td class="cbbox"><input type="checkbox" id="serologi_amoeba"></td><td>serologi amuba</td>
                            <td class="cbbox"><input type="checkbox" id="anti_ebv_ea_igg"></td><td>anti ebv ea igg</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="dengue_ns1_antigen"></td><td>dengue ns 1 antigen</td>
                            <td class="cbbox"><input type="checkbox" id="vdrl"></td><td>vdrl</td>
                            <td class="cbbox"><input type="checkbox" id="anti_ebv_ea_igm"></td><td>anti ebv ea igm</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="widal"></td><td>widal</td>
                            <td class="cbbox"><input type="checkbox" id="tpha"></td><td>tpha</td>
                            <td class="cbbox"><input type="checkbox" id="anti_tb_igg"></td><td>anti tb igg</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_salmonella_igm"></td><td>anti salmonella igm/tubex</td>
                            <td class="cbbox"><input type="checkbox" id="anti_leptospira_igg"></td><td>anti leptospira igg</td>
                            <td class="cbbox"><input type="checkbox" id="serologi_jamur"></td><td>serologi jamur</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="crp"></td><td>crp</td>
                            <td class="cbbox"><input type="checkbox" id="anti_leptospira_igm"></td><td>anti leptospira igm</td>
                            <td class="cbbox"><input type="checkbox" id="serologi_jamur_lengkap"></td><td>serologi jamur lengkap</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="asto"></td><td>asto</td>
                            <td class="cbbox"><input type="checkbox" id="anti_mycoplasma_igg_igm"></td><td>anti mycoplasma igg/igm</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="rheumatoid_faktor"></td><td>rheumatoid faktor</td>
                            <td class="cbbox"><input type="checkbox" id="anti_ebv_ea_iga"></td><td>anti ebv ea iga</td>
                        </tr>
                    </table>
                </div>
                <div id="hepatitis" class="tab-pane fade">
                    <h1 style="margin-top: 50px">HEPATITIS</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hbsag"></td><td>hbsag</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hav_igm"></td><td>anti-hav igm</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_hbs"></td><td>anti hbs</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hav_total"></td><td>anti hav total</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hbeag"></td><td>hbeag</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hcv_total"></td><td>anti hcv total</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_hbe"></td><td>anti hbe</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hcv_igm"></td><td>anti hcv igm</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_hbc_total"></td><td>anti hbc total</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hdv"></td><td>anti hdv</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="anti_hbc_igm"></td><td>anti hbc igm</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hev_igm"></td><td>anti hev igm</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="hbv_dna"></td><td>hbv-dna</td>
                            <td class="cbbox"><input type="checkbox" id="anti_hev_igg"></td><td>anti hev igg</td>
                        </tr>
                    </table>
                </div>
                <div id="urinalisa" class="tab-pane fade">
                    <h1 style="margin-top: 50px">URINALISA</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_lengkap"></td><td>urine lengkap</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="urin_rutin_"></td><td>urine rutin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="sedimen_urine"></td><td>sedimen</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="test_kehamilan"></td><td>test kehamilan eia</td>
                        </tr>
                    </table>
                </div>
                <div id="narkotika" class="tab-pane fade">
                    <h1 style="margin-top: 50px">NARKOTIKA</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="amphetamine"></td><td>amphetamin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="meth_amphetamine"></td><td>meth - amphetamine</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="opiat_morfin"></td><td>opiat/morfin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="benzodiazepin"></td><td>benzodiazepin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="thc"></td><td>ganja/thc</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="opiat_amphetamin_thc"></td><td>opiat / amphetamin / thc</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="cocaine"></td><td>coccaine</td>
                        </tr>
                    </table>
                </div>
                <div id="faeces" class="tab-pane fade">
                    <h1 style="margin-top: 50px">FAECES</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="feses_rutin"></td><td>faeces rutin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="feses_lengkap"></td><td>faeces lengkap (rtn+drh samar)</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="darah_samar"></td><td>darah samar</td>
                        </tr>
<!--                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a4"></td><td>Colon Albumin</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a5"></td><td>Amuba</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="faec_a7"></td><td>Amylum</td>
                        </tr>-->
                    </table>
                </div>
                <div id="sekret" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SEKRET</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="pewarnaan_gram_sekret"></td><td>pewarnaan gram</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="candida_albican"></td><td>candida albicans</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="jamur_sekret"></td><td>jamur</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="tricomonas"></td><td>trikomonas</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="koh_10"></td><td>koh 10%</td>
                        </tr>
                    </table>
                </div>
                <div id="sputum" class="tab-pane fade">
                    <h1 style="margin-top: 50px">SPUTUM</h1>
                    <table style="margin-top: 20px; width: 80%">
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="pewarnaan_gram_sputum"></td><td>pewarnaan gram</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="pewarnaan_bta"></td><td>pewarnaan bta</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="difteri"></td><td>difteri</td>
                        </tr>
                        <tr>
                            <td class="cbbox"><input type="checkbox" id="jamur_sputum"></td><td>jamur</td>
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