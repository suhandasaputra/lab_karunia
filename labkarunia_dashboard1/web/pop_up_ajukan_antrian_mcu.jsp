<%-- 
    Document   : pop_up_ajukan_antrian
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-ajukan-antrian-mcu
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-ajukan-antrian-mcu {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-ajukan-antrian-mcu {
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
    .cd-popup-ajukan-antrian-mcu.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-ajukan-antrian-mcu-container {
        position: relative;
        top: -50px;
        width: 90%;
        height: 750px;
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

    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu div {
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
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-ajukan-antrian-mcu-container .cd-buttons-ajukan-antrian-mcu li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-popup-ajukan-antrian-mcu-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-popup-ajukan-antrian-mcu-close::before, .cd-popup-ajukan-antrian-mcu-container .cd-popup-ajukan-antrian-mcu-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-popup-ajukan-antrian-mcu-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-ajukan-antrian-mcu-container .cd-popup-ajukan-antrian-mcu-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-ajukan-antrian-mcu-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-ajukan-antrian-mcu-container {
            margin: 8em auto;
        }
    }
    #label_ajukan_antrian_mcu {
        text-align: center;
        align-content: center;
    }
    #boxx_antrian_mcu{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1_antrian_mcu {
        cursor: pointer;
        width: 495px;
        height: 650px;
        margin-right: 5px;
        margin-left: 15px;

        /*background-color: greenyellow;*/
    }
    #box2_antrian_mcu {
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
        height: 20px;
        margin-bottom: 5px;
    }

    #buttonon_ajukan_antrian_mcu {
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
    #btn_cancel_ajukan_antrian_mcu {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_ajukan_antrian_mcu {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_ajukan_antrian_mcu:hover {
        background-color: #CCC;
    }
    /*    #btn_reject:hover {
            background-color: #CCC;
        }*/
    #btn_save_ajukan_antrian_mcu:hover {
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
        /*background-color: #d5fbf7;*/
    }

    /*--------------------------------------------------------------------------*/










    @media only screen and (max-width: 400px) {

        #box1_antrian_mcu {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2_antrian_mcu {
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
    //open popup add antrian
//    $('#table_reservasi').on('click', '#antrian_btn', function () {
//        var row = $(this).closest("tr");
//        var book_code = $('#table_reservasi').DataTable().row(row).data().book_code;

    function antri_mcu(book_code) {

        var datjson6 = new Object();
        datjson6.procCode = "400015";
        datjson6.user_id = window.localStorage.getItem('lab_user_id');
        datjson6.book_code = book_code;
        $.ajax({
            contentType: 'application/json',
            dataType: "json",
            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
            data: JSON.stringify(datjson6),
            type: 'post',
            beforeSend: function () {
                $('#loader').removeClass('hidden');
            },

            success: function (response) {
                if (response.respCode == 0000) {

                    //select product
//                    var datjson4 = new Object();
//                    datjson4.procCode = "200029";
//                    datjson4.pr_category = response.jp_kode;
//                    datjson4.user_id = window.localStorage.getItem('lab_user_id');
//                    $.ajax({
//                        contentType: 'application/json',
//                        dataType: "json",
//                        url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
//                        data: JSON.stringify(datjson4),
//                        type: 'post',
//                        success: function (response) {
//                            if (response.respCode == 0000) {
//                                var data = response.list;
//                                var options = '<option selected="true" disabled value="">Pilih Product</option>';
//                                for (var i = 0; i < data.length; i++) {
//                                    options += '<option value="' + data[i].pr_code + '">' + data[i].pr_code + '</option>';
//                                }
//                                $("select#ajuan_antrian_mcu_produk").html(options);
//                            } else {
//                                alert('Failed get list product : ' + response.respDesc);
//                            }
//                        },
//                        complete: function () {
//                            $('#loader').addClass('hidden');
//                        }
//                    });




                    document.getElementById("add_ajukan_antrian_mcu_code").value = response.book_code;
                    document.getElementById("add_ajuan_antrian_mcu_lab_mcu").value = response.outlet_name;
                    document.getElementById("add_ajukan_antrian_mcu_identitynumber").value = response.idcard_number;
                    document.getElementById("add_ajukan_antrian_mcu_name").value = response.name;
                    document.getElementById("add_ajukan_antrian_mcu_gender").value = response.gender;
                    document.getElementById("add_ajukan_antrian_mcu_birthday").value = response.birth_date;
                    document.getElementById("add_ajukan_antrian_mcu_nation").value = response.citizenship;
                    document.getElementById("add_ajukan_antrian_mcu_email").value = response.email;
                    document.getElementById("add_ajukan_antrian_mcu_phone").value = response.phonenumber;
                    var img_ktp2 = document.getElementById('img_ktp_ajukan_antrian');
                    img_ktp2.src = response.idcard_img;

                    document.getElementById("ajuan_antrian_mcu_institusi").value = response.ins_code;
                    document.getElementById("ajuan_antrian_mcu_nourut").value = response.no_urut;
                    document.getElementById("ajuan_antrian_mcu_tujuan").value = response.tc_code;
                    document.getElementById("ajuan_antrian_mcu_pelayanan").value = response.jp_kode;
                    document.getElementById("ajuan_antrian_mcu_detailjasapelayanan").value = response.djp_code;

//                        document.getElementById("ajuan_antrian_mcu_produk").value = response.birth_date;

                    document.getElementById("ajuan_antrian_mcu_harga").value = response.price;
                    document.getElementById("ajuan_antrian_mcu_diskon").value = response.discount;
                    document.getElementById("ajuan_antrian_mcu_net").value = response.price;
                    document.getElementById("ajuan_antrian_mcu_sales").value = response.kontak_sales;
                    document.getElementById("ajuan_antrian_mcu_tipem").value = response.tp_code;
                    document.getElementById("ajuan_antrian_mcu_metode").value = response.metode_pembayaran;

                    $('.cd-popup-ajukan-antrian-mcu').addClass('is-visible');

                } else {
                    alert('Failed get data pasien : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });
    }




    jQuery(document).ready(function ($) {

        //close popup add antrian
        $('.cd-popup-ajukan-antrian-mcu').on('click', function (event) {
            if ($(event.target).is('.cd-popup-ajukan-antrian-mcu-close') || $(event.target).is('.cd-popup-ajukan-antrian-mcu') || $(event.target).is('#btn_cancel_ajukan_antrian_mcu')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_antrian")[0].reset();
//                $('#img_ktp1').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add antrian
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-ajukan-antrian-mcu').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-ajukan-antrian-mcu" role="alert">
    <div class="cd-popup-ajukan-antrian-mcu-container">
        <label id="label_ajukan_antrian_mcu">Tambahkan Antrian Test MCU untuk kode booking Ini ?</label>
        <div id="boxx_antrian_mcu">
            <form id="form_add_antrian" style="width: 1000px; display: inline-flex">

                <div id="myModal_ajukan_antrian_mcu" class="modal">
                    <div class="modal-content">
                        <span class="close_ajukan_antrian_mcu">&times;</span>
                        <div id="push_text_ajukan_antrian_mcu"></div>
                    </div>
                </div>

                <div id="box1_antrian_mcu">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">booking code</label><input type="text" id="add_ajukan_antrian_mcu_code" required="" placeholder="code" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">lab</label><input id="add_ajuan_antrian_mcu_lab_mcu" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">identity number</label><input type="text" id="add_ajukan_antrian_mcu_identitynumber" required="" placeholder="identity number" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="add_ajukan_antrian_mcu_name" required="" placeholder="name" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="add_ajukan_antrian_mcu_gender" required="" placeholder="gender" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="add_ajukan_antrian_mcu_birthday" required="" placeholder="birtdate" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nationality</label><input type="text" id="add_ajukan_antrian_mcu_nation" required="" placeholder="nationality" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="add_ajukan_antrian_mcu_email" required="" placeholder="email" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="add_ajukan_antrian_mcu_phone" required="" placeholder="phone" readonly="" disabled="">
                    <img id="img_ktp_ajukan_antrian" alt="image ktp" src="image/upload_icon.jpeg" style="height: 230px; width: 450px; margin-top: 20px; border-radius: 5px"/>
                </div>
                <div id="box2_antrian_mcu">                    
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><input id="ajuan_antrian_mcu_institusi" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">no urut</label><input id="ajuan_antrian_mcu_nourut" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tujuan cek</label><input type="text" id="ajuan_antrian_mcu_tujuan" class="wajib" disabled="" readonly="">
                    <!--<select id="ajuan_antrian_mcu_tujuan" class="wajib"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jasa pelayanan</label><input type="text" id="ajuan_antrian_mcu_pelayanan" class="wajib" disabled="" readonly="">
                    <!--<select id="ajuan_antrian_mcu_pelayanan" class="wajib"></select>-->
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><select id="ajuan_antrian_mcu_detailjasapelayanan" class="wajib"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><input type="text" id="ajuan_antrian_mcu_detailjasapelayanan" disabled="">

                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">produk</label><select id="ajuan_antrian_mcu_produk" style="background-color: aquamarine"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400" hidden="">harga</label><input type="number" id="ajuan_antrian_mcu_harga" readonly="" disabled="" hidden="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400" hidden="">diskon</label><input type="number" id="ajuan_antrian_mcu_diskon" style="background-color: aquamarine" onchange="calculate()" hidden="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">net</label><input type="number" id="ajuan_antrian_mcu_net" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">sales</label><input type="text" id="ajuan_antrian_mcu_sales" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tipe pembayaran</label><input type="text" id="ajuan_antrian_mcu_tipem" class="wajib" disabled="" readonly="">
                    <!--<select id="ajuan_antrian_mcu_tipem" class="wajib" style="background-color: #d5fbf7"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">metode bayar</label><input type="text" id="ajuan_antrian_mcu_metode" style="background-color: aquamarine">

                    <div id="buttonon_ajukan_antrian_mcu">
                        <div id="btn_cancel_ajukan_antrian_mcu">Cancel</div>
                        <div id="btn_save_ajukan_antrian_mcu">Save</div>
                    </div>
                </div>
            </form>

        </div>
        <a href="#0" class="cd-popup-ajukan-antrian-mcu-close img-replace-ajukan-antrian-mcu">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        var user = window.localStorage.getItem('lab_user_id');
        $('#btn_save_ajukan_antrian_mcu').on('click', function () {

            var add_ajukan_antrian_mcu_code = document.getElementById('add_ajukan_antrian_mcu_code').value;
            var add_ajuan_antrian_mcu_lab_mcu = document.getElementById('add_ajuan_antrian_mcu_lab_mcu').value;
            var add_ajukan_antrian_mcu_identitynumber = document.getElementById('add_ajukan_antrian_mcu_identitynumber').value;
            var add_ajukan_antrian_mcu_name = document.getElementById('add_ajukan_antrian_mcu_name').value;
            var add_ajukan_antrian_mcu_gender = document.getElementById('add_ajukan_antrian_mcu_gender').value;
            var add_ajukan_antrian_mcu_birthday = document.getElementById('add_ajukan_antrian_mcu_birthday').value;
            var add_ajukan_antrian_mcu_nation = document.getElementById('add_ajukan_antrian_mcu_nation').value;
            var add_ajukan_antrian_mcu_email = document.getElementById('add_ajukan_antrian_mcu_email').value;
            var add_ajukan_antrian_mcu_phone = document.getElementById('add_ajukan_antrian_mcu_phone').value;
            var ajuan_antrian_mcu_institusi = document.getElementById('ajuan_antrian_mcu_institusi').value;
            var ajuan_antrian_mcu_nourut = document.getElementById('ajuan_antrian_mcu_nourut').value;
            var ajuan_antrian_mcu_tujuan = document.getElementById('ajuan_antrian_mcu_tujuan').value;
            var ajuan_antrian_mcu_pelayanan = document.getElementById('ajuan_antrian_mcu_pelayanan').value;
            var ajuan_antrian_mcu_detailjasapelayanan = document.getElementById('ajuan_antrian_mcu_detailjasapelayanan').value;
//            var ajuan_antrian_mcu_produk = document.getElementById('ajuan_antrian_mcu_produk').value;
            var ajuan_antrian_mcu_harga = document.getElementById('ajuan_antrian_mcu_harga').value;
            var ajuan_antrian_mcu_diskon = document.getElementById('ajuan_antrian_mcu_diskon').value;
            var ajuan_antrian_mcu_net = document.getElementById('ajuan_antrian_mcu_net').value;
            var ajuan_antrian_mcu_sales = document.getElementById('ajuan_antrian_mcu_sales').value;
            var ajuan_antrian_mcu_tipem = document.getElementById('ajuan_antrian_mcu_tipem').value;
            var ajuan_antrian_mcu_metode = document.getElementById('ajuan_antrian_mcu_metode').value;

            var modal = document.getElementById("myModal_ajukan_antrian_mcu");
            var span = document.getElementsByClassName("close_ajukan_antrian_mcu")[0];
            var push = document.getElementById("push_text_ajukan_antrian_mcu");






            var datjson7 = new Object();
            datjson7.procCode = "300023";
            datjson7.user_id = user;
            datjson7.tc_code = 'check-up';
            datjson7.discount = ajuan_antrian_mcu_diskon;
            datjson7.kontak_sales = ajuan_antrian_mcu_sales;
            datjson7.tp_code = ajuan_antrian_mcu_tipem;
            datjson7.metode_pembayaran = ajuan_antrian_mcu_metode;
            datjson7.book_code = add_ajukan_antrian_mcu_code;

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
                        destroyReservasi();
                        getListReservasi();
                        alert('Success menambahkan Antrian Pasien MCU, Kode Booking : ' + response.book_code);
                        $('.cd-popup-ajukan-antrian-mcu').removeClass('is-visible');




//                        var add_ajukan_antrian_mcu_code = document.getElementById('add_ajukan_antrian_mcu_code').value;
//                        var add_ajuan_antrian_mcu_lab_mcu = document.getElementById('add_ajuan_antrian_mcu_lab_mcu').value;
//                        var add_ajukan_antrian_mcu_identitynumber = document.getElementById('add_ajukan_antrian_mcu_identitynumber').value;
//                        var add_ajukan_antrian_mcu_name = document.getElementById('add_ajukan_antrian_mcu_name').value;
//                        var add_ajukan_antrian_mcu_gender = document.getElementById('add_ajukan_antrian_mcu_gender').value;
//                        var add_ajukan_antrian_mcu_birthday = document.getElementById('add_ajukan_antrian_mcu_birthday').value;
//                        var add_ajukan_antrian_mcu_nation = document.getElementById('add_ajukan_antrian_mcu_nation').value;
//                        var add_ajukan_antrian_mcu_email = document.getElementById('add_ajukan_antrian_mcu_email').value;
//                        var add_ajukan_antrian_mcu_phone = document.getElementById('add_ajukan_antrian_mcu_phone').value;
//                        var ajuan_antrian_mcu_institusi = document.getElementById('ajuan_antrian_mcu_institusi').value;
//                        var ajuan_antrian_mcu_nourut = document.getElementById('ajuan_antrian_mcu_nourut').value;
//                        var ajuan_antrian_mcu_tujuan = document.getElementById('ajuan_antrian_mcu_tujuan').value;
//                        var ajuan_antrian_mcu_pelayanan = document.getElementById('ajuan_antrian_mcu_pelayanan').value;
//                        var ajuan_antrian_mcu_detailjasapelayanan = document.getElementById('ajuan_antrian_mcu_detailjasapelayanan').value;
////                                                                                                            var ajuan_antrian_mcu_produk = document.getElementById('ajuan_antrian_mcu_produk').value;
//                        var ajuan_antrian_mcu_harga = document.getElementById('ajuan_antrian_mcu_harga').value;
//                        var ajuan_antrian_mcu_diskon = document.getElementById('ajuan_antrian_mcu_diskon').value;
//                        var ajuan_antrian_mcu_net = document.getElementById('ajuan_antrian_mcu_net').value;
//                        var ajuan_antrian_mcu_sales = document.getElementById('ajuan_antrian_mcu_sales').value;
//                        var ajuan_antrian_mcu_tipem = document.getElementById('ajuan_antrian_mcu_tipem').value;
//                        var ajuan_antrian_mcu_metode = document.getElementById('ajuan_antrian_mcu_metode').value;
//
//
//
//                        var today = new Date();
//                        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
//                        var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
//                        var dateTime = date + ' ' + time;
//
//                        JsBarcode("#barcode_nya", add_ajukan_antrian_mcu_code, {
//                            format: "code128",
//                            lineColor: "#0aa",
//                            width: 4,
//                            height: 100,
//                            displayValue: false
//                        });
//
//                        document.getElementById('ant_kb').innerHTML = add_ajukan_antrian_mcu_code;
//                        document.getElementById('ant_name').innerHTML = add_ajukan_antrian_mcu_name;
//                        document.getElementById('ant_sex').innerHTML = add_ajukan_antrian_mcu_gender + ' / ' + add_ajukan_antrian_mcu_birthday;
//                        document.getElementById('ant_jasa').innerHTML = ajuan_antrian_mcu_pelayanan;
//                        document.getElementById('ant_tgl').innerHTML = dateTime;
//
//
//
//                        $('.cd-popup-print-barcode').addClass('is-visible');
//                                                                                                            window.localStorage.setItem('side', 'ant');
//                                                                                                           window.location.href = "ant";
                    } else {
                        alert('Gagal menambahkan Antrian Pasien, ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }

            });
        });
    });


    function calculate() {
        var harga_awal = document.getElementById('ajuan_antrian_mcu_harga').value;
        var harga_diskon = document.getElementById('ajuan_antrian_mcu_diskon').value;

        var ggwp = harga_awal - harga_diskon;
        document.getElementById('ajuan_antrian_mcu_net').value = ggwp;

    }
</script>