<%--
    Document   : pop_up_edit_institusi
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

    .img-replace-edit-institusi {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-institusi {
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
    .cd-popup-edit-institusi.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-institusi-container {
        position: relative;
        width: 90%;
        height: 710px;
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

    .cd-popup-edit-institusi-container .cd-buttons-add-institusi:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi div {
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
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-institusi-container .cd-buttons-add-institusi li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-institusi-container .cd-popup-edit-institusi-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-institusi-container .cd-popup-edit-institusi-close::before, .cd-popup-edit-institusi-container .cd-popup-edit-institusi-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-institusi-container .cd-popup-edit-institusi-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-institusi-container .cd-popup-edit-institusi-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-institusi-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-institusi-container {
            margin: 8em auto;
        }
    }
    #label_edit_institusi {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_institusi{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_institusi {
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
    #buttonon {
        color: white;
        margin-top: 10px;
        display: flex;
        justify-content: center;
    }
    #btn_delete_institusi {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_edit_submit_institusi {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_institusi:hover {
        background-color: #CCC;
    }
    #btn_edit_submit_institusi:hover {
        background-color: #CCC;
    }
    .image-upload > input {
        visibility:hidden;
        width:0;
        height:0
    }
    #panel_img {
        margin: 15px;
        height: 300px;
        width: 430px;
        background-color: white;
    }
    #blah {
        width: 430px;;
        height: 300px;
    }
    #btn_upl {
        width: 100px;
    }
    #img_filechooser_institusi {
        width: 215px;
        height: 200px;
    }

    /* The Close Button */
    .close_edit_institusi {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_institusi:hover,
    .close_edit_institusi:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }




    #lble1{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble2{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble3{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble4{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble5{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble6{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble7{font-size: 10px; float: left; font-weight: 100;color: black;}
    #lble8{font-size: 10px; float: left; font-weight: 100;color: black;}
    /*#lble5{font-size: 10px; float: left; font-weight: 100; top: -190px; position: relative; left: 220px;color: black;}*/
    #institusi_outlet_edit{width: 200px; float: left; margin-top: -10px; background-color: azure;}
    #institusi_email_edit{width: 200px; float: left; margin-top: -10px; background-color: azure;}
    #institusi_name_edit{width: 200px; float: left; margin-top: -10px;}
    #institusi_phone_edit{width: 200px; float: left; margin-top: -10px;}
    #institusi_address_edit{width: 230px; float: left; margin-top: -10px; top: -190px; position: relative; left: 220px; height: 170px;}

    @media only screen and (max-width: 400px) {
        #lble1{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble2{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble3{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble4{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble5{font-size: 10px; float: left; font-weight: 100; top: -190px; position: relative; left: 220px;color: black;}

        #institusi_outlet_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_email_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_name_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_phone_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #institusi_address_edit{width: 180px; float: left; margin-top: -10px; top: -190px; position: relative; left: 220px; height: 170px}

    }
</style>

