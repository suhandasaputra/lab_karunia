<%--
    Document   : pop_up_edit_kwn
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-edit-kwn
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-kwn {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-kwn {
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
    .cd-popup-edit-kwn.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-kwn-container {
        position: relative;
        width: 90%;
        height: 500px;
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

    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn div {
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
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-kwn-container .cd-buttons-edit-kwn li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-kwn-container .cd-popup-edit-kwn-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-kwn-container .cd-popup-edit-kwn-close::before, .cd-popup-edit-kwn-container .cd-popup-edit-kwn-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-kwn-container .cd-popup-edit-kwn-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-kwn-container .cd-popup-edit-kwn-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-kwn-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-kwn-container {
            margin: 8em auto;
        }
    }
    #label_edit_kwn {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_kwn{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_kwn {
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
    #buttonon_edit_kwn {
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_delete_edit_kwn {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_edit_kwn {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_edit_kwn:hover {
        background-color: #CCC;
    }




    /* The Close Button */
    .close_edit_kwn {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_kwn:hover,
    .close_edit_kwn:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<script>
    jQuery(document).ready(function ($) {
        //open popup provide password


        $('#table_kwn').on('click', 'td', function () {

            var row = $(this).closest("tr");    // Find the row
            var kwn_code = $('#table_kwn').DataTable().row(row).data().kwn_code;
            var kwn_name = $('#table_kwn').DataTable().row(row).data().kwn_name;
            var kwn_description = $('#table_kwn').DataTable().row(row).data().kwn_description;
            var kwn_status = $('#table_kwn').DataTable().row(row).data().kwn_status;

            document.getElementById("edit_kwn_code").value = kwn_code;
            document.getElementById("edit_kwn_name").value = kwn_name;
            document.getElementById("edit_kwn_description").value = kwn_description;

            if (kwn_status == '1') {
                document.getElementById("edit_kwn_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_skwn" checked=""><div class="slider round"></div></label>';
            } else if (kwn_status == '0') {
                document.getElementById("edit_kwn_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_skwn"><div class="slider round"></div></label>';
            }
            $('.cd-popup-edit-kwn').addClass('is-visible');
        });


        //close popup provide password
        $('.cd-popup-edit-kwn').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-kwn-close') || $(event.target).is('.cd-popup-edit-kwn')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_kwn")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-kwn').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-edit-kwn" role="alert">
    <div class="cd-popup-edit-kwn-container" style="color: #29B19C;">
        <label id="label_edit_kwn">Edit Kewarganegaraan</label>
        <div id="boxx_edit_kwn">
            <!--<div id="box2_edit_kwn">-->
            <div id="input_edit_kwn">
                <form id="form_edit_kwn">
                    <div id="myModal_edit_kwn" class="modal">
                        <div class="modal-content">
                            <span class="close_edit_kwn">&times;</span>
                            <div id="push_text_edit_kwn"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">code</label><input readonly="" type="text" id="edit_kwn_code" required="" style="background-color: aqua;" disabled="">
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">name</label><input type="text" id="edit_kwn_name">
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">description</label><input type="text" id="edit_kwn_description">
                    <div style="display: inline-flex;">
                        <div id="edit_kwn_status" style="margin-left: 20px"></div>status
                    </div>
                </form>
                <div id="buttonon_edit_kwn">
                    <div id="btn_delete_edit_kwn" onclick="sub_del_lab()">Delete</div>
                    <div id="btn_submit_edit_kwn" onclick="sub_edt_lab()">Save</div>
                </div>
            </div>
            <!--</div>-->
        </div>
        <a href="#0" class="cd-popup-edit-kwn-close img-replace-edit-kwn">Close</a>
    </div>
</div>
<script>
    function sub_edt_lab() {
        var code = document.getElementById("edit_kwn_code").value;
        var name = document.getElementById("edit_kwn_name").value;
        var description = document.getElementById("edit_kwn_description").value;
        var status = document.getElementById("change_skwn").checked;


        var modal = document.getElementById("myModal_edit_kwn");
        var span = document.getElementsByClassName("close_edit_kwn")[0];
        var push = document.getElementById("push_text_edit_kwn");
        ;
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
                if (description == "") {
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
                } else if (description != "") {
                    var datjson4 = new Object();

                    datjson4.procCode = "500004";
                    datjson4.user_id = window.localStorage.getItem('lab_user_id');

                    datjson4.kwn_code = code;
                    datjson4.kwn_name = name;
                    datjson4.kwn_description = description;

                    var edit_status = "0";
                    if (status) {
                        edit_status = "1";
                    }
                    datjson4.kwn_status = edit_status;

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
                                destroyKwn();
                                getlistKwn();
                                alert('success update kewarganegaraan');
                                $('.cd-popup-edit-kwn').removeClass('is-visible');
                                $("#form_edit_kwn")[0].reset();
                            } else {
                                alert('failed update kewarganegaraan');
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

    function sub_del_lab() {
        var code = document.getElementById("edit_kwn_code").value;

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
            datjson3.procCode = "600004";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.kwn_code = code;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson3),
                type: 'post',
                success: function (response) {
                    if (response.respCode == 0000) {
                        destroyKwn();
                        getlistKwn();
                        alert('Success Delete Kewarganegaraan');
                        $('.cd-popup-edit-kwn').removeClass('is-visible');
                        $("#form_edit_kwn")[0].reset();
                    } else {
                        alert('Failed Delete Kewarganegaraan');
                    }
                }
            });
        }
    }
</script>