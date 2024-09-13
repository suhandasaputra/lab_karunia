<%-- 
    Document   : reg_mandiri.jsp
    Created on : 22-Feb-2022, 09:55:41
    Author     : matajari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link rel="stylesheet" href="css/bootstrap.css">-->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>lab karunia</title>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <style>

            @import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

            * {
                box-sizing: border-box;
            }

            body {
                background: white;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                font-family: 'Montserrat', sans-serif;
                height: 100vh;
                margin: -20px 0 50px;
            }

            h1 {
                font-weight: bold;
                margin: 0;
            }

            h2 {
                text-align: center;
            }

            p {
                font-size: 14px;
                font-weight: 100;
                line-height: 20px;
                letter-spacing: 0.5px;
                margin: 20px 0 30px;
            }

            span {
                font-size: 12px;
            }

            a {
                color: #333;
                font-size: 14px;
                text-decoration: none;
                margin: 15px 0;
            }

            button {
                cursor: pointer;
                border-radius: 20px;
                border: 1px solid #ea5f46;
                background-color: #ea5f46;
                color: #FFFFFF;
                font-size: 12px;
                font-weight: bold;
                padding: 12px 45px;
                letter-spacing: 1px;
                text-transform: uppercase;
                transition: transform 80ms ease-in;
            }
            button:hover {
                background-color: #FF4B2B;
            }

            button:active {
                transform: scale(0.95);
            }

            button:focus {
                outline: none;
            }

            button.ghost {
                background-color: transparent;
                border-color: #FFFFFF;
                cursor: pointer;
            }
            button.ghost:hover {
                background-color: #2ebba5;
                border-color: #FFFFFF;
            }

            form {
                background-color: #FFFFFF;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 50px;
                height: 100%;
                text-align: center;
            }

            input{
                font-family: 'Montserrat', sans-serif;
                font-size: 12px;
                border-radius: 3px;
                margin: 2px;
                background-color: #eee;
                border: none;
                padding: 2px 0px 2px 10px;
                width: 100%;
                margin-left: 5px;
            }
            textarea{
                font-family: 'Montserrat', sans-serif;
                font-size: 12px;
                border-radius: 3px;
                margin: 2px;
                background-color: #eee;
                border: none;
                padding: 0px 0px 0px 10px;
                width: 100%;
                margin-left: 5px;
            }

            select{
                font-family: 'Montserrat', sans-serif;
                font-size: 12px;
                border-radius: 3px;
                margin: 2px;
                background-color: #eee;
                border: none;
                padding: 2px 0px 2px 10px;
                width: 100%;
                margin-left: 5px;
            }

            .container {
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
                    0 10px 10px rgba(0,0,0,0.22);
                position: relative;
                overflow: hidden;
                width: 768px;
                max-width: 100%;
                min-height: 550px;
            }

            .form-container {
                position: absolute;
                top: 0;
                height: 100%;
                transition: all 0.6s ease-in-out;
            }

            .sign-in-container {
                left: 0;
                width: 50%;
                z-index: 2;
            }

            .container.right-panel-active .sign-in-container {
                transform: translateX(100%);
            }

            .sign-up-container {
                left: 0;
                width: 50%;
                opacity: 0;
                z-index: 1;
            }

            .container.right-panel-active .sign-up-container {
                transform: translateX(100%);
                opacity: 1;
                z-index: 5;
                animation: show 0.6s;
            }

            @keyframes show {
                0%, 49.99% {
                    opacity: 0;
                    z-index: 1;
                }

                50%, 100% {
                    opacity: 1;
                    z-index: 5;
                }
            }

            .overlay-container {
                position: absolute;
                top: 0;
                left: 50%;
                width: 50%;
                height: 100%;
                overflow: hidden;
                transition: transform 0.6s ease-in-out;
                z-index: 100;
            }

            .container.right-panel-active .overlay-container{
                transform: translateX(-100%);
            }

            .overlay {
                background: #29B19C;
                background: -webkit-linear-gradient(to right, #106c5e, #29B19C);
                background: linear-gradient(to right, #106c5e, #29B19C);
                background-repeat: no-repeat;
                background-size: cover;
                background-position: 0 0;
                color: #FFFFFF;
                position: relative;
                left: -100%;
                height: 100%;
                width: 200%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .container.right-panel-active .overlay {
                transform: translateX(50%);
            }

            .overlay-panel {
                position: absolute;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 40px;
                text-align: center;
                top: 0;
                height: 100%;
                width: 50%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .overlay-left {
                transform: translateX(-20%);
            }

            .container.right-panel-active .overlay-left {
                transform: translateX(0);
            }

            .overlay-right {
                right: 0;
                transform: translateX(0);
            }

            .container.right-panel-active .overlay-right {
                transform: translateX(20%);
            }



            footer {
                background-color: #1e9280;
                color: #fff;
                font-size: 12px;
                bottom: 0;
                position: fixed;
                left: 0;
                right: 0;
                text-align: center;
                z-index: 999;
            }

            footer p {
                margin: 10px 0;
            }

            footer i {
                color: red;
            }

            footer a {
                color: #3c97bf;
                text-decoration: none;
            }

            #box1_add_pasien {
                cursor: pointer;
                width: 215px;
                height: 400px;
                margin-right: 5px;
                /*background-color: #68f3e9;*/
                border-radius: 5px;
            }
            #img_ktp2, #img_passport2, #img_self2 {
                width: 200px;
                height: 110px;
                margin-bottom: 5px;
            }

            .lds-dual-ring.hidden { 
                display: none;
            }
            .lds-dual-ring {
                display: inline-block;
                width: 80px;
                height: 80px;
            }
            .lds-dual-ring:after {
                content: " ";
                display: block;
                width: 64px;
                height: 64px;
                margin: 300px auto;
                border-radius: 50%;
                border: 6px solid #fff;
                border-color: #fff transparent #fff transparent;
                animation: lds-dual-ring 1.2s linear infinite;
            }
            @keyframes lds-dual-ring {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(360deg);
                }
            }


            .overlay1 {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0,0,0,.8);
                z-index: 999;
                opacity: 1;
                transition: all 0.5s;
            }
        </style>
        <script>
            $(document).ready(function ($) {
                $('#img_ktp2').on('click', function (event) {
                    $('#file-input-item').trigger('click');
                });

                $('#img_passport2').on('click', function (event) {
                    $('#file-input-item2').trigger('click');
                });

                $('#img_self2').on('click', function (event) {
                    $('#file-input-item3').trigger('click');
                });





//              select lab
                var datjson1 = new Object();
                datjson1.procCode = "200005";
//                datjson7.user_id = window.localStorage.getItem('lab_user_id');
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
                            var data = response.list;
                            var options = '<option selected disabled value="">Laboratory</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                            }
                            $("select#lab").html(options);
                        } else {
                            alert('Failed get list lab : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });

                //select institusi
                $('#lab').on('change', function () {
                    var lab_nya = document.getElementById("lab").value;
                    var datjson2 = new Object();
                    datjson2.procCode = "200014";
                    datjson2.ins_lab = lab_nya;
//                    datjson11.user_id = window.localStorage.getItem('lab_user_id');
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
                                var data = response.list;
                                var options = '<option selected disabled value="">Sampling Location</option>';
                                for (var i = 0; i < data.length; i++) {
                                    options += '<option value="' + data[i].ins_code + '">' + data[i].ins_code + '</option>';
                                }
                                $("select#sampling").html(options);
                            } else {
                                alert('Failed get list Sampling location : ' + response.respDesc);
                            }
                        },
                        complete: function () {
                            $('#loader').addClass('hidden');
                        }
                    });
                });

                //select tujuan        
                var datjson3 = new Object();
                datjson3.procCode = "200012";
