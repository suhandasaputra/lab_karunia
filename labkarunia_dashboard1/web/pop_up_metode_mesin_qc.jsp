<%-- 
    Document   : pop_up_add_metode_mesin_qc
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-metode_mesin_qc
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-metode_mesin_qc {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-metode_mesin_qc {
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
    .cd-popup-metode_mesin_qc.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-metode_mesin_qc-container {
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

    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc div {
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
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-metode_mesin_qc-container .cd-buttons-metode_mesin_qc li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-metode_mesin_qc-container .cd-popup-metode_mesin_qc-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-metode_mesin_qc-container .cd-popup-metode_mesin_qc-close::before, .cd-popup-metode_mesin_qc-container .cd-popup-metode_mesin_qc-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-metode_mesin_qc-container .cd-popup-metode_mesin_qc-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-metode_mesin_qc-container .cd-popup-metode_mesin_qc-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-metode_mesin_qc-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-metode_mesin_qc-container {
            margin: 5em auto;
        }
    }
    /*    #label-metode_mesin_qc {
            width: 100%;
            margin: 20px;
            text-align: left;
        }*/
    #boxx-metode_mesin_qc{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-metode_mesin_qc {
        cursor: pointer;
        width: 215px;
        height: 600px;
        margin-right: 5px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
    }
    #box2-metode_mesin_qc {
        width: -webkit-fill-available;
        margin: 20px;
        /*height: 600px;*/
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }


    #buttonon_qc {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }

    #btn_cancel_qc {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_qc {
        cursor: pointer;
        width: 100px;
        background-color: #39b9db;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_recheck_qc {
        cursor: pointer;
        width: 100px;
        background-color: #d3c91b;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_qc:hover {
        background-color: #CCC;
    }

    #btn_save_qc:hover {
        background-color: #CCC;
    }
    #btn_recheck_qc:hover {
        background-color: #CCC;
    }


    /*--------------------------------------------------------------------------*/



    /* The Modal (background) */
    .modal_qc {
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
    .modal_qc-content {
        margin: auto;
        display: block;
        width: 90%;
        max-width: 700px;
    }



    /* Add Animation */
    .modal_qc-content {  
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

        #box1-metode_mesin_qc {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-metode_mesin_qc {
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
//        $('#table_qchasilfinal').on('click', 'td', function () {
//            var row = $(this).closest("tr");
//            var book_code = $('#table_qchasilfinal').DataTable().row(row).data().book_code;
//            var orf1ab = $('#table_qchasilfinal').DataTable().row(row).data().orf1ab;
//            var ngene = $('#table_qchasilfinal').DataTable().row(row).data().ngene;
//            var egene = $('#table_qchasilfinal').DataTable().row(row).data().egene;
//            var cy5 = $('#table_qchasilfinal').DataTable().row(row).data().cy5;
//            var ct5 = $('#table_qchasilfinal').DataTable().row(row).data().ct5;
//            var result_mesin = $('#table_qchasilfinal').DataTable().row(row).data().result_mesin;
//
//            document.getElementById("set_qc_book_code").value = book_code;
//            document.getElementById("set_qc_orflab").value = orf1ab;
//            document.getElementById("set_qc_ngene").value = ngene;
//            document.getElementById("set_qc_egene").value = egene;
//            document.getElementById("set_qc_cy5").value = cy5;
//            document.getElementById("set_qc_ct5").value = ct5;
//            document.getElementById("set_qc_hasil").value = result_mesin;
//            $('.cd-popup-metode_mesin_qc').addClass('is-visible');
//        });
        //close popup add category
        $('.cd-popup-metode_mesin_qc').on('click', function (event) {
            if ($(event.target).is('.cd-popup-metode_mesin_qc-close') || $(event.target).is('.cd-popup-metode_mesin_qc') || $(event.target).is('#btn_cancel_qc')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_metode_mesin_qc")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-metode_mesin_qc').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-metode_mesin_qc" role="alert">
    <div class="cd-popup-metode_mesin_qc-container">
        <label id="label-metode_mesin_qc">Set Final</label>
        <div id="boxx-metode_mesin_qc">

            <div id="box2-metode_mesin_qc">
                <form id="form_metode_mesin_qc">
                    <div id="myModal_qc" class="modal_qc">
                        <div class="modal_qc-content">
                            <span class="close">&times;</span>
                            <div id="push_text_qc"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">Book code</label><textarea id="set_qc_book_code" required="" placeholder="book code" disabled="" readonly="" class="input_a" style="height: 80px"></textarea>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">Name</label><textarea id="set_qc_name" required="" placeholder="name" readonly="" class="input_a" style="height: 80px" disabled=""></textarea>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">ORF1Ab</label><input type="text" id="set_qc_orflab" required="" placeholder="ORF1Ab" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">E gene</label><input type="text" id="set_qc_egene" required="" placeholder="E gene" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">N gene</label><input type="text" id="set_qc_ngene" required="" placeholder="N gene" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">CT5</label><input type="text" id="set_qc_ct5" required="" placeholder="CT5" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">CY5</label><input type="text" id="set_qc_cy5" required="" placeholder="CY5" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 600">hasil final</label><input type="text" id="set_qc_hasil" required="" placeholder="hasil" disabled="" readonly="" class="input_a">

                    <!--                    <select id="set_qc_hasil" style="background-color: aquamarine">
                                            <option value="" disabled="" selected="">Select Result</option>
                                            <option value="POSITIVE">positive</option>
                                            <option value="NEGATIVE">negative</option>
                                        </select>-->
                </form>
                <div id="buttonon_qc">
                    <div id="btn_cancel_qc">Cancel</div>
                    <div id="btn_recheck_qc">ReCheck</div>
                    <div id="btn_save_qc">SET FINAL</div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-metode_mesin_qc-close img-replace-metode_mesin_qc">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        $('#btn_save_qc').on('click', function () {
            var barometer = document.getElementById('set_qc_book_code').value;
            if (barometer.includes(',')) {
                var objnya = {};
                var arr = [];

                var wow = barometer.split(',');
                for (let i = 0; i < wow.length; i++) {
                    objnya.book_code = wow[i];
                    arr.push({...objnya});
                }

                var datjson = new Object();
                datjson.procCode = "500032";
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
                            destroyQc();
                            getListQc();
                            alert('Success Set Final : ' + JSON.stringify(arr));
                            $('.cd-popup-metode_mesin_qc').removeClass('is-visible');

                            //send notif 2
//                            var datjson4 = new Object();
//                            datjson4.procCode = "LAB0036";
//                            datjson4.book_code = set_qc_book_code;
//
//                            $.ajax({
//                                contentType: 'application/json',
//                                dataType: "json",
//                                url: "http://103.41.204.105:8080/LABKARUNIAMOBILE/ProcessRequest",
//                                data: JSON.stringify(datjson4),
//                                type: 'post',
//                                success: function (res) {
//                                }
//                            });
                        } else {
                            alert('Failed Set Final : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });


            } else {
                var set_qc_book_code = document.getElementById('set_qc_book_code').value;
                var modal_qc = document.getElementById("myModal_qc");
                var span = document.getElementsByClassName("close")[0];
                var push = document.getElementById("push_text_qc");
                if (set_qc_book_code == "") {
                    push.innerHTML = "<p>booking code must be Fill</p>";
                    modal_qc.style.display = "block";
                    span.onclick = function () {
                        modal_qc.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal_qc) {
                            modal_qc.style.display = "none";
                        }
                    }
                } else if (set_qc_book_code != "") {

                    var datjson = new Object();
                    datjson.book_code = set_qc_book_code;
                    datjson.procCode = "500026";
                    datjson.user_id = window.localStorage.getItem('lab_user_id');

                    $.ajax({
                        contentType: 'application/json',
                        dataType: "json",
                        url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                        data: JSON.stringify(datjson),
                        type: 'post',
                        success: function (response) {
                            if (response.respCode == 0000) {
                                destroyQc();
                                getListQc();
                                alert('Success Set Final : ' + set_qc_book_code);
                                $('.cd-popup-metode_mesin_qc').removeClass('is-visible');


                                //send notif 2
                                var datjson4 = new Object();
                                datjson4.procCode = "LAB0036";
                                datjson4.book_code = set_qc_book_code;

                                $.ajax({
                                    contentType: 'application/json',
                                    dataType: "json",
                                    url: "http://www.app.mobatech.net:80/LABKARUNIAMOBILE/ProcessRequest",
                                    data: JSON.stringify(datjson4),
                                    type: 'post',
                                    success: function (res) {
                                    }
                                });


                            } else if (response.respCode == 0003) {
                                alert('Failed Set Final : ' + response.respDesc);
                                var datjson = new Object();
                                datjson.book_code = set_qc_book_code;
                                datjson.procCode = "400019";
                                datjson.user_id = window.localStorage.getItem('lab_user_id');

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
                                            document.getElementById('set_approve_book_code').value = set_qc_book_code;
                                            alert('Success send token Final : ' + response.respDesc);
                                            $('.cd-popup-metode_mesin_qc').removeClass('is-visible');

                                            $('.cd-popup-metode_mesin_approve').addClass('is-visible');
                                        } else {
                                            alert('Failed send token Final : ' + response.respDesc);
                                        }
                                    },
                                    complete: function () {
                                        $('#loader').addClass('hidden');
                                    }
                                });
                            } else {
                                alert('Failed Set Final : ' + response.respDesc);
                            }
                        }
                    });
                }
            }
        });






        $('#btn_recheck_qc').on('click', function () {
            var set_qc_book_code = document.getElementById('set_qc_book_code').value;

            var modal_qc = document.getElementById("myModal_qc");
            var span = document.getElementsByClassName("close")[0];
            var push = document.getElementById("push_text_qc");
            if (set_qc_book_code == "") {
                push.innerHTML = "<p>booking code must be Fill</p>";
                modal_qc.style.display = "block";
                span.onclick = function () {
                    modal_qc.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal_qc) {
                        modal_qc.style.display = "none";
                    }
                }
            } else if (set_qc_book_code != "") {

                var datjson = new Object();
                datjson.book_code = set_qc_book_code;
                datjson.procCode = "500025";
                datjson.user_id = window.localStorage.getItem('lab_user_id');

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
                            destroyQc();
                            getListQc();
                            alert('Success Recheck ' + set_qc_book_code + ', back to setting hasil');
                            $('.cd-popup-metode_mesin_qc').removeClass('is-visible');
                        } else {
                            alert('Failed Recheck : ' + response.respDesc);
                        }
                    },
                    complete: function () {
                        $('#loader').addClass('hidden');
                    }
                });
            }
        });
    });
</script>