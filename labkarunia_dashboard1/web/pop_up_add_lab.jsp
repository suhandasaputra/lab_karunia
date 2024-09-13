<%-- 
    Document   : pop_up_add_lab
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-lab
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-lab {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-lab {
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
    .cd-popup-add-lab.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-lab-container {
        position: relative;
        width: 90%;
        height: 600px;
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

    .cd-popup-add-lab-container .cd-buttons-add-lab:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-lab-container .cd-buttons-add-lab li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-lab-container .cd-buttons-add-lab div {
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
    .cd-popup-add-lab-container .cd-buttons-add-lab li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-lab-container .cd-buttons-add-lab li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-lab-container .cd-buttons-add-lab li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-lab-container .cd-buttons-add-lab li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-lab-container .cd-buttons-add-lab li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-lab-container .cd-buttons-add-lab li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-lab-container .cd-popup-add-lab-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-lab-container .cd-popup-add-lab-close::before, .cd-popup-add-lab-container .cd-popup-add-lab-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-lab-container .cd-popup-add-lab-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-lab-container .cd-popup-add-lab-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-lab-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-lab-container {
            margin: 8em auto;
        }
    }
    #label_add_lab {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_lab{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_lab {
        width: 215px;
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
    }
    #btn_cancel {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_lab {
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
    #btn_submit_lab:hover {
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
</style>


<script>
    jQuery(document).ready(function ($) {
        if (userlevel !== 'owner') {
            $('#option_manager').remove();
        }



        //open popup provide password
        $('#add_lab').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-lab').addClass('is-visible');
        });

        //close popup provide password
        $('.cd-popup-add-lab').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-lab-close') || $(event.target).is('.cd-popup-add-lab') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_lab")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-lab').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-add-lab" role="alert">
    <div class="cd-popup-add-lab-container">
        <label id="label_add_lab">Create Lab</label>
        <div id="boxx_add_lab">
            <div id="box2_add_lab">
                <div id="input_add_lab">
                    <form id="form_add_lab">
                        <div id="myModal" class="modal">
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <div id="push_text"></div>
                            </div>
                        </div>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">code</label><input type="text" id="add_lab_code" required="" placeholder="lab code">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">name</label><input type="text" id="add_lab_name" required="" placeholder="lab name">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">address</label><input type="text" id="add_lab_address" required="" placeholder="lab address">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">doctor</label><input type="text" id="add_lab_doctor" required="" placeholder="doctor in charge">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">manager</label><input type="text" id="add_lab_manager" required="" placeholder="lab manager">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">description</label><textarea id="add_lab_desc" placeholder="description"></textarea>
                    </form>
                    <div id="buttonon">
                        <div id="btn_cancel">Cancel</div>
                        <div id="btn_submit_lab" onclick="sub_out()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-lab-close img-replace-add-lab">Close</a>
    </div>
</div>
<script>
    function sub_out() {
        var add_lab_code = document.getElementById("add_lab_code").value;
        var add_lab_name = document.getElementById("add_lab_name").value;
        var add_lab_address = document.getElementById("add_lab_address").value;
        var add_lab_doctor = document.getElementById("add_lab_doctor").value;
        var add_lab_manager = document.getElementById("add_lab_manager").value;
        var add_lab_desc = document.getElementById("add_lab_desc").value;
        var user_id = window.localStorage.getItem('lab_user_id');

        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text");
        ;
        if (add_lab_code == "") {
            push.innerHTML = "<p>lab code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (add_lab_code != "") {
            if (add_lab_name == "") {
                push.innerHTML = "<p>lab name must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (add_lab_name != "") {
                if (add_lab_address == "") {
                    push.innerHTML = "<p>lab address must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (add_lab_address != "") {
                    if (add_lab_doctor == "") {
                        push.innerHTML = "<p>doctor must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (add_lab_doctor != "") {
                        if (add_lab_manager == "") {
                            push.innerHTML = "<p>manager must be fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (add_lab_manager != "") {
                            if (add_lab_desc == "") {
                                push.innerHTML = "<p>manager must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (add_lab_desc != "") {
                                var datjson2 = new Object();

                                datjson2.procCode = "300005";
                                datjson2.outlet_id = add_lab_code;
                                datjson2.outlet_name = add_lab_name;
                                datjson2.alamat = add_lab_address;
                                datjson2.doctor = add_lab_doctor;
                                datjson2.manager = add_lab_manager;
                                datjson2.description = add_lab_desc;
                                datjson2.outlet_status = "1";
                                datjson2.user_id = user_id;
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
                                            destroyLab();
                                            getListLab();
                                            alert('success add lab');
                                            $('.cd-popup-add-lab').removeClass('is-visible');
                                            $("#form_add_lab")[0].reset();
                                        } else {
                                            alert('failed create lab');
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
</script>