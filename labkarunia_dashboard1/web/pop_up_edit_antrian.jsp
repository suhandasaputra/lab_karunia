<%-- 
    Document   : pop_up_edit_antrian
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-edit-antrian
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-antrian {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-antrian {
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
    .cd-popup-edit-antrian.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-antrian-container {
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

    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian div {
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
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-antrian-container .cd-buttons-edit-antrian li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-antrian-container .cd-popup-edit-antrian-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-antrian-container .cd-popup-edit-antrian-close::before, .cd-popup-edit-antrian-container .cd-popup-edit-antrian-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-antrian-container .cd-popup-edit-antrian-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-antrian-container .cd-popup-edit-antrian-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-antrian-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-antrian-container {
            margin: 8em auto;
        }
    }
    #label_edit_antrian {
        text-align: center;
        align-content: center;
    }
    #boxx_edit_antrian{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1_edit_antrian {
        cursor: pointer;
        width: 495px;
        height: 650px;
        margin-right: 5px;
        margin-left: 15px;

        /*background-color: greenyellow;*/
    }
    #box2_edit_antrian {
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
        margin-bottom: 5px;
    }
    select {
        height: 20px;
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 5px;
    }

    #buttonon_edit_antrian {
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
    #btn_cancel_edit_antrian {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_edit_antrian {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_edit_antrian:hover {
        background-color: #CCC;
    }
    /*    #btn_reject:hover {
            background-color: #CCC;
        }*/
    #btn_save_edit_antrian:hover {
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

        #box1_edit_antrian {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2_edit_antrian {
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
    function popupeditantrian() {
        //open popup add antrian
        $('#table_antrian').on('click', 'td:nth-child(-n+16)', function () {
            var row = $(this).closest("tr");
            var book_code = $('#table_antrian').DataTable().row(row).data().book_code;
            var ext = $('#table_antrian').DataTable().row(row).data().ext;






            var datjson88 = new Object();
            datjson88.procCode = "400020";
            datjson88.user_id = window.localStorage.getItem('lab_user_id');
            datjson88.book_code = book_code;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson88),
                type: 'post',
                beforeSend: function () {
                    $('#loader').removeClass('hidden');
                },

                success: function (response) {
                    if (response.respCode == 0000) {
                        var prodname = response.product_name;

                        //select product
                        var datjson4 = new Object();
                        datjson4.procCode = "200029";
                        datjson4.pr_category = response.jp_kode;
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
                                    var data = response.list;
//                                    var options;
                                    var options = '<option selected="true" disabled value="' + prodname + '">' + prodname + '</option>';
                                    for (var i = 0; i < data.length; i++) {
                                        options += '<option value="' + data[i].pr_code + '">' + data[i].pr_code + '</option>';
                                    }
                                    $("select#edit_ajuan_antrian_produk").html(options);
                                } else {
                                    alert('Failed get list product : ' + response.respDesc);
                                }
                            },
                            complete: function () {
                                $('#loader').addClass('hidden');
                            }
                        });




//
                        document.getElementById("edit_ajukan_antrian_code").value = response.book_code;
                        document.getElementById("edit_ajuan_antrian_lab").value = response.outlet_name;
                        document.getElementById("edit_ajukan_antrian_identitynumber").value = response.idcard_number;
                        document.getElementById("edit_ajukan_antrian_name").value = response.name;
                        document.getElementById("edit_ajukan_antrian_gender").value = response.gender;
                        document.getElementById("edit_ajukan_antrian_birthday").value = response.birth_date;
                        document.getElementById("edit_ajukan_antrian_nation").value = response.citizenship_name;
                        document.getElementById("edit_ajukan_antrian_email").value = response.email;
                        document.getElementById("edit_ajukan_antrian_phone").value = response.phonenumber;
                        var img_ktp2 = document.getElementById('img_ktp_ajukan_antrian');
                        img_ktp2.src = response.idcard_img;

                        document.getElementById("edit_ajuan_antrian_institusi").value = response.ins_code;
                        document.getElementById("edit_ajuan_antrian_nourut").value = response.no_urut;
                        document.getElementById("edit_ajuan_antrian_tujuan").value = response.tc_code;
                        document.getElementById("edit_ajuan_antrian_pelayanan").value = response.jp_kode;
                        document.getElementById("edit_ajuan_antrian_detailjasapelayanan").value = response.djp_code;

