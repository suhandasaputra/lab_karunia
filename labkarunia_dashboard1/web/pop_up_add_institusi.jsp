<%-- 
    Document   : pop_up_add_institusi
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-institusi
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-institusi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-institusi {
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
    .cd-popup-add-institusi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-institusi-container {
        position: relative;
        width: 90%;
        height: 700px;
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

    .cd-popup-add-institusi-container .cd-buttons-add-institusi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-institusi-container .cd-buttons-add-institusi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-institusi-container .cd-buttons-add-institusi div {
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
    .cd-popup-add-institusi-container .cd-buttons-add-institusi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-institusi-container .cd-buttons-add-institusi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-institusi-container .cd-buttons-add-institusi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-institusi-container .cd-buttons-add-institusi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-institusi-container .cd-buttons-add-institusi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-institusi-container .cd-buttons-add-institusi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-institusi-container .cd-popup-add-institusi-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-institusi-container .cd-popup-add-institusi-close::before, .cd-popup-add-institusi-container .cd-popup-add-institusi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-institusi-container .cd-popup-add-institusi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-institusi-container .cd-popup-add-institusi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-institusi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-institusi-container {
            margin: 8em auto;
        }
    }
    #label_add_institusi {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_institusi{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_institusi {
        width: 450px;
        height: 200px;
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }
    input {
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
    #buttonon_institusi {
        color: white;
        margin-top: 10px;
        display: flex;
        position: relative;
        justify-content: center;
    }
    #btn_cancel {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_institusi {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel:hover {
        background-color: #CCC;
    }
    #btn_submit_institusi:hover {
        background-color: #CCC;
    }
    

    /* The Close Button */
    .close {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }






    #lbl1{font-size: 10px; float: left; font-weight: 100}
    #lbl2{font-size: 10px; float: left; font-weight: 100}
    #lbl3{font-size: 10px; float: left; font-weight: 100}
    #lbl4{font-size: 10px; float: left; font-weight: 100}
    #lbl5{font-size: 10px; float: left; font-weight: 100; position: relative;}
    #outlet_id_add_cus{float: left; margin-top: -10px;width: -webkit-fill-available;}
    #add_inst_sales{float: left; margin-top: -10px;width: -webkit-fill-available;}
    #institusi_name{float: left; margin-top: -10px;}
    #institusi_email{float: left; margin-top: -10px}
    #institusi_phone{float: left; margin-top: -10px}
    #institusi_address{float: left; margin-top: -10px; position: relative; height: 124px; margin-bottom: 10px; }

    @media only screen and (max-width: 400px) {
        #lbl1{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl2{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl3{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl4{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl5{font-size: 10px; float: left; font-weight: 100; top: -144px; position: relative; left: 220px;}

        #outlet_id_add_cus{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_name{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_email{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_phone{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_address{width: 180px; float: left; margin-top: -10px; top: -144px; position: relative; left: 220px; height: 124px}

    }
</style>


<script>
    jQuery(document).ready(function ($) {
        var datjson2 = new Object();
        datjson2.procCode = "200005";
        datjson2.user_id = window.localStorage.getItem('lab_user_id');
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
                    var options = '<option selected disabled value="">Select Lab</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                    }
                    $("select#outlet_id_add_cus").html(options);
                } else {
                    alert('gagal mengambil data lab ' + response.respCode);
                }
            },
            complete: function () {
                        $('#loader').addClass('hidden')
                    }
        });

        var datjson3 = new Object();
        datjson3.procCode = "200010";
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
                    var options = '<option selected disabled value="">Select Sales</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].sales_code + '">' + data[i].sales_code + '</option>';
                    }
                    $("select#add_inst_sales").html(options);
                } else {
                    alert('gagal mengambil data sales ' + response.respCode);
                }
            },
            complete: function () {
                        $('#loader').addClass('hidden');
                    }
        });

        //open popup provide password
        $('#add_institusi').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-institusi').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-add-institusi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-institusi-close') || $(event.target).is('.cd-popup-add-institusi') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_institusi")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-institusi').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-add-institusi" role="alert">
    <div class="cd-popup-add-institusi-container">
        <label id="label_add_institusi">Create Institusi</label>
        <div id="boxx_add_institusi">
            <div id="box2_add_institusi">
                <div id="input_add_institusi">
                    <form id="form_add_institusi" style="height: 570px;">
                        <div id="myModal_add_institusi" class="modal">
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <div id="push_text_add_institusi"></div>
                            </div>
                        </div>
                        <label id="lbl2">code</label><br>
                        <input type="text" id="add_inst_code" name="add_inst_code" required="" placeholder="institution code"><br>
                        <label id="lbl3">name</label><br>
                        <input type="text" id="add_inst_name" name="add_inst_name" required="" placeholder="institution name"><br>
                        <label id="lbl1">lab</label><br>
                        <select id="outlet_id_add_cus" name="outlet_id_add_cus">
                        </select><br>
                        <label id="lbl4">pic</label><br>
                        <input type="text" id="add_inst_pic" name="add_inst_pic" required="" placeholder="pic"><br>
                        <label id="lbl4">email</label><br>
                        <input type="email" id="add_inst_email" name="add_inst_email" required="" placeholder="email"><br>
                        <label id="lbl4">phone</label><br>
                        <input type="number" id="add_inst_phone" name="add_inst_phone" required="" placeholder="phone"><br>
                        <label id="lbl1">sales</label><br>
                        <select id="add_inst_sales" name="add_inst_sales">
                        </select><br>
                        <label id="lbl5">description</label><br>
                        <textarea id="add_inst_description" name="add_inst_description" required="" placeholder="description"></textarea><br>
                        <label class="switch"><input type="checkbox" id="send_result_to_email" checked=""><span class="slider round"></span></label>Send result email
                        <label class="switch" style="margin-left: 20px"><input type="checkbox" id="inst_fix_email_pada_link_checkup" checked=""><span class="slider round"></span></label>Fix Email
                    </form>
                    <div id="buttonon_institusi">
                        <div id="btn_cancel">Cancel</div>
                        <div id="btn_submit_institusi" onclick="sub_institusi()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-institusi-close img-replace-add-institusi">Close</a>
    </div>
