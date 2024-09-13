<%--
    Document   : pop_up_add_user
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-edit-user
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-user {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-user {
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
    .cd-popup-edit-user.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-user-container {
        position: relative;
        width: 90%;
        height: 400px;
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

    .cd-popup-edit-user-container .cd-buttons-edit-user:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-user-container .cd-buttons-edit-user li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-user-container .cd-buttons-edit-user div {
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
    .cd-popup-edit-user-container .cd-buttons-edit-user li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-user-container .cd-buttons-edit-user li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-user-container .cd-buttons-edit-user li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-user-container .cd-buttons-edit-user li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-user-container .cd-buttons-edit-user li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-user-container .cd-buttons-edit-user li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-user-container .cd-popup-edit-user-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-user-container .cd-popup-edit-user-close::before, .cd-popup-edit-user-container .cd-popup-edit-user-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-user-container .cd-popup-edit-user-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-user-container .cd-popup-edit-user-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-user-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-user-container {
            margin: 8em auto;
        }
    }
    #label_edit_user {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_user{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_user {
        width: 350px;
        height: 200px;
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
    #buttonon-edit-user {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn-delete-edit-user {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_edit_submit_user {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn-delete-edit-user:hover {
        background-color: #CCC;
    }
    #btn_edit_submit_user:hover {
        background-color: #CCC;
    }

    /* The Close Button */
    .close_edit_user {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_user:hover,
    .close_edit_user:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<script>
    jQuery(document).ready(function ($) {
        //open popup provide password

        $('#table_user').on('click', 'td', function () {

            var row = $(this).closest("tr");    // Find the row
            var user_id = $('#table_user').DataTable().row(row).data().user_id;
            var name = $('#table_user').DataTable().row(row).data().name;
            var email = $('#table_user').DataTable().row(row).data().email;
            var userlevel = $('#table_user').DataTable().row(row).data().userlevel;
            var status = $('#table_user').DataTable().row(row).data().status;

            document.getElementById("user_id_edit_user").value = user_id;
            document.getElementById("nama_edit_user").value = name;
            document.getElementById("email_edit_user").value = email;
            document.getElementById("userlevel_edit_user").value = userlevel;

            if (status == '1') {
                document.getElementById("edit_user_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_status" checked=""><div class="slider round"></div></label>';
            } else if (status == '0') {
                document.getElementById("edit_user_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_status"><div class="slider round"></div></label>';
            }

            $('.cd-popup-edit-user').addClass('is-visible');
        });


        //close popup provide password
        $('.cd-popup-edit-user').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-user-close') || $(event.target).is('.cd-popup-edit-user')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_user")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-user').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-edit-user" role="alert">
    <div class="cd-popup-edit-user-container" style="color: #29B19C;">
        <label id="label_edit_user">Edit User</label>
        <div id="boxx_edit_user">
            <div id="box2_edit_user">
                <div id="input_edit_user">
                    <form id="form_edit_user">
                        <div id="myModal_edit_user" class="modal">
                            <div class="modal-content">
                                <span class="close_edit_user">&times;</span>
                                <div id="push_text_edit_user"></div>
                            </div>
                        </div>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">User ID</label><input type="text" id="user_id_edit_user" required="" placeholder="User ID" readonly="" disabled="">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">Nama</label><input type="text" id="nama_edit_user" required="" placeholder="Nama">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">Email</label><input type="email" id="email_edit_user" required="" placeholder="Email">
                        <label style="margin-bottom: -5px; font-size: 10px; float: left; font-weight: 100">Role</label>
                        <select id="userlevel_edit_user">
                            <option selected disabled value="">Select Role</option>
                            <option value="1">administrator</option>
                            <option value="2">operasional</option>
                            <option value="3">analis</option>
                            <option value="4">nakes</option>
                            <option value="5">cs</option>
                            <option value="6">institusi</option>
                            <option value="7">sales</option>
                            <option value="8">view</option>
                        </select>
                        <div style="display: inline-flex; margin-top: 10px;">
                            <div id="edit_user_status" style="margin-left: 20px"></div>status
                        </div>
                    </form>
                    <div id="buttonon-edit-user">
                        <div id="btn-delete-edit-user" onclick="sub_del_user()">Delete</div>
                        <div id="btn_edit_submit_user" onclick="sub_edt_user()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-user-close img-replace-edit-user">Close</a>
    </div>
</div>
<script>
    function sub_edt_user() {
        var user_id_edit_user = document.getElementById("user_id_edit_user").value;
        var nama_edit_user = document.getElementById("nama_edit_user").value;
        var email_edit_user = document.getElementById("email_edit_user").value;
        var userlevel_edit_user = document.getElementById("userlevel_edit_user").value;
        var status = document.getElementById("change_status").checked;

        var modal = document.getElementById("myModal_edit_user");
        var span = document.getElementsByClassName("close_edit_user")[0];
        var push = document.getElementById("push_text_edit_user");
        ;
        if (user_id_edit_user == "") {
            push.innerHTML = "<p>User id must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (user_id_edit_user != "") {
            if (nama_edit_user == "") {
                push.innerHTML = "<p>Name must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (nama_edit_user != "") {
                if (email_edit_user == "") {
                    push.innerHTML = "<p>Email must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (email_edit_user != "") {
                    if (userlevel_edit_user == "") {
                        push.innerHTML = "<p>userlevel must be choose</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (userlevel_edit_user != "") {
                        var datjson = new Object();
                        datjson.procCode = '500001';
                        datjson.user_id = window.localStorage.getItem('lab_user_id');
                        datjson.user_id_get = user_id_edit_user;
                        datjson.name = nama_edit_user;
                        datjson.email = email_edit_user;
                        datjson.userlevel = userlevel_edit_user;
                        var edit_status = "0";
                        if (status) {
                            edit_status = "1";
                        }
                        datjson.status = edit_status;

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
                                    destroyUser();
                                    getListUser();
                                    alert('success update user');
                                    $('.cd-popup-edit-user').removeClass('is-visible');
                                    $("#form_edit_user")[0].reset();
                                } else {
                                    alert('Failed update user : ' + response.respDesc);
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

    function sub_del_user() {
        var user_id_edit_user = document.getElementById("user_id_edit_user").value;
        var modal = document.getElementById("myModal_edit_user");
        var span = document.getElementsByClassName("close_edit_user")[0];
        var push = document.getElementById("push_text_edit_user");

        if (user_id_edit_user == "") {
            push.innerHTML = "<p>user id must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (user_id_edit_user != "") {
            var datjson3 = new Object();
            datjson3.procCode = "600001";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.user_id_get = user_id_edit_user;
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
                        destroyUser();
                        getListUser();
                        alert('Success Delete User');
                        $('.cd-popup-edit-user').removeClass('is-visible');
                        $("#form_edit_user")[0].reset();
                    } else {
                        alert('failed delete user :  ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
    }
</script>