//                        document.getElementById("edit_ajuan_antrian_produk").value = response.product_name;
//                        document.getElementById("edit_ajuan_antrian_produk1").value = response.product_name;


                        document.getElementById("edit_ajuan_antrian_harga").value = response.price;
                        document.getElementById("edit_ajuan_antrian_diskon").value = response.discount;
                        document.getElementById("edit_ajuan_antrian_net").value = response.price;
                        document.getElementById("edit_ajuan_antrian_sales").value = response.kontak_sales;
                        document.getElementById("edit_ajuan_antrian_tipem").value = response.tp_code;
                        document.getElementById("edit_ajuan_antrian_metode").value = response.metode_pembayaran;


                        if (ext == 't') {
                            document.getElementById("edit_ajuan_antrian_produk").disabled = true;
                            document.getElementById("edit_ajuan_antrian_diskon").disabled = true;
                            
                            document.getElementById("edit_ajuan_antrian_produk").style.backgroundColor = '#fafafa';
                            document.getElementById("edit_ajuan_antrian_diskon").style.backgroundColor = '#fafafa';
                        } else {
                            document.getElementById("edit_ajuan_antrian_produk").disabled = false;
                            document.getElementById("edit_ajuan_antrian_diskon").disabled = true;
                            
                            document.getElementById("edit_ajuan_antrian_produk").style.backgroundColor = 'aquamarine';
                            document.getElementById("edit_ajuan_antrian_diskon").style.backgroundColor = '#fafafa';
                        }



                        $('.cd-popup-edit-antrian').addClass('is-visible');


                    } else {
                        alert('Failed get data pasien : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });


        //close popup add antrian
        $('.cd-popup-edit-antrian').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-antrian-close') || $(event.target).is('.cd-popup-edit-antrian') || $(event.target).is('#btn_cancel_edit_antrian')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_antrian")[0].reset();
//                $('#img_ktp1').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add antrian
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-antrian').removeClass('is-visible');
            }
        });
    }
    ;