</div>
<script>
    function sub_institusi() {

        var add_inst_code = document.getElementById("add_inst_code").value;
        var add_inst_name = document.getElementById("add_inst_name").value;
        var outlet_id_add_cus = document.getElementById("outlet_id_add_cus").value;
        var add_inst_pic = document.getElementById("add_inst_pic").value;
        var add_inst_email = document.getElementById('add_inst_email').value;

        var add_inst_phone = document.getElementById("add_inst_phone").value;
        var add_inst_sales = document.getElementById("add_inst_sales").value;
        var add_inst_description = document.getElementById("add_inst_description").value;
        var send_result_to_email = document.getElementById("send_result_to_email").checked;
        var inst_fix_email_pada_link_checkup = document.getElementById('inst_fix_email_pada_link_checkup').checked;


        var modal = document.getElementById("myModal_add_institusi");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text_add_institusi");
        ;
        if (add_inst_code == "") {
            push.innerHTML = "<p>code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (add_inst_code != "") {
            if (add_inst_name == "") {
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
            } else if (add_inst_name != "") {
                if (outlet_id_add_cus == "") {
                    push.innerHTML = "<p>branch must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (outlet_id_add_cus != "") {
                    if (add_inst_pic == "") {
                        push.innerHTML = "<p>pic must be choose</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (add_inst_pic != "") {
                        if (add_inst_email == "") {
                            push.innerHTML = "<p>email must be choose</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (add_inst_email != "") {
                            if (add_inst_phone == "") {
                                push.innerHTML = "<p>phone must be choose</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (add_inst_phone != "") {
                                if (add_inst_sales == "") {
                                    push.innerHTML = "<p>sales must be choose</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (add_inst_sales != "") {
                                    if (add_inst_description == "") {
                                        push.innerHTML = "<p>description must be choose</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (add_inst_description != "") {

                                        var datjson4 = new Object();
                                        datjson4.procCode = "300002";
                                        datjson4.user_id = window.localStorage.getItem('lab_user_id');


                                        datjson4.ins_code = add_inst_code;
                                        datjson4.ins_name = add_inst_name;
                                        datjson4.ins_lab = outlet_id_add_cus;
                                        datjson4.ins_pic = add_inst_pic;
                                        datjson4.ins_email = add_inst_email;
                                        datjson4.ins_phone = add_inst_phone;
                                        datjson4.ins_sales = add_inst_sales;
                                        datjson4.ins_description = add_inst_description;
                                        datjson4.ins_status = "1";

                                        var srte = "0";
                                        if (send_result_to_email) {
                                            srte = "1";
                                        }
                                        datjson4.send_result_to_email = srte;


                                        var ifeplc = "0";
                                        if (inst_fix_email_pada_link_checkup) {
                                            ifeplc = "1";
                                        }
                                        datjson4.ins_fix_email_pada_link_checkup = ifeplc;

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
                                                    destroyIns();
                                                    getListIns();
                                                    alert('success create institusi ' + add_inst_name);
                                                    $("#form_add_institusi")[0].reset();
                                                    $('.cd-popup-add-institusi').removeClass('is-visible');
                                                } else {
                                                    alert('Failed create institusi ' + add_inst_name);
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
</script>