<script>
    jQuery(document).ready(function ($) {
        $('#table_institusi').on('click', 'td', function () {

            var row = $(this).closest('tr');
            var instcode_edit = $('#table_institusi').DataTable().row(row).data().ins_code;
            var instname_edit = $('#table_institusi').DataTable().row(row).data().ins_name;
            var instlab_edit = $('#table_institusi').DataTable().row(row).data().ins_lab;
            var instpic_edit = $('#table_institusi').DataTable().row(row).data().ins_pic;
            var instemail_edit = $('#table_institusi').DataTable().row(row).data().ins_email;
            var instphone_edit = $('#table_institusi').DataTable().row(row).data().ins_phone;
            var instsales_edit = $('#table_institusi').DataTable().row(row).data().ins_sales;
            var instdesc_edit = $('#table_institusi').DataTable().row(row).data().ins_description;
            var inststatus_edit = $('#table_institusi').DataTable().row(row).data().ins_status;
            var instsend_result_to_email_edit = $('#table_institusi').DataTable().row(row).data().send_result_to_email;
            var inst_fix_email_pada_link_checkup_edit = $('#table_institusi').DataTable().row(row).data().ins_fix_email_pada_link_checkup;

            document.getElementById("instcode_edit").value = instcode_edit;
            document.getElementById("instname_edit").value = instname_edit;
//            document.getElementById("instlab_edit").value = instlab_edit;
            document.getElementById("instpic_edit").value = instpic_edit;
            document.getElementById("instemail_edit").value = instemail_edit;
            document.getElementById("instphone_edit").value = instphone_edit;
//            document.getElementById("instsales_edit").value = instsales_edit;
            document.getElementById("instdesc_edit").value = instdesc_edit;

            if (inststatus_edit == '1') {
                document.getElementById("inststatus_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_s" checked=""><div class="slider round"></div></label>';
            } else if (inststatus_edit == '0') {
                document.getElementById("inststatus_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_s"><div class="slider round"></div></label>';
            }

            if (instsend_result_to_email_edit == '1') {
                document.getElementById("instsend_result_to_email_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_srte" checked=""><div class="slider round"></div></label>';
            } else if (instsend_result_to_email_edit == '0') {
                document.getElementById("instsend_result_to_email_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_srte"><div class="slider round"></div></label>';
            }

            if (inst_fix_email_pada_link_checkup_edit == '1') {
                document.getElementById("inst_fix_email_pada_link_checkup_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_feplc" checked=""><div class="slider round"></div></label>';
            } else if (inst_fix_email_pada_link_checkup_edit == '0') {
                document.getElementById("inst_fix_email_pada_link_checkup_edit").innerHTML = '<label class="switch"><input type="checkbox" id="editinst_change_feplc"><div class="slider round"></div></label>';
            }

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
                        var options = '<option selected disabled value="' + instlab_edit + '">' + instlab_edit + '</option>';
                        for (var i = 0; i < data.length; i++) {
                            options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                        }
                        $("select#instlab_edit").html(options);
                    } else {
                        alert('gagal mengambil data lab ' + response.respCode);
                    }
                },
                complete: function () {
                        $('#loader').addClass('hidden');
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
                        var options = '<option selected disabled value="' + instsales_edit + '">' + instsales_edit + '</option>';
                        for (var i = 0; i < data.length; i++) {
                            options += '<option value="' + data[i].sales_code + '">' + data[i].sales_code + '</option>';
                        }
                        $("select#instsales_edit").html(options);
                    } else {
                        alert('gagal mengambil data sales ' + response.respCode);
                    }
                },
                complete: function () {
                        $('#loader').addClass('hidden');
                    }	
            });













            $('.cd-popup-edit-institusi').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-edit-institusi').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-institusi-close') || $(event.target).is('.cd-popup-edit-institusi')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#formedit_institusi")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-institusi').removeClass('is-visible');
            }
        });
    });</script>

<div class="cd-popup-edit-institusi" role="alert">
    <div class="cd-popup-edit-institusi-container" style="color: #29B19C;">
        <label id="label_edit_institusi">Edit Institusi</label>
        <div id="boxx_edit_institusi">
            <div id="box2_edit_institusi">
                <div id="input_edit_institusi">
                    <form id="formedit_institusi">
                        <div id="myModal_edit_institusi" class="modal">
                            <div class="modal-content">
                                <span class="close_edit_institusi">&times;</span>
                                <div id="push_text_edit_institusi"></div>
                            </div>
                        </div>
                        <label id="lble1">code</label><br>
                        <input type="text" id="instcode_edit" readonly="" name="instcode_edit" required="" placeholder="outlet" style="background-color:aqua"><br>
                        <label id="lble2">name</label><br>
                        <input type="text" id="instname_edit" name="instname_edit" required="" placeholder="Email"><br>

                        <label id="lble3">lab</label><br>
                        <select id="instlab_edit" name="instlab_edit" style="width: -webkit-fill-available">
                        </select>
                        <!--<input type="text" id="instlab_edit" name="instlab_edit" required="" placeholder="Full Name">-->
                        <br>

                        <label id="lble4">pic</label><br>
                        <input type="text" id="instpic_edit" name="instpic_edit" required="" placeholder="Phone"><br>


                        <label id="lble5">email</label><br>
                        <input type="text" id="instemail_edit" name="instemail_edit" required="" placeholder="outlet"><br>
                        <label id="lble6">phone</label><br>
                        <input type="text" id="instphone_edit" name="instphone_edit" required="" placeholder="Email"><br>
                        <label id="lble7">sales</label><br>
                        <select id="instsales_edit" name="instsales_edit" style="width: -webkit-fill-available">
                        </select>
                        <!--<input type="text" id="instsales_edit" name="instsales_edit" required="" placeholder="Full Name">-->
                        <br>

                        <label id="lble8">description</label><br>
                        <textarea id="instdesc_edit" name="instdesc_edit" required="" placeholder="Address"></textarea>

                        <div style="display: inline-flex;">
                            <div id="inststatus_edit"></div>status
                            <div id="instsend_result_to_email_edit" style="margin-left: 30px"></div>send email
                            <div id="inst_fix_email_pada_link_checkup_edit" style="margin-left: 30px"></div>fix email
                        </div>
                    </form>
                    <div id="buttonon">
                        <div id="btn_delete_institusi" onclick="sub_del_institusi()">Delete</div>
                        <div id="btn_edit_submit_institusi" onclick="sub_edt_institusi()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-institusi-close img-replace-edit-institusi">Close</a>
    </div>
