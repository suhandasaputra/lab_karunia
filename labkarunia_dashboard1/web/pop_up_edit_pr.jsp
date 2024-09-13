<%--
    Document   : pop_up_edit_pr
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-edit-pr
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-pr {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-pr {
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
    .cd-popup-edit-pr.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-pr-container {
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

    .cd-popup-edit-pr-container .cd-buttons-edit-pr:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-pr-container .cd-buttons-edit-pr li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-pr-container .cd-buttons-edit-pr div {
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
    .cd-popup-edit-pr-container .cd-buttons-edit-pr li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-pr-container .cd-buttons-edit-pr li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-pr-container .cd-buttons-edit-pr li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-pr-container .cd-buttons-edit-pr li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-pr-container .cd-buttons-edit-pr li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-pr-container .cd-buttons-edit-pr li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-pr-container .cd-popup-edit-pr-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-pr-container .cd-popup-edit-pr-close::before, .cd-popup-edit-pr-container .cd-popup-edit-pr-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-pr-container .cd-popup-edit-pr-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-pr-container .cd-popup-edit-pr-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-pr-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-pr-container {
            margin: 8em auto;
        }
    }
    #label_edit_pr {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_pr{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_pr {
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
    #buttonon_edit_pr {
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_delete_edit_pr {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_edit_pr {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_edit_pr:hover {
        background-color: #CCC;
    }
    #btn_submit_edit_pr:hover {
        background-color: #CCC;
    }



    /* The Close Button */
    .close_edit_pr {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_pr:hover,
    .close_edit_pr:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<script>
    jQuery(document).ready(function ($) {
        //open popup provide password
//select jasa pelayanan
        var datjson4 = new Object();
        datjson4.procCode = "200003";
        datjson4.user_id = window.localStorage.getItem('lab_user_id');
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
                    var options = '<option selected="true" disabled value="">Pilih Jasa Pelayanan</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].jp_kode + '">' + data[i].jp_kode + '</option>';
                    }
                    $("select#category").html(options);
                } else {
                    alert('Failed get list jasa pelayanan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        $('#table_prodrea').on('click', 'td', function () {
            var row = $(this).closest('tr');
            var pr_code = $('#table_prodrea').DataTable().row(row).data().pr_code;
            var pr_category = $('#table_prodrea').DataTable().row(row).data().pr_category;
            var pr_name = $('#table_prodrea').DataTable().row(row).data().pr_name;
            var pr_status = $('#table_prodrea').DataTable().row(row).data().pr_status;
            var pr_description = $('#table_prodrea').DataTable().row(row).data().pr_description;

            document.getElementById("code").value = pr_code;
            document.getElementById("category").value = pr_category;
            document.getElementById("name").value = pr_name;
            document.getElementById("description").value = pr_description;
            if (pr_status == '1') {
                document.getElementById("ggwp").innerHTML = '<label class="switch"><input type="checkbox" id="change_s" checked=""><div class="slider round"></div></label>';
            } else if (pr_status == '0') {
                document.getElementById("ggwp").innerHTML = '<label class="switch"><input type="checkbox" id="change_s"><div class="slider round"></div></label>';
            }

            $('.cd-popup-edit-pr').addClass('is-visible');
        });


        //close popup provide password
        $('.cd-popup-edit-pr').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-pr-close') || $(event.target).is('.cd-popup-edit-pr')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_pr")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-pr').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-edit-pr" role="alert">
    <div class="cd-popup-edit-pr-container" style="color: #29B19C;">
        <label id="label_edit_pr">Edit Product Reagent</label>
        <div id="boxx_edit_pr">
            <div id="box2_edit_pr">
                <div id="input_edit_user">
                    <form id="form_edit_pr">
                        <div id="myModal_edit_user" class="modal">
                            <div class="modal-content">
                                <span class="close_edit_pr">&times;</span>
                                <div id="push_text_edit_pr"></div>
                            </div>
                        </div>
                        <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">code</label><input readonly="" type="text" id="code" name="code" required="" style="background-color: aqua;" disabled="">
                        <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">category</label><select id="category" name="category" required=""></select>

                        <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">name</label><input type="text" id="name" name="name">
                        <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">description</label><input type="text" id="description" name="description">
                        <div id="ggwp">
                        </div>
                    </form>
                    <div id="buttonon_edit_pr">
                        <div id="btn_delete_edit_pr" onclick="sub_del_pr()">Delete</div>
                        <div id="btn_submit_edit_pr" onclick="sub_edt_pr()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-pr-close img-replace-edit-pr">Close</a>
    </div>
</div>
<script>
    function sub_edt_pr() {
        var code = document.getElementById("code").value;
        var category = document.getElementById("category").value;
        var name = document.getElementById("name").value;
        var description = document.getElementById("description").value;
        var status = document.getElementById("change_s").checked;


        var modal = document.getElementById("myModal_edit_user");
        var span = document.getElementsByClassName("close_edit_pr")[0];
        var push = document.getElementById("push_text_edit_pr");
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
            if (category == "") {
                push.innerHTML = "<p>category must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (category != "") {
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



                        datjson4.procCode = "500009";
                        datjson4.user_id = window.localStorage.getItem('lab_user_id');

                        datjson4.pr_code = code;
                        datjson4.pr_category = category;
                        datjson4.pr_name = name;
                        datjson4.pr_description = description;
                        var sts = "0";
                        if (status) {
                            sts = "1";
                        }
                        datjson4.pr_status = sts;
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
                                    destroyPR();
                                    getlistPR();
                                    alert('success update product reagent');
                                    $('.cd-popup-edit-pr').removeClass('is-visible');
                                    $("#form_edit_pr")[0].reset();
                                } else {
                                    alert('failed update product reagent : ' + response.respDesc);
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

    function sub_del_pr() {
        var code = document.getElementById("code").value;


        if (code == "") {
            push.innerHTML = "<p>code name must be fill</p>";
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
            datjson3.procCode = "600005";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.outlet_id = code;
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
                        destroyLab();
                        getListLab();
                        alert('Success Delete Lab');
                        $('.cd-popup-edit-pr').removeClass('is-visible');
                        $("#form_edit_pr")[0].reset();
                    } else {
                        alert('Failed Delete Lab');
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
    }
</script>