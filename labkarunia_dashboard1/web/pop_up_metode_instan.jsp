<%-- 
    Document   : pop_up_add_category
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-metode-instan
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-metode-instan {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-metode-instan {
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
    .cd-popup-metode-instan.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-metode-instan-container {
        position: relative;
        width: 90%;
        height: 680px;
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

    .cd-popup-metode-instan-container .cd-buttons-metode-instan:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-metode-instan-container .cd-buttons-metode-instan li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-metode-instan-container .cd-buttons-metode-instan div {
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
    .cd-popup-metode-instan-container .cd-buttons-metode-instan li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-metode-instan-container .cd-buttons-metode-instan li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-metode-instan-container .cd-buttons-metode-instan li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-metode-instan-container .cd-buttons-metode-instan li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-metode-instan-container .cd-buttons-metode-instan li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-metode-instan-container .cd-buttons-metode-instan li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-metode-instan-container .cd-popup-metode-instan-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-metode-instan-container .cd-popup-metode-instan-close::before, .cd-popup-metode-instan-container .cd-popup-metode-instan-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-metode-instan-container .cd-popup-metode-instan-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-metode-instan-container .cd-popup-metode-instan-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-metode-instan-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-metode-instan-container {
            margin: 5em auto;
        }
    }
    #label-metode-instan {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx-metode-instan{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-metode-instan {
        cursor: pointer;
        width: 215px;
        height: 600px;
        margin-right: 5px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
    }
    #box2-metode-instan {
        width: 215px;
        height: 600px;
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }
    input, select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 5px;
    }
    textarea {
        padding-left: 10px;
        border-radius: 3px;
        width: 100%;
        margin-top: 10px;
        height: 115px;
    }
    #buttonon {
        color: white;
        margin-top: 10px;
        display: flex;
    }

    #btn_cancel {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel:hover {
        background-color: #CCC;
    }

    #btn_save:hover {
        background-color: #CCC;
    }

    #metins_img_ktp, #metins_img_passport, #metins_img_self {
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

    /*--------------------------------------------------------------------------*/










    @media only screen and (max-width: 400px) {

        #box1-metode-instan {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-metode-instan {
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
    jQuery(document).ready(function ($) {
//        var datjson4 = new Object();
//        datjson4.procCode = "200004";
//        $.ajax({
//            contentType: 'application/json',
//            dataType: "json",
//            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
//            data: JSON.stringify(datjson4),
//            type: 'post',
//            success: function (response) {
//                if (response.respCode == 0000) {
//                    var data = response.list;
//                    var options;
////                    var options = '<option selected="true" disabled value=""></option>';
//                    for (var i = 0; i < data.length; i++) {
//                        options += '<option value="' + data[i].kwn_code + '">' + data[i].kwn_code + '</option>';
//                    }
//                    $("select#edit_regispasien_nation").html(options);
//                } else {
//                    alert('Failed get data kewarganegaraan : ' + response.respDesc);
//                }
//            }
//        });




        //open popup add category
        $('#table_metodeinstan').on('click', 'td', function () {
            var row = $(this).closest("tr");
            var book_code = $('#table_metodeinstan').DataTable().row(row).data().book_code;

            var datjson3 = new Object();
            datjson3.procCode = "400017";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.book_code = book_code;
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
                        document.getElementById("metins_kodebooking").value = book_code;
                        document.getElementById("metins_lab").value = response.outlet_name;
                        document.getElementById("metins_noktp").value = response.idcard_number;
                        document.getElementById("metins_nama").value = response.name;
                        document.getElementById("metins_gender").value = response.gender;
                        document.getElementById("metins_birthday").value = response.birth_date;
                        document.getElementById("metins_nationality").value = response.citizenship_name;
                        document.getElementById("metins_email").value = response.email;
                        document.getElementById("metins_phone").value = response.phonenumber;

                        document.getElementById("metins_institusi").value = response.ins_name;
                        document.getElementById("metins_nourut").value = response.no_urut;
                        document.getElementById("metins_jasa").value = response.jp_kode;
                        document.getElementById("metins_produk").value = response.product_name;
//                        document.getElementById("metins_final").value = response.final_result;


                        var img_ktp1 = document.getElementById('metins_img_ktp');
                        img_ktp1.src = response.idcard_img;
                        $('.cd-popup-metode-instan').addClass('is-visible');
                    } else {
                        alert('Failed get data pasien : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });

        //close popup add category
        $('.cd-popup-metode-instan').on('click', function (event) {
            if ($(event.target).is('.cd-popup-metode-instan-close') || $(event.target).is('.cd-popup-metode-instan') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_metode_instan")[0].reset();
                $('#metins_img_ktp').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-metode-instan').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-metode-instan" role="alert">
    <div class="cd-popup-metode-instan-container">
        <label id="label-metode-instan">Result Metode Instan</label>
        <div id="boxx-metode-instan">
            <div id="box1-metode-instan">
                <div id="input_category">
                    <form id="form_metode_instan">
                        <div id="myModal_metode_instan" class="modal">
                            <div class="modal-content">
                                <span class="close_metode_instan">&times;</span>
                                <div id="push_text_metode_instan"></div>
                            </div>
                        </div>
                        <!-- The Modal -->
                        <div id="myModal" class="modal">
                            <span class="close">&times;</span>
                            <img class="modal-content" id="img01">
                        </div>

                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">kode booking</label><input type="text" id="metins_kodebooking" required="" placeholder="code" readonly="" style="background-color: aqua" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">lab</label><input type="text" id="metins_lab" required="" placeholder="identity number" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">no ktp</label><input type="text" id="metins_noktp" required="" placeholder="passport number" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">nama pasien</label><input type="text" id="metins_nama" required="" placeholder="name" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">jenis kelamin</label>
                        <select id="metins_gender" required="" disabled="">
                            <option value="laki-laki">laki-laki</option>
                            <option value="perempuan">perempuan</option>
                        </select>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">tanggal lahir</label><input type="text" id="metins_birthday" required="" placeholder="birtdate" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">kewarganegaraan</label><input type="text" id="metins_nationality" required="" placeholder="nationality" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">email</label><input type="text" id="metins_email" required="" placeholder="email" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">phone</label><input type="text" id="metins_phone" required="" placeholder="phone" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">institusi</label><input type="text" id="metins_institusi" required="" placeholder="institusi" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">no urut</label><input type="text" id="metins_nourut" required="" placeholder="no urut" disabled="">
                    </form>
                    <div id="buttonon">

                        <div id="btn_cancel">Cancel</div>
                        <div id="btn_save">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
            <div id="box2-metode-instan">

                <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">jasa pelayanan</label><input type="text" id="metins_jasa" required="" placeholder="jasa" disabled="">
                <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">produk</label><input type="text" id="metins_produk" required="" placeholder="produk" disabled="">
                <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">hasil final</label>
                <select id="metins_final" style="background-color: aquamarine">
                    <option value="" disabled="" selected="">Select Result</option>
                    <option value="POSITIVE">positive</option>
                    <option value="NEGATIVE">negative</option>
                </select>

                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">ktp</label>
                <img id="metins_img_ktp" src="image/upload_icon.jpeg">
            </div>
        </div>
        <a href="#0" class="cd-popup-metode-instan-close img-replace-metode-instan">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        $('#btn_save').on('click', function () {

            var metins_kodebooking = document.getElementById('metins_kodebooking').value;
            var metins_lab = document.getElementById('metins_lab').value;
            var metins_noktp = document.getElementById('metins_noktp').value;
            var metins_nama = document.getElementById('metins_nama').value;
            var metins_gender = document.getElementById('metins_gender').value;
            var metins_birthday = document.getElementById('metins_birthday').value;
            var metins_nationality = document.getElementById('metins_nationality').value;
            var metins_email = document.getElementById('metins_email').value;
            var metins_phone = document.getElementById('metins_phone').value;
            var metins_institusi = document.getElementById('metins_institusi').value;
            var metins_nourut = document.getElementById('metins_nourut').value;
            var metins_jasa = document.getElementById('metins_jasa').value;
            var metins_produk = document.getElementById('metins_produk').value;
            var metins_final = document.getElementById('metins_final').value;


            var modal = document.getElementById("myModal_metode_instan");
            var span = document.getElementsByClassName("close_metode_instan")[0];
            var push = document.getElementById("push_text_metode_instan");

            if (metins_kodebooking == "") {
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
            } else if (metins_kodebooking != "") {
                if (metins_lab == "") {
                    push.innerHTML = "<p>lab must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (metins_lab != "") {
                    if (metins_noktp == "") {
                        push.innerHTML = "<p>no ktp must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (metins_noktp != "") {
                        if (metins_nama == "") {
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
                        } else if (metins_nama != "") {
                            if (metins_gender == "") {
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
                            } else if (metins_gender != "") {
                                if (metins_birthday == "") {
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
                                } else if (metins_birthday != "") {
                                    if (metins_nationality == "") {
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
                                    } else if (metins_nationality != "") {
                                        if (metins_email == "") {
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
                                        } else if (metins_email != "") {
                                            if (metins_phone == "") {
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
                                            } else if (metins_phone != "") {
                                                if (metins_institusi == "") {
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
                                                } else if (metins_institusi != "") {






                                                    if (metins_nourut == "") {
                                                        push.innerHTML = "<p>no urut must be fill</p>";
                                                        modal.style.display = "block";
                                                        span.onclick = function () {
                                                            modal.style.display = "none";
                                                        }
                                                        window.onclick = function (event) {
                                                            if (event.target == modal) {
                                                                modal.style.display = "none";
                                                            }
                                                        }
                                                    } else if (metins_nourut != "") {
                                                        if (metins_jasa == "") {
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
                                                        } else if (metins_jasa != "") {
                                                            if (metins_produk == "") {
                                                                push.innerHTML = "<p>produk must be fill</p>";
                                                                modal.style.display = "block";
                                                                span.onclick = function () {
                                                                    modal.style.display = "none";
                                                                }
                                                                window.onclick = function (event) {
                                                                    if (event.target == modal) {
                                                                        modal.style.display = "none";
                                                                    }
                                                                }
                                                            } else if (metins_produk != "") {
                                                                if (metins_final == "") {
                                                                    push.innerHTML = "<p>result final must be fill</p>";
                                                                    modal.style.display = "block";
                                                                    span.onclick = function () {
                                                                        modal.style.display = "none";
                                                                    }
                                                                    window.onclick = function (event) {
                                                                        if (event.target == modal) {
                                                                            modal.style.display = "none";
                                                                        }
                                                                    }
                                                                } else if (metins_final != "") {

                                                                    var datjson = new Object();
                                                                    datjson.book_code = metins_kodebooking;
                                                                    datjson.procCode = "500021";
                                                                    datjson.user_id = window.localStorage.getItem('lab_user_id');
                                                                    datjson.product_name = metins_produk;
                                                                    datjson.final_result = metins_final;
                                                                    datjson.img_result64 = "-";
                                                                    $.ajax({
                                                                        contentType: 'application/json',
                                                                        dataType: "json",
                                                                        url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                                                        data: JSON.stringify(datjson),
                                                                        type: 'post',
                                                                        beforeSend: function () {
                                                                            $('#loader').removeClass('hidden');
                                                                        },

                                                                        success: function (response) {
                                                                            if (response.respCode == 0000) {
                                                                                destroyMetodeinstan();
                                                                                getListMetodeinstan();
                                                                                alert('Success Save Result Metode Instan');
                                                                                $('.cd-popup-metode-instan').removeClass('is-visible');
                                                                            } else {
                                                                                alert('Failed Save Result Metode Instan');
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
        });
    });
</script>