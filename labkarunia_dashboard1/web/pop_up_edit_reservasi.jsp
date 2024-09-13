<%-- 
    Document   : pop_up_edit_reservasi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-view-reservasi
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-view-reservasi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-view-reservasi {
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
    .cd-popup-view-reservasi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-view-reservasi-container {
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

    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi div {
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
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-view-reservasi-container .cd-buttons-view-reservasi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-view-reservasi-container .cd-popup-view-reservasi-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-view-reservasi-container .cd-popup-view-reservasi-close::before, .cd-popup-view-reservasi-container .cd-popup-view-reservasi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-view-reservasi-container .cd-popup-view-reservasi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-view-reservasi-container .cd-popup-view-reservasi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-view-reservasi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-view-reservasi-container {
            margin: 8em auto;
        }
    }
    #label_view_reservasi {
        text-align: center;
        align-content: center;
    }
    #boxx_view_reservasi{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1_view_reservasi {
        cursor: pointer;
        width: 495px;
        height: 650px;
        margin-right: 5px;
        margin-left: 15px;

        /*background-color: greenyellow;*/
    }
    #box2_view_reservasi {
        width: 495px;
        height: 650px;
        margin-right: 15px;
        margin-left: 5px;
        /*background-color: yellow;*/
    }
    input {
        height: 20px;
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 3px;
    }
    select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        height: 20px;
        margin-bottom: 5px;
    }

    #buttonon_view_reservasi {
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
    #btn_cancel_view_reservasi {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_view_reservasi {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_view_reservasi:hover {
        background-color: #CCC;
    }
    /*    #btn_reject:hover {
            background-color: #CCC;
        }*/
    #btn_save_view_reservasi:hover {
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

        #box1_view_reservasi {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2_view_reservasi {
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
    function popupeditreservasi() {
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
                    $("select#view_reservasi_id_lab").html(options);
                } else {
                    alert('Failed get list lab : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //select institusi
        var datjson3 = new Object();
        datjson3.procCode = "200002";
        datjson3.user_id = window.localStorage.getItem('lab_user_id');
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
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Institusi</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].ins_code + '">' + data[i].ins_code + '</option>';
                    }
                    $("select#view_reservasi_institusi").html(options);
                } else {
                    alert('Failed get list institusi : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //select tujuan cek
        var datjson8 = new Object();
        datjson8.procCode = "200012";
        datjson8.user_id = window.localStorage.getItem('lab_user_id');
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
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih tujuan cek</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].tc_code + '">' + data[i].tc_code + '</option>';
                    }
                    $("select#view_reservasi_tujuan").html(options);
                } else {
                    alert('Failed get list tujuan cek : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });
//        //pilih jasa pelayanan
        var datjson9 = new Object();
        datjson9.procCode = "200003";
        datjson9.user_id = window.localStorage.getItem('lab_user_id');
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
                    var data = response.list;
                    var options = '<option selected="true" disabled value="">Pilih Jasa Pelayanan</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].jp_kode + '">' + data[i].jp_kode + '</option>';
                    }
                    $("select#view_reservasi_pelayanan").html(options);
                } else {
                    alert('Failed get list jasa pelayanan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        $('#view_reservasi_pelayanan').on('change', function () {
            var ubahcoy = document.getElementById('ubahcoy');
            var deletecoy = document.getElementById('view_reservasi_detailjasapelayanan');
            deletecoy.remove();
            var masukincoy = document.createElement("select");
            masukincoy.setAttribute('id', 'view_reservasi_detailjasapelayanan');
            masukincoy.setAttribute('style', 'background-color: aquamarine');

            ubahcoy.appendChild(masukincoy);



            var institusi = document.getElementById("view_reservasi_institusi").value;
            var jp_code = document.getElementById("view_reservasi_pelayanan").value;
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
                        $("select#view_reservasi_detailjasapelayanan").html(options);
                    } else {
                        alert('Failed get list jasa pelayanan : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        //select tipe pembayaran
        var datjson11 = new Object();
        datjson11.procCode = "200011";
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
                    var options = '<option selected="true" disabled value="">Pilih Tipe Pembayaran</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].tp_code + '">' + data[i].tp_code + '</option>';
                    }
                    $("select#view_reservasi_tipem").html(options);
                } else {
                    alert('Failed get list tipe pembayaran : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });







        //close popup add antrian
        $('.cd-popup-view-reservasi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-view-reservasi-close') || $(event.target).is('.cd-popup-view-reservasi') || $(event.target).is('#btn_cancel_view_reservasi')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form-edit-reservasi")[0].reset();
//                $('#img_ktp1').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add antrian
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-view-reservasi').removeClass('is-visible');
            }
        });
    }
    ;

    function openpopupeditreservasicovid(book_code) {
        //open popup add antrian
//        $('#table_reservasi').on('click', 'td:nth-child(-n+10)', function () {
//            var row = $(this).closest("tr");
//            var book_code = $('#table_reservasi').DataTable().row(row).data().book_code;


            var datjson12 = new Object();
            datjson12.procCode = "400015";
            datjson12.user_id = window.localStorage.getItem('lab_user_id');
            datjson12.book_code = book_code;
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

                        document.getElementById("view_reservasi_patient_id").value = response.patient_id;
                        document.getElementById("view_reservasi_code").value = response.book_code;
                        document.getElementById("view_reservasi_id_lab").value = response.outlet_id;
                        document.getElementById("view_reservasi_address").value = response.address;


//                        document.getElementById("view_reservasi_nama_lab").value = response.outlet_name;
                        document.getElementById("view_reservasi_identitynumber").value = response.idcard_number;
                        document.getElementById("view_reservasi_name").value = response.name;
                        document.getElementById("view_reservasi_gender").value = response.gender;
                        document.getElementById("view_reservasi_birthday").value = response.birth_date;
                        document.getElementById("view_reservasi_nation").value = response.citizenship;
                        document.getElementById("view_reservasi_nationname").value = response.citizenship_name;
                        document.getElementById("view_reservasi_email").value = response.email;
                        document.getElementById("view_reservasi_phone").value = response.phonenumber;
                        document.getElementById("view_reservasi_passport").value = response.passport_number;

                        var img_ktp2 = document.getElementById('img_ktp_view_reservasi');
                        img_ktp2.src = response.idcard_img;

                        document.getElementById("view_reservasi_reservasidate").value = response.queue_date;
                        document.getElementById("view_reservasi_reservasihour").value = response.queue_hour;
                        document.getElementById("view_reservasi_institusi").value = response.ins_code;
//                        document.getElementById("view_reservasi_institusiname").value = response.ins_name;
                        document.getElementById("view_reservasi_nourut").value = response.no_urut;
                        document.getElementById("view_reservasi_tujuan").value = response.tc_code;
                        document.getElementById("view_reservasi_pelayanan").value = response.jp_kode;
                        document.getElementById("view_reservasi_detailjasapelayanan").value = response.djp_code;
//                        document.getElementById("view_reservasi_detailjasapelayanannama").value = response.detail_jasa;

                        document.getElementById("view_reservasi_harga").value = response.price;
                        document.getElementById("view_reservasi_diskon").value = response.discount;
                        document.getElementById("view_reservasi_net").value = response.total_bill;
                        document.getElementById("view_reservasi_sales").value = response.kontak_sales;
                        document.getElementById("view_reservasi_tipem").value = response.tp_code;
//                        document.getElementById("view_reservasi_tipemname").value = response.tp_name;
                        document.getElementById("view_reservasi_metode").value = response.metode_pembayaran;
                        $('.cd-popup-view-reservasi').addClass('is-visible');

                    } else {
                        alert('Failed get data pasien : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
//        });
    }
</script>
<div class="cd-popup-view-reservasi" role="alert">
    <div class="cd-popup-view-reservasi-container">
        <label id="label_view_reservasi">Edit Reservasi Pasien Covid</label>
        <div id="boxx_view_reservasi">
            <form id="form-edit-reservasi" style="width: 1000px; display: inline-flex">

                <div id="myModal_view_reservasi" class="modal">
                    <div class="modal-content">
                        <span class="close_view_reservasi">&times;</span>
                        <div id="push_text_view_reservasi"></div>
                    </div>
                </div>

                <div id="box1_view_reservasi">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">id pasien</label><input type="text" id="view_reservasi_patient_id" required="" placeholder="code" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">kode booking</label><input type="text" id="view_reservasi_code" required="" placeholder="code" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">no ktp</label><input type="text" id="view_reservasi_identitynumber" required="" placeholder="identity number" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama pasien</label><input type="text" id="view_reservasi_name" required="" placeholder="name" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">passport</label><input type="text" id="view_reservasi_passport" required="" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">alamat</label><input type="text" id="view_reservasi_address" required="" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jenis kelamin</label><input type="text" id="view_reservasi_gender" required="" placeholder="gender" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tgl lahir</label><input type="text" id="view_reservasi_birthday" required="" placeholder="birtdate" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">id negara</label><input type="text" id="view_reservasi_nation" required="" placeholder="nationality" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama negara</label><input type="text" id="view_reservasi_nationname" required="" placeholder="nationality" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="view_reservasi_email" required="" placeholder="email" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="view_reservasi_phone" required="" placeholder="phone" readonly="" disabled="">
                    <img id="img_ktp_view_reservasi" alt="image ktp" src="image/upload_icon.jpeg" style="height: 200px; width: 400px; border-radius: 5px"/>
                </div>
                <div id="box2_view_reservasi">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">id lab</label><select id="view_reservasi_id_lab" style="background-color: aquamarine" disabled=""></select>
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama lab</label><input id="view_reservasi_nama_lab" readonly="" disabled="">-->                    
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tanggal reservasi</label><input type="date" id="view_reservasi_reservasidate" style="background-color: aquamarine">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jam reservasi</label><select id="view_reservasi_reservasihour" style="background-color: aquamarine">
                        <option value="01:00:00">01</option>
                        <option value="02:00:00">02</option>
                        <option value="03:00:00">03</option>
                        <option value="04:00:00">04</option>
                        <option value="05:00:00">05</option>
                        <option value="06:00:00">06</option>
                        <option value="07:00:00">07</option>
                        <option value="08:00:00">08</option>
                        <option value="09:00:00">09</option>
                        <option value="10:00:00">10</option>
                        <option value="11:00:00">11</option>
                        <option value="12:00:00">12</option>
                        <option value="13:00:00">13</option>
                        <option value="14:00:00">14</option>
                        <option value="15:00:00">15</option>
                        <option value="16:00:00">16</option>
                        <option value="17:00:00">17</option>
                        <option value="18:00:00">18</option>
                        <option value="19:00:00">19</option>
                        <option value="20:00:00">20</option>
                        <option value="21:00:00">21</option>
                        <option value="22:00:00">22</option>
                        <option value="23:00:00">23</option>
                        <option value="24:00:00">24</option>
                    </select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><select id="view_reservasi_institusi" style="background-color: aquamarine"></select>
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama institusi</label><input id="view_reservasi_institusiname" disabled="" readonly="">-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">no urut</label><input id="view_reservasi_nourut" disabled="" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tujuan cek</label><select id="view_reservasi_tujuan" class="wajib" style="background-color: aquamarine"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">id jasa pelayanan</label><select id="view_reservasi_pelayanan" class="wajib" style="background-color: aquamarine"></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><div id="ubahcoy"><input id="view_reservasi_detailjasapelayanan" disabled=""></div>
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama detail jasa pelayanan</label><input id="view_reservasi_detailjasapelayanannama" class="wajib" readonly="" disabled="">-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">harga</label><input type="number" id="view_reservasi_harga" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">diskon</label><input type="number" id="view_reservasi_diskon" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">net</label><input type="number" id="view_reservasi_net" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">sales</label><input id="view_reservasi_sales" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tipe pembayaran</label><select id="view_reservasi_tipem" style="background-color: aquamarine"></select>
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nama tipe pembayaran</label><input id="view_reservasi_tipemname" readonly="" disabled="">-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400" hidden="">metode bayar</label><input type="text" id="view_reservasi_metode" readonly="" disabled="" hidden="">

                    <div id="buttonon_view_reservasi">
                        <div id="btn_cancel_view_reservasi">Cancel</div>
                        <div id="btn_save_view_reservasi" onclick="sub_edt_lab_view_reservasi()">Save</div>
                    </div>
                </div>
            </form>

        </div>
        <a href="#0" class="cd-popup-view-reservasi-close img-replace-view-reservasi">Close</a>
    </div>
</div>
<script>
    function sub_edt_lab_view_reservasi() {

        var ins_code = document.getElementById("view_reservasi_institusi").value;
        var tc_code = document.getElementById("view_reservasi_tujuan").value;
        var jp_code = document.getElementById("view_reservasi_pelayanan").value;
        var djp_code = document.getElementById("view_reservasi_detailjasapelayanan").value;
        var tp_code = document.getElementById("view_reservasi_tipem").value;
        var queue_date = document.getElementById("view_reservasi_reservasidate").value;
        var queue_hour = document.getElementById("view_reservasi_reservasihour").value;
        var book_code = document.getElementById("view_reservasi_code").value;

        var modal = document.getElementById("myModal_view_reservasi");
        var span = document.getElementsByClassName("close_view_reservasi")[0];
        var push = document.getElementById("push_text_view_reservasi");
        ;
        if (ins_code == "") {
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
        } else if (ins_code != "") {
            if (tc_code == "") {
                push.innerHTML = "<p>tujuan cek must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (tc_code != "") {
                if (jp_code == "") {
                    push.innerHTML = "<p>jasa must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (jp_code != "") {
                    if (djp_code == "") {
                        push.innerHTML = "<p>detail jasa must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (djp_code != "") {
                        if (tp_code == "") {
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
                        } else if (tp_code != "") {
                            if (queue_date == "") {
                                push.innerHTML = "<p>tanggal antrian must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (queue_date != "") {
                                if (queue_hour == "") {
                                    push.innerHTML = "<p>jam antrian must be fill</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (queue_hour != "") {
                                    if (book_code == "") {
                                        push.innerHTML = "<p>kode booking must be fill</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (book_code != "") {

                                        var datjson4 = new Object();
                                        datjson4.procCode = "500028";
                                        datjson4.user_id = window.localStorage.getItem('lab_user_id');

                                        datjson4.ins_code = ins_code;
                                        datjson4.tc_code = tc_code;
                                        datjson4.jp_code = jp_code;
                                        datjson4.djp_code = djp_code;
                                        datjson4.tp_code = tp_code;
                                        datjson4.queue_date = queue_date;
                                        datjson4.queue_hour = queue_hour;
                                        datjson4.book_code = book_code;
                                        $.ajax({
                                            contentType: 'application/json',
                                            dataType: "json",
                                            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                            data: JSON.stringify(datjson4),
                                            type: 'post',
                                            beforeSend: function () {
                                                $('#loader').removeClass('hidden');
                                            },

                                            success: function (response) {
                                                if (response.respCode == 0000) {
                                                    destroyReservasi();
                                                    getListReservasi();
                                                    alert('success update reservasi : ' + book_code);
                                                    $('.cd-popup-view-reservasi').removeClass('is-visible');
                                                    $("#form-edit-reservasi")[0].reset();
                                                } else {
                                                    alert('failed update reservasi : ' + response.respDesc);
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

//    function sub_del_lab() {
//        var code = document.getElementById("edit_kwn_code").value;
//
//        if (code == "") {
//            push.innerHTML = "<p>code must be fill</p>";
//            modal.style.display = "block";
//            span.onclick = function () {
//                modal.style.display = "none";
//            }
//            window.onclick = function (event) {
//                if (event.target == modal) {
//                    modal.style.display = "none";
//                }
//            }
//        } else if (code != "") {
//            var datjson3 = new Object();
//            datjson3.procCode = "600004";
//            datjson3.user_id = window.localStorage.getItem('lab_user_id');
//            datjson3.kwn_code = code;
//            $.ajax({
//                contentType: 'application/json',
//                dataType: "json",
//                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
//                data: JSON.stringify(datjson3),
//                type: 'post',
//                success: function (response) {
//                    if (response.respCode == 0000) {
//                        destroyKwn();
//                        getlistKwn();
//                        alert('Success Delete Kewarganegaraan');
//                        $('.cd-popup-edit-kwn').removeClass('is-visible');
//                        $("#form_edit_kwn")[0].reset();
//                    } else {
//                        alert('Failed Delete Kewarganegaraan');
//                    }
//                }
//            });
//        }
//    }
</script>