//                datjson12.user_id = window.localStorage.getItem('lab_user_id');
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
                            var options = '<option selected disabled value="">Check purpose</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].tc_code + '">' + data[i].tc_code + '</option>';
                            }
                            $("select#tujuan").html(options);
                        } else {
                            alert('Failed get list check purpose : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });

                //pilih jasa pelayanan
                var datjson4 = new Object();
                datjson4.procCode = "200003";
//                datjson13.user_id = window.localStorage.getItem('lab_user_id');
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
                            var options = '<option selected disabled value="">Test Method</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].jp_kode + '">' + data[i].jp_kode + '</option>';
                            }
                            $("select#metode").html(options);
                        } else {
                            alert('Failed get list Test Method : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });

                //pilih detail jasa pelayanan
                $('#metode').on('change', function () {
                    var institusi = document.getElementById("sampling").value;
                    var jp_code = document.getElementById("metode").value;
                    var datjson5 = new Object();
                    datjson5.procCode = "200016";
                    datjson5.ins_code = institusi;
                    datjson5.jp_code = jp_code;
//                    datjson13.user_id = window.localStorage.getItem('lab_user_id');
                    $.ajax({
                        contentType: 'application/json',
                        dataType: "json",
                        url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                        data: JSON.stringify(datjson5),
                        type: 'post',
                        beforeSend: function () {
                            $('#loader').removeClass('hidden');
                        },

                        success: function (response) {
                            if (response.respCode == 0000) {
                                var data = response.list;
                                var options = '<option selected disabled value="">Detail Service</option>';
                                for (var i = 0; i < data.length; i++) {
                                    options += '<option value="' + data[i].djp_code + '">' + data[i].detail_jasa + '</option>';
                                }
                                $("select#detail").html(options);
                            } else {
                                alert('Failed get list detail service : ' + response.respDesc);
                            }
                        },
                        complete: function () {
                            $('#loader').addClass('hidden');
                        }
                    });
                });
//negara
                var datjson6 = new Object();
                datjson6.procCode = "200004";
                datjson6.user_id = window.localStorage.getItem('lab_user_id');
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
                            var data = response.list;
//                        var options;
                            var options = '<option selected="true" disabled value="">Country</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].kwn_code + '">' + data[i].kwn_name + '</option>';
                            }
                            $("select#country").html(options);
                        } else {
                            alert('Failed get data country : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });
                //pilih tipem
                var datjson7 = new Object();
                datjson7.procCode = "200011";
//        datjson7.user_id = window.localStorage.getItem('lab_user_id');
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
                            var options = '<option selected disabled value="">Payment Type</option>';
                            for (var i = 0; i < data.length; i++) {
                                options += '<option value="' + data[i].tp_code + '">' + data[i].tp_code + '</option>';
                            }
                            $("select#tipem").html(options);
                        } else {
                            alert('Failed get list payment type : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });



                $('#country').on('change', function () {
                    var negara = document.getElementById('country').value;
                    if (negara !== 'Indonesia') {
                        document.getElementById('id_number').value = '-';
                        document.getElementById('id_number').disabled = true;

                        document.getElementById('passport').value = '';
                        document.getElementById('passport').disabled = false;

                        document.getElementById('file-input-item').disabled = true;
                        document.getElementById('file-input-item2').disabled = false;

                        document.getElementById('img_item').value = '-';
                        document.getElementById('img_item2').value = '';

                        document.getElementById('img_ktp2').style.opacity = 0.5;
                        document.getElementById('img_passport2').style.opacity = 1;
                    } else {
                        document.getElementById('passport').value = '-';
                        document.getElementById('passport').disabled = true;

                        document.getElementById('id_number').value = '';
                        document.getElementById('id_number').disabled = false;

                        document.getElementById('file-input-item').disabled = false;
                        document.getElementById('file-input-item2').disabled = true;

                        document.getElementById('img_item').value = '';
                        document.getElementById('img_item2').value = '-';

                        document.getElementById('img_ktp2').style.opacity = 1;
                        document.getElementById('img_passport2').style.opacity = 0.5;
                    }
                });
















            });
        </script>
    </head>
    <body>
        <div id="loader" class="lds-dual-ring hidden overlay1"></div>
        <img src="image/labkar.png" height="150px" style="margin-top: -10px">
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form id="form_add_pasien_mandiri">
                    <div id="myModal_add_pasien" class="modal">
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <div id="push_text_add_pasien"></div>
                        </div>
                    </div>
                    <h1>Reservation</h1>
                    <!--Laboratory-->
                    <select id="lab"></select>
                    <!--Sampling Location-->
                    <select id="sampling"></select>
                    <input type="text" placeholder="Date" id="date" onfocus="(this.type = 'date')" onblur="(this.type = 'text')">
                    <!--Hour-->
                    <select id="hour">
                        <option value="" selected disabled>Hour</option>
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
                    <!--Test Method-->
                    <select id="metode"></select>
                    <!--Detail Service-->
                    <select id="detail"></select>
                    <select id="country"></select>
                    <input type="text" placeholder="Identity Number" id="id_number"/>
                    <input type="text" placeholder="Passport Number" id="passport"/>
                    <input type="text" placeholder="Full Name" id="name"/>
                    <select id="gender">
                        <option value="" disabled selected>Gender</option>
                        <option value="laki-laki">male/laki-laki</option>
                        <option value="perempuan">female/perempuan</option>
                    </select>
                    <input type="text" id="birthdate" placeholder="Birthdate" onfocus="(this.type = 'date')" onblur="(this.type = 'text')"/>
                    <textarea placeholder="Address" id="address" style="height: 50px; display: inline-table"></textarea>
                    <input type="email" placeholder="Email" id="email"/>
                    <input type="tel" placeholder="Phone" id="phone"/>
                    <!--Check purpose-->
                    <select id="tujuan"></select>
                    <select id="tipem"></select>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="#">
                    <h1>Karunia Lab</h1>
                    <h6 style="margin: 0px; font-weight: 600">clinical laboratory</h6>
                    <img src="image/lab_mandiri.jpg" style="width: -webkit-fill-available; height: 300px; border-radius: 3px; margin-top: 30px;">
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h4>Upload Your Image</h4>
                        <!--<button class="ghost" id="signIn">Back</button>-->
                        <div id="box1_add_pasien">
                            <label style="margin: 0px 0px 0px 10px;
                                   font-size: 10px;
                                   font-weight: 100;
                                   float: left;">ktp/identity image</label>
                            <img id="img_ktp2" src="image/upload_icon.jpeg">
                            <input id="file-input-item" name="file1" type="file" onchange="readURLItem(this)" style="display: none"/>
                            <input type="text" readonly name="img_item" id="img_item" hidden=""/>
                            <script>
                                function readURLItem(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function (e) {

                                            var layar = window.screen.availWidth;
                                            if (layar < 400) {
                                                $('#img_ktp2')
                                                        .attr('src', e.target.result)
                                                        .width(190)
                                                        .height(200);
                                            } else if (layar > 400) {
                                                $('#img_ktp2')
                                                        .attr('src', e.target.result)
                                                //                                            .width(215)
                                                //                                            .height(200);
                                            }
                                        };
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }

                                if (window.File && window.FileReader && window.FileList && window.Blob) {
                                    document.getElementById('file-input-item').addEventListener('change', handleFileSelectItem, false);
                                } else {
                                    alert('The File APIs are not fully supported in this browser.');
                                }
                                function handleFileSelectItem(evt) {
                                    var f = evt.target.files[0]; // FileList object
                                    var reader = new FileReader();
                                    // Closure to capture the file information.
                                    reader.onload = (function (theFile) {
                                        return function (e) {
                                            var binaryData = e.target.result;
                                            //Converting Binary Data to base 64
                                            var base64String = window.btoa(binaryData);
                                            //showing file converted to base64
                                            document.getElementById('img_item').value = base64String;
                                        };
                                    })(f);
                                    reader.readAsBinaryString(f);
                                }
                            </script>
                            <label style="margin: 0px 0px 0px 10px;
                                   font-size: 10px;
                                   font-weight: 100;
                                   float: left;">passport image</label>                
                            <img id="img_passport2" src="image/upload_icon.jpeg">
                            <input id="file-input-item2" name="file2" type="file" onchange="readURLItem2(this)" style="display: none"/>
                            <input type="text" readonly name="img_item2" id="img_item2" hidden=""/>
                            <script>
                                function readURLItem2(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function (e) {

                                            var layar = window.screen.availWidth;
                                            if (layar < 400) {
                                                $('#img_passport2')
                                                        .attr('src', e.target.result)
                                                        .width(190)
                                                        .height(200);
                                            } else if (layar > 400) {
                                                $('#img_passport2')
                                                        .attr('src', e.target.result)
                                                //                                            .width(215)
                                                //                                            .height(200);
                                            }
                                        };
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }

                                if (window.File && window.FileReader && window.FileList && window.Blob) {
                                    document.getElementById('file-input-item2').addEventListener('change', handleFileSelectItem2, false);
                                } else {
                                    alert('The File APIs are not fully supported in this browser.');
                                }
                                function handleFileSelectItem2(evt) {
                                    var f = evt.target.files[0]; // FileList object
                                    var reader = new FileReader();
                                    // Closure to capture the file information.
                                    reader.onload = (function (theFile) {
                                        return function (e) {
                                            var binaryData = e.target.result;
                                            //Converting Binary Data to base 64
                                            var base64String = window.btoa(binaryData);
                                            //showing file converted to base64
                                            document.getElementById('img_item2').value = base64String;
                                        };
                                    })(f);
                                    reader.readAsBinaryString(f);
                                }
                            </script>

                            <label style="margin: 0px 0px 0px 10px;
                                   font-size: 10px;
                                   font-weight: 100;
                                   float: left;">foto diri/self image</label>
                            <img id="img_self2" src="image/upload_icon.jpeg">

                            <input id="file-input-item3" name="file3" type="file" onchange="readURLItem3(this)" style="display: none"/>
                            <input type="text" readonly name="img_item3" id="img_item3" hidden=""/>
                            <script>
                                function readURLItem3(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function (e) {

                                            var layar = window.screen.availWidth;
                                            if (layar < 400) {
                                                $('#img_self2')
                                                        .attr('src', e.target.result)
                                                        .width(190)
                                                        .height(200);
                                            } else if (layar > 400) {
                                                $('#img_self2')
                                                        .attr('src', e.target.result)
                                                //                                            .width(215)
                                                //                                            .height(200);
                                            }
                                        };
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }

                                if (window.File && window.FileReader && window.FileList && window.Blob) {
                                    document.getElementById('file-input-item3').addEventListener('change', handleFileSelectItem3, false);
                                } else {
                                    alert('The File APIs are not fully supported in this browser.');
                                }
                                function handleFileSelectItem3(evt) {
                                    var f = evt.target.files[0]; // FileList object
                                    var reader = new FileReader();
                                    // Closure to capture the file information.
                                    reader.onload = (function (theFile) {
                                        return function (e) {
                                            var binaryData = e.target.result;
                                            //Converting Binary Data to base 64
                                            var base64String = window.btoa(binaryData);
                                            //showing file converted to base64
                                            document.getElementById('img_item3').value = base64String;
                                        };
                                    })(f);
                                    reader.readAsBinaryString(f);
                                }
                            </script>
                        </div>
                        <button style="margin-top: 7px;" onclick="sub_reg_man_pasien()">Submit</button>

                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Confirming your health status before traveling is one of the most important steps during this pandemic</p>
                        <p>Enter your personal details to reservation</p>
                        <button class="ghost" id="signUp">Reservation</button>
                    </div>
                </div>
            </div>
        </div>

        <footer class="main-footer" id="footer_edit_po">
            Copyright &copy; 2022 MOBATech
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 1.0.0
            </div>
        </footer>
    </body>
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });

