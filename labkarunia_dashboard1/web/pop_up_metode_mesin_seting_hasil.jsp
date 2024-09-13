<%-- 
    Document   : pop_up_add_metode_mesin_setting_hasil
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-metode_mesin_setting_hasil
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-metode_mesin_setting_hasil {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-metode_mesin_setting_hasil {
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
    .cd-popup-metode_mesin_setting_hasil.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-metode_mesin_setting_hasil-container {
        position: relative;
        width: 90%;
        height: 600px;
        max-width: 400px;
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

    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil div {
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
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-metode_mesin_setting_hasil-container .cd-buttons-metode_mesin_setting_hasil li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-popup-metode_mesin_setting_hasil-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-popup-metode_mesin_setting_hasil-close::before, .cd-popup-metode_mesin_setting_hasil-container .cd-popup-metode_mesin_setting_hasil-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-popup-metode_mesin_setting_hasil-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-metode_mesin_setting_hasil-container .cd-popup-metode_mesin_setting_hasil-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-metode_mesin_setting_hasil-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-metode_mesin_setting_hasil-container {
            margin: 5em auto;
        }
    }
    /*    #label-metode_mesin_setting_hasil {
            width: 100%;
            margin: 20px;
            text-align: left;
        }*/
    #boxx-metode_mesin_setting_hasil{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-metode_mesin_setting_hasil {
        cursor: pointer;
        width: 215px;
        height: 600px;
        margin-right: 5px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
    }
    #box2-metode_mesin_setting_hasil {
        width: -webkit-fill-available;
        margin: 20px;
        /*height: 600px;*/
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }
    .input_a {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 5px;
    }

    #buttonon {
        justify-content: center;
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


    /*--------------------------------------------------------------------------*/



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

        #box1-metode_mesin_setting_hasil {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-metode_mesin_setting_hasil {
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
        //open popup add category
//        $('#table_settinghasil').on('click', '#set_hasil_btn', function () {
//            var row = $(this).closest("tr");
//            var book_code = $('#table_settinghasil').DataTable().row(row).data().book_code;
//            var name = $('#table_settinghasil').DataTable().row(row).data().name;
//            document.getElementById("set_hasil_book_code").value = book_code;
//            document.getElementById("set_hasil_name").value = name;
//
//            $('.cd-popup-metode_mesin_setting_hasil').addClass('is-visible');
//        });
        //close popup add category
        $('.cd-popup-metode_mesin_setting_hasil').on('click', function (event) {
            if ($(event.target).is('.cd-popup-metode_mesin_setting_hasil-close') || $(event.target).is('.cd-popup-metode_mesin_setting_hasil') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#metode_mesin_seting_hasil")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-metode_mesin_setting_hasil').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-metode_mesin_setting_hasil" role="alert">
    <div class="cd-popup-metode_mesin_setting_hasil-container">
        <label id="label-metode_mesin_setting_hasil">Set Hasil</label>
        <div id="boxx-metode_mesin_setting_hasil">

            <div id="box2-metode_mesin_setting_hasil">
                <form id="metode_mesin_seting_hasil">
                    <div id="myModal_setting_hasil" class="modal">
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <div id="push_text_setting_hasil"></div>
                        </div>
                    </div>

                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">Book code</label><textarea id="set_hasil_book_code" required="" placeholder="book code" readonly="" disabled="" class="input_a" style="height: 80px"></textarea>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">Name</label><textarea id="set_hasil_name" required="" placeholder="name" readonly="" class="input_a" style="height: 80px" disabled=""></textarea>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">hasil final</label>
                    <select id="set_hasil_hasil" style="
                            background-color: aquamarine; 
                            padding-left: 10px;
                            border: 1px solid #CCC; 
                            border-radius: 3px;
                            width: 100%;
                            margin-bottom: 5px;">
                        <option value="" disabled="" selected="">Select Result</option>
                        <option value="POSITIVE">positive</option>
                        <option value="NEGATIVE">negative</option>
                    </select>
                    <label id="lbl_a" style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600; display: none">ORF1Ab</label><input type="number" id="set_hasil_orflab" required="" placeholder="ORF1Ab" disabled="" value="0" class="input_a hd" style="display: none">
                    <label id="lbl_b" style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600; display: none">E gene</label><input type="number" id="set_hasil_egene" required="" placeholder="E gene" disabled="" value="0" class="input_a" style="display: none">
                    <label id="lbl_c" style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600; display: none">N gene</label><input type="number" id="set_hasil_ngene" required="" placeholder="N gene" disabled="" value="0" class="input_a" style="display: none">
                    <label id="lbl_d" style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600; display: none">CT5</label><input type="number" id="set_hasil_ct5" required="" placeholder="CT5" disabled="" value="0" class="input_a" style="display: none">
                    <label id="lbl_e" style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600; display: none">CY5</label><input type="number" id="set_hasil_cy5" required="" placeholder="CY5" disabled="" value="0" class="input_a" style="display: none">

                </form>
                <div id="buttonon">
                    <div id="btn_cancel">Cancel</div>
                    <div id="btn_save">Save</div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-metode_mesin_setting_hasil-close img-replace-metode_mesin_setting_hasil">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {

        $('#set_hasil_hasil').on('change', function (e) {
            var valueSelected = this.value;
            if (valueSelected == 'POSITIVE') {
                document.getElementById('set_hasil_orflab').disabled = false;
                document.getElementById('set_hasil_egene').disabled = false;
                document.getElementById('set_hasil_ngene').disabled = false;
                document.getElementById('set_hasil_ct5').disabled = false;
                document.getElementById('set_hasil_cy5').disabled = false;
                
                document.getElementById('set_hasil_orflab').value = '';
                document.getElementById('set_hasil_egene').value = '';
                document.getElementById('set_hasil_ngene').value = '';
                document.getElementById('set_hasil_ct5').value = '';
                document.getElementById('set_hasil_cy5').value = '';

                document.getElementById('lbl_a').style.display = 'block';
                document.getElementById('lbl_b').style.display = 'block';
                document.getElementById('lbl_c').style.display = 'block';
                document.getElementById('lbl_d').style.display = 'block';
                document.getElementById('lbl_e').style.display = 'block';
                
                document.getElementById('set_hasil_orflab').style.display = 'block';
                document.getElementById('set_hasil_egene').style.display = 'block';
                document.getElementById('set_hasil_ngene').style.display = 'block';
                document.getElementById('set_hasil_ct5').style.display = 'block';
                document.getElementById('set_hasil_cy5').style.display = 'block';
            } else if (valueSelected == 'NEGATIVE') {
                document.getElementById('lbl_a').style.display = 'none';
                document.getElementById('lbl_b').style.display = 'none';
                document.getElementById('lbl_c').style.display = 'none';
                document.getElementById('lbl_d').style.display = 'none';
                document.getElementById('lbl_e').style.display = 'none';
                
                document.getElementById('set_hasil_orflab').style.display = 'none';
                document.getElementById('set_hasil_egene').style.display = 'none';
                document.getElementById('set_hasil_ngene').style.display = 'none';
                document.getElementById('set_hasil_ct5').style.display = 'none';
                document.getElementById('set_hasil_cy5').style.display = 'none';

                document.getElementById('set_hasil_orflab').value = '0.0000';
                document.getElementById('set_hasil_egene').value = '0.0000';
                document.getElementById('set_hasil_ngene').value = '0.0000';
                document.getElementById('set_hasil_ct5').value = '0.0000';
                document.getElementById('set_hasil_cy5').value = '0.0000';
                document.getElementById('set_hasil_orflab').disabled = true;
                document.getElementById('set_hasil_egene').disabled = true;
                document.getElementById('set_hasil_ngene').disabled = true;
                document.getElementById('set_hasil_ct5').disabled = true;
                document.getElementById('set_hasil_cy5').disabled = true;
            }
        });

        $('#btn_save').on('click', function () {
            var barometer = document.getElementById('set_hasil_book_code').value;
            if (barometer.includes(',')) {
                var objnya = {};
                var arr = [];

                var today = new Date();
                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                var dateTime = date + ' ' + time;

                var wow = barometer.split(',');
                for (let i = 0; i < wow.length; i++) {
                    objnya.book_code = wow[i];

                    objnya.result_mesin = 'NEGATIVE';
                    objnya.orf1ab = '0.0000';
                    objnya.ngene = '0.0000';
                    objnya.egene = '0.0000';
                    objnya.cy5 = '0.0000';
                    objnya.ct5 = '0.0000';
                    objnya.result_date = dateTime;
                    arr.push({...objnya});
                }

                var datjson = new Object();
                datjson.procCode = "500030";
                datjson.user_id = window.localStorage.getItem('lab_user_id');
                datjson.list = arr;



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
                            destroysettinghasil();
                            getListsettinghasil();
                            alert('Success Save Result Metode Mesin');
                            $('.cd-popup-metode_mesin_setting_hasil').removeClass('is-visible');
                        } else {
                            alert('Failed Save Result Metode Mesin : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });




            } else {
                var set_hasil_book_code = document.getElementById('set_hasil_book_code').value;
                var set_hasil_orflab = document.getElementById('set_hasil_orflab').value;
                var set_hasil_egene = document.getElementById('set_hasil_egene').value;
                var set_hasil_ngene = document.getElementById('set_hasil_ngene').value;
                var set_hasil_ct5 = document.getElementById('set_hasil_ct5').value;
                var set_hasil_cy5 = document.getElementById('set_hasil_cy5').value;
                var set_hasil_hasil = document.getElementById('set_hasil_hasil').value;
                var modal = document.getElementById("myModal_setting_hasil");
                var span = document.getElementsByClassName("close")[0];
                var push = document.getElementById("push_text_setting_hasil");
                if (set_hasil_orflab == "") {
                    push.innerHTML = "<p>orflab must be Fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (set_hasil_orflab != "") {
                    if (set_hasil_egene == "") {
                        push.innerHTML = "<p>e gene must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (set_hasil_egene != "") {
                        if (set_hasil_ngene == "") {
                            push.innerHTML = "<p>n gene must be fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (set_hasil_ngene != "") {
                            if (set_hasil_ct5 == "") {
                                push.innerHTML = "<p>ct5 must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (set_hasil_ct5 != "") {
                                if (set_hasil_cy5 == "") {
                                    push.innerHTML = "<p>cy5 must be fill</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (set_hasil_cy5 != "") {
                                    if (set_hasil_hasil == "") {
                                        push.innerHTML = "<p>hasil must be fill</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (set_hasil_hasil != "") {

                                        var datjson = new Object();
                                        datjson.book_code = set_hasil_book_code;
                                        datjson.procCode = "500022";
                                        datjson.user_id = window.localStorage.getItem('lab_user_id');
                                        datjson.result_mesin = set_hasil_hasil;
                                        datjson.orf1ab = set_hasil_orflab;
                                        datjson.ngene = set_hasil_ngene;
                                        datjson.egene = set_hasil_egene;
                                        datjson.cy5 = set_hasil_cy5;
                                        datjson.ct5 = set_hasil_ct5;
                                        var today = new Date();
                                        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                                        var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                                        var dateTime = date + ' ' + time;
                                        datjson.result_date = dateTime;

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
                                                    destroysettinghasil();
                                                    getListsettinghasil();
                                                    alert('Success Save Result Metode Mesin');
                                                    $('.cd-popup-metode_mesin_setting_hasil').removeClass('is-visible');
                                                } else {
                                                    alert('Failed Save Result Metode Mesin : ' + response.respDesc);
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
        });
    });
</script>