</script>
<div class="cd-popup-edit-antrian" role="alert">
    <div class="cd-popup-edit-antrian-container">
        <label id="label_edit_antrian">Edit Antrian</label>
        <div id="boxx_edit_antrian">
            <form id="form_edit_antrian" style="width: 1000px; display: inline-flex">

                <div id="myModal_ajukan_antrian" class="modal">
                    <div class="modal-content">
                        <span class="close_ajukan_antrian">&times;</span>
                        <div id="push_text_ajukan_antrian"></div>
                    </div>
                </div>

                <div id="box1_edit_antrian">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">booking code</label><input type="text" id="edit_ajukan_antrian_code" required="" placeholder="code" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">lab</label><input id="edit_ajuan_antrian_lab" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">identity number</label><input type="text" id="edit_ajukan_antrian_identitynumber" required="" placeholder="identity number" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="edit_ajukan_antrian_name" required="" placeholder="name" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="edit_ajukan_antrian_gender" required="" placeholder="gender" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="edit_ajukan_antrian_birthday" required="" placeholder="birtdate" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">nationality</label><input type="text" id="edit_ajukan_antrian_nation" required="" placeholder="nationality" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">email</label><input type="text" id="edit_ajukan_antrian_email" required="" placeholder="email" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">phone</label><input type="text" id="edit_ajukan_antrian_phone" required="" placeholder="phone" readonly="" disabled="">
                    <img id="img_ktp_ajukan_antrian" alt="image ktp" src="image/upload_icon.jpeg" style="height: 230px; width: 450px; margin-top: 20px; border-radius: 5px"/>
                </div>
                <div id="box2_edit_antrian">                    
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><input id="edit_ajuan_antrian_institusi" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">no urut</label><input id="edit_ajuan_antrian_nourut" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tujuan cek</label><input type="text" id="edit_ajuan_antrian_tujuan" class="wajib" disabled="" readonly="">
                    <!--<select id="edit_ajuan_antrian_tujuan" class="wajib"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jasa pelayanan</label><input type="text" id="edit_ajuan_antrian_pelayanan" class="wajib" disabled="" readonly="">
                    <!--<select id="edit_ajuan_antrian_pelayanan" class="wajib"></select>-->
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><select id="edit_ajuan_antrian_detailjasapelayanan" class="wajib"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa pelayanan</label><input type="text" id="edit_ajuan_antrian_detailjasapelayanan" disabled="">

                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">produk</label><select id="edit_ajuan_antrian_produk" style="background-color: aquamarine"></select>
                    <!--<label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">produk1</label><input type="text" id="edit_ajuan_antrian_produk1" style="background-color: aquamarine">-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">harga</label><input type="number" id="edit_ajuan_antrian_harga" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">diskon</label><input type="number" id="edit_ajuan_antrian_diskon" style="background-color: aquamarine" onchange="calculate()">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">net</label><input type="number" id="edit_ajuan_antrian_net" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">sales</label><input type="text" id="edit_ajuan_antrian_sales" readonly="" disabled="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tipe pembayaran</label><input type="text" id="edit_ajuan_antrian_tipem" class="wajib" disabled="" readonly="">
                    <!--<select id="edit_ajuan_antrian_tipem" class="wajib" style="background-color: #d5fbf7"></select>-->
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">metode bayar</label><input type="text" id="edit_ajuan_antrian_metode" style="background-color: aquamarine">

                    <div id="buttonon_edit_antrian">
                        <div id="btn_cancel_edit_antrian">Cancel</div>
                        <div id="btn_save_edit_antrian">Save</div>
                    </div>
                </div>
            </form>

        </div>
        <a href="#0" class="cd-popup-edit-antrian-close img-replace-edit-antrian">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        var user = window.localStorage.getItem('lab_user_id');
        $('#btn_save_edit_antrian').on('click', function () {

            var edit_ajukan_antrian_code = document.getElementById('edit_ajukan_antrian_code').value;
            var edit_ajuan_antrian_produk = document.getElementById('edit_ajuan_antrian_produk').value;
            var edit_ajuan_antrian_harga = document.getElementById('edit_ajuan_antrian_harga').value;
            var edit_ajuan_antrian_diskon = document.getElementById('edit_ajuan_antrian_diskon').value;
            var edit_ajuan_antrian_metode = document.getElementById('edit_ajuan_antrian_metode').value;

            var modal = document.getElementById("myModal_ajukan_antrian");
            var span = document.getElementsByClassName("close_ajukan_antrian")[0];
            var push = document.getElementById("push_text_ajukan_antrian");

            if (edit_ajukan_antrian_code == "") {
                push.innerHTML = "<p>booking code must be choose</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (edit_ajukan_antrian_code != "") {
                if (edit_ajuan_antrian_produk == "") {
                    push.innerHTML = "<p>produk must be Fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (edit_ajuan_antrian_produk != "") {
                    if (edit_ajuan_antrian_harga == "") {
                        push.innerHTML = "<p>harga must be Fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (edit_ajuan_antrian_harga != "") {
                        if (edit_ajuan_antrian_diskon == "") {
                            push.innerHTML = "<p>diskon must be Fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (edit_ajuan_antrian_diskon != "") {
                            if (edit_ajuan_antrian_metode == "") {
                                push.innerHTML = "<p>metode bayar must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (edit_ajuan_antrian_metode != "") {

                                var datjson7 = new Object();
                                datjson7.procCode = "500029";
                                datjson7.metode_pembayaran = edit_ajuan_antrian_metode;
                                datjson7.product_name = edit_ajuan_antrian_produk;
                                datjson7.book_code = edit_ajukan_antrian_code;
                                datjson7.user_id = user;

                                $.ajax({
                                    contentType: 'application/json',
                                    dataType: "json",
                                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                    data: JSON.stringify(datjson7),
                                    type: 'post',
                                    success: function (response) {
                                        if (response.respCode == 0000) {
                                            alert('Success update Antrian Pasien, Kode Booking : ' + response.book_code);
                                            $('.cd-popup-edit-antrian').removeClass('is-visible');
                                            window.localStorage.setItem('side', 'ant');
                                            window.location.href = "ant";
                                        } else {
                                            alert('Gagal update Antrian Pasien, ' + response.respDesc);
                                        }
                                    }
                                });
                            }
                        }
                    }
                }
            }
        });
    });


    function calculate() {
        var harga_awal = document.getElementById('edit_ajuan_antrian_harga').value;
        var harga_diskon = document.getElementById('edit_ajuan_antrian_diskon').value;

        var ggwp = harga_awal - harga_diskon;
        document.getElementById('edit_ajuan_antrian_net').value = ggwp;

    }
</script>