</div>
<script>
    function sub_edt_institusi() {
        var instcode_edit = document.getElementById("instcode_edit").value;
        var instname_edit = document.getElementById("instname_edit").value;
        var instlab_edit = document.getElementById("instlab_edit").value;
        var instpic_edit = document.getElementById("instpic_edit").value;
        var instemail_edit = document.getElementById('instemail_edit').value;
        var instphone_edit = document.getElementById("instphone_edit").value;
        var instsales_edit = document.getElementById("instsales_edit").value;
        var instdesc_edit = document.getElementById("instdesc_edit").value;

        var editinst_change_s = document.getElementById("editinst_change_s").checked;
        var editinst_change_srte = document.getElementById("editinst_change_srte").checked;
        var editinst_change_feplc = document.getElementById('editinst_change_feplc').checked;

        var modal = document.getElementById("myModal_edit_institusi");
        var span = document.getElementsByClassName("close_edit_institusi")[0];
        var push = document.getElementById("push_text_edit_institusi");
        ;
        if (instcode_edit == "") {
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
        } else if (instcode_edit != "") {
            if (instname_edit == "") {
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
            } else if (instname_edit != "") {
                if (instlab_edit == "") {
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
                } else if (instlab_edit != "") {
                    if (instpic_edit == "") {
                        push.innerHTML = "<p>pic must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (instpic_edit != "") {
                        if (instemail_edit == "") {
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
                        } else if (instemail_edit != "") {
                            if (instphone_edit == "") {
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
                            } else if (instphone_edit != "") {
                                if (instsales_edit == "") {
                                    push.innerHTML = "<p>sales must be fill</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (instsales_edit != "") {
                                    if (instdesc_edit == "") {
                                        push.innerHTML = "<p>description must be fill</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (instdesc_edit != "") {
                                        var datjson4 = new Object();
                                        datjson4.procCode = "500002";
                                        datjson4.user_id = window.localStorage.getItem('lab_user_id');

                                        datjson4.ins_code = instcode_edit;
                                        datjson4.ins_name = instname_edit;
                                        datjson4.ins_lab = instlab_edit;
                                        datjson4.ins_pic = instpic_edit;
                                        datjson4.ins_email = instemail_edit;
                                        datjson4.ins_phone = instphone_edit;
                                        datjson4.ins_sales = instsales_edit;
                                        datjson4.ins_description = instdesc_edit;

                                        var sts = "0";
                                        if (editinst_change_s) {
                                            sts = "1";
                                        }
                                        datjson4.ins_status = sts;

                                        var sts1 = "0";
                                        if (editinst_change_srte) {
                                            sts1 = "1";
                                        }
                                        datjson4.send_result_to_email = sts1;

                                        var sts2 = "0";
                                        if (editinst_change_feplc) {
                                            sts2 = "1";
                                        }
                                        datjson4.ins_fix_email_pada_link_checkup = sts2;

                                        $.ajax({
                                            contentType: 'application/json',
                                            dataType: "json",
                                            url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                                            data: JSON.stringify(datjson4),
                                            type: 'post',
                                            success: function (response) {
                                                if (response.respCode == 0000) {
                                                    destroyIns();
                                                    getListIns();
                                                    alert('success update institution ' + instname_edit);
                                                    $('.cd-popup-edit-institusi').removeClass('is-visible');
                                                    $("#formedit_institusi")[0].reset();
                                                } else {
                                                    alert('failed update institution ' + instname_edit);
                                                }
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

    function sub_del_institusi() {
        var code = document.getElementById("instcode_edit").value;

        if (code == "") {
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
        } else if (code != "") {
            var datjson3 = new Object();
            datjson3.procCode = "600002";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.ins_code = code;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson3),
                type: 'post',
                success: function (response) {
                    if (response.respCode == 0000) {
                        destroyIns();
                        getListIns();
                        alert('Success Delete ' + code);
                        $('.cd-popup-edit-institusi').removeClass('is-visible');
                        $("#formedit_institusi")[0].reset();
                    } else {
                        alert('Failed Delete ' + code);
                    }
                }
            });
        }
    }
</script>