//        signInButton.addEventListener('click', () => {
//            container.classList.remove("right-panel-active");
//        });


        function sub_reg_man_pasien() {

            var lab = document.getElementById("lab").value;
            var sampling = document.getElementById("sampling").value;
            var date = document.getElementById("date").value;
            var hour = document.getElementById('hour').value;
            var metode = document.getElementById("metode").value;
            var detail = document.getElementById("detail").value;
            var country = document.getElementById("country").value;
            var id_number = document.getElementById('id_number').value;
            var passport = document.getElementById("passport").value;
            var name = document.getElementById("name").value;
            var gender = document.getElementById('gender').value;
            var birthdate = document.getElementById("birthdate").value;
            var address = document.getElementById("address").value;
            var email = document.getElementById('email').value;
            var phone = document.getElementById("phone").value;
            var tujuan = document.getElementById("tujuan").value;
            var tipem = document.getElementById("tipem").value;
            var idcard_img64 = document.getElementById("img_item").value;
            var passport_img64 = document.getElementById("img_item2").value;
            var self_img64 = document.getElementById("img_item3").value;

            var modal = document.getElementById("myModal_add_pasien");
            var span = document.getElementsByClassName("close")[0];
            var push = document.getElementById("push_text_add_pasien");
            ;
            if (lab == "") {
                push.innerHTML = "<p>laboratory must must be choose</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (lab != "") {
                if (sampling == "") {
                    push.innerHTML = "<p>sampling location must be choose</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (sampling != "") {
                    if (date == "") {
                        push.innerHTML = "<p>date must be choose</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (date != "") {
                        if (hour == "") {
                            push.innerHTML = "<p>hour must be choose</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (hour != "") {
                            if (metode == "") {
                                push.innerHTML = "<p>Test Method must be choose</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (metode != "") {
                                if (detail == "") {
                                    push.innerHTML = "<p>Detail Service must be choose</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (detail != "") {
                                    if (country == "") {
                                        push.innerHTML = "<p>Country must be choose</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (country != "") {
                                        if (id_number == "") {
                                            push.innerHTML = "<p>identity number must be fill</p>";
                                            modal.style.display = "block";
                                            span.onclick = function () {
                                                modal.style.display = "none";
                                            }
                                            window.onclick = function (event) {
                                                if (event.target == modal) {
                                                    modal.style.display = "none";
                                                }
                                            }
                                        } else if (id_number != "") {
                                            if (passport == "") {
                                                push.innerHTML = "<p>passport number must be fill</p>";
                                                modal.style.display = "block";
                                                span.onclick = function () {
                                                    modal.style.display = "none";
                                                }
                                                window.onclick = function (event) {
                                                    if (event.target == modal) {
                                                        modal.style.display = "none";
                                                    }
                                                }
                                            } else if (passport != "") {
                                                if (name == "") {
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
                                                } else if (name != "") {
                                                    if (gender == "") {
                                                        push.innerHTML = "<p>gender must be choose</p>";
                                                        modal.style.display = "block";
                                                        span.onclick = function () {
                                                            modal.style.display = "none";
                                                        }
                                                        window.onclick = function (event) {
                                                            if (event.target == modal) {
                                                                modal.style.display = "none";
                                                            }
                                                        }
                                                    } else if (gender != "") {
                                                        if (birthdate == "") {
                                                            push.innerHTML = "<p>birthdate must be choose</p>";
                                                            modal.style.display = "block";
                                                            span.onclick = function () {
                                                                modal.style.display = "none";
                                                            }
                                                            window.onclick = function (event) {
                                                                if (event.target == modal) {
                                                                    modal.style.display = "none";
                                                                }
                                                            }
                                                        } else if (birthdate != "") {
                                                            if (address == "") {
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
                                                            } else if (address != "") {
                                                                if (email == "") {
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
                                                                } else if (email != "") {
                                                                    if (phone == "") {
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
                                                                    } else if (phone != "") {
                                                                        if (tujuan == "") {
                                                                            push.innerHTML = "<p>check purpose must be choose</p>";
                                                                            modal.style.display = "block";
                                                                            span.onclick = function () {
                                                                                modal.style.display = "none";
                                                                            }
                                                                            window.onclick = function (event) {
                                                                                if (event.target == modal) {
                                                                                    modal.style.display = "none";
                                                                                }
                                                                            }
                                                                        } else if (tujuan != "") {
                                                                            if (tipem == "") {
                                                                                push.innerHTML = "<p>payment type must be choose</p>";
                                                                                modal.style.display = "block";
                                                                                span.onclick = function () {
                                                                                    modal.style.display = "none";
                                                                                }
                                                                                window.onclick = function (event) {
                                                                                    if (event.target == modal) {
                                                                                        modal.style.display = "none";
                                                                                    }
                                                                                }
                                                                            } else if (tipem != "") {
                                                                                if (idcard_img64 == "") {
                                                                                    push.innerHTML = "<p>identity image must be fill</p>";
                                                                                    modal.style.display = "block";
                                                                                    span.onclick = function () {
                                                                                        modal.style.display = "none";
                                                                                    }
                                                                                    window.onclick = function (event) {
                                                                                        if (event.target == modal) {
                                                                                            modal.style.display = "none";
                                                                                        }
                                                                                    }
                                                                                } else if (idcard_img64 != "") {
                                                                                    if (passport_img64 == "") {
                                                                                        push.innerHTML = "<p>passport image must be fill</p>";
                                                                                        modal.style.display = "block";
                                                                                        span.onclick = function () {
                                                                                            modal.style.display = "none";
                                                                                        }
                                                                                        window.onclick = function (event) {
                                                                                            if (event.target == modal) {
                                                                                                modal.style.display = "none";
                                                                                            }
                                                                                        }
                                                                                    } else if (passport_img64 != "") {
                                                                                        if (self_img64 == "") {
                                                                                            push.innerHTML = "<p>self image must be fill</p>";
                                                                                            modal.style.display = "block";
                                                                                            span.onclick = function () {
                                                                                                modal.style.display = "none";
                                                                                            }
                                                                                            window.onclick = function (event) {
                                                                                                if (event.target == modal) {
                                                                                                    modal.style.display = "none";
                                                                                                }
                                                                                            }
                                                                                        } else if (self_img64 != "") {

                                                                                            var datjson2 = new Object();
                                                                                            datjson2.procCode = "300021";
                                                                                            if (country !== 'Indonesia') {
                                                                                                datjson2.idcard_number = passport;
                                                                                            } else {
                                                                                                datjson2.idcard_number = id_number;
                                                                                            }
                                                                                            datjson2.passport_number = passport;
                                                                                            datjson2.name = name;
                                                                                            datjson2.gender = gender;
                                                                                            datjson2.birth_date = birthdate;
                                                                                            datjson2.citizenship = country;
                                                                                            datjson2.address = address;
                                                                                            datjson2.email = email;
                                                                                            datjson2.phonenumber = phone;
                                                                                            datjson2.idcard_img64 = idcard_img64;
                                                                                            datjson2.passport_img64 = passport_img64;
                                                                                            datjson2.self_img64 = self_img64;
                                                                                            datjson2.ins_code = sampling;
                                                                                            datjson2.tc_code = tujuan;
                                                                                            datjson2.jp_code = metode;
                                                                                            datjson2.djp_code = detail;
                                                                                            datjson2.tp_code = tipem;
                                                                                            datjson2.queue_date = date;
                                                                                            datjson2.queue_hour = hour;
                                                                                            datjson2.user_id = 'web';

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
                                                                                                        alert('success reservation : ' + id_number);
                                                                                                        $('.cd-popup-add-pasien').removeClass('is-visible');
                                                                                                        $("#form_add_pasien_mandiri")[0].reset();
                                                                                                        document.getElementById("img_ktp2").src = 'image/upload_icon.jpeg';
                                                                                                        document.getElementById("img_passport2").src = 'image/upload_icon.jpeg';
                                                                                                        document.getElementById("img_self2").src = 'image/upload_icon.jpeg';

                                                                                                        $("#img_item").value = '';
                                                                                                        $("#img_item2").value = '';
                                                                                                        $("#img_item3").value = '';

                                                                                                    } else {
                                                                                                        alert('failed reservation : ' + response.respDesc);
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
            }
        }
    </script>
</html>
