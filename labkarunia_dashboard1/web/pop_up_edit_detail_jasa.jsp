<%--
    Document   : pop_up_edit_detail_jasa
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-edit-detail-jasa
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-detail-jasa {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-detail-jasa {
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
    .cd-popup-edit-detail-jasa.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-detail-jasa-container {
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

    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa div {
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
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-detail-jasa-container .cd-buttons-edit-detail-jasa li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-detail-jasa-container .cd-popup-edit-detail-jasa-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-detail-jasa-container .cd-popup-edit-detail-jasa-close::before, .cd-popup-edit-detail-jasa-container .cd-popup-edit-detail-jasa-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-detail-jasa-container .cd-popup-edit-detail-jasa-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-detail-jasa-container .cd-popup-edit-detail-jasa-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-detail-jasa-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-detail-jasa-container {
            margin: 8em auto;
        }
    }
    #label_edit_detail_jasa {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_detail_jasa{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_user {
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
    #buttonon_detail_jasa {
        color: white;
        justify-content: center;
        /*margin-top: 10px;*/
        display: flex;
    }
    #btn_delete_detail_jasa {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_edit_submit_detail_jasa {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_detail_jasa:hover {
        background-color: #CCC;
    }
    #btn_edit_submit_detail_jasa:hover {
        background-color: #CCC;
    }


    /* The Close Button */
    .close_edit_detail_jasa {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_detail_jasa:hover,
    .close_edit_detail_jasa:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<script>
    jQuery(document).ready(function ($) {
        //open popup provide password
        //select institusi
        var datjson3 = new Object();
        datjson3.procCode = "200002";
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
                    var options = '<option selected="true" disabled value="">Pilih Institusi</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].ins_code + '">' + data[i].ins_code + '</option>';
                    }
                    $("select#edit_detail_jasa_institusi").html(options);
                } else {
                    alert('Failed get list institusi : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

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
                    $("select#edit_detail_jasa_pelayanan").html(options);
                } else {
                    alert('Failed get list jasa pelayanan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });




        $('#table_detail_jasa').on('click', 'td', function () {
            var row = $(this).closest("tr");



            var edit_detail_jasa_institusi = $('#table_detail_jasa').DataTable().row(row).data().ins_code;
            var edit_detail_jasa_djp_code = $('#table_detail_jasa').DataTable().row(row).data().djp_code;
            var edit_detail_jasa_name = $('#table_detail_jasa').DataTable().row(row).data().detail_jasa;
            var edit_detail_jasa_price = $('#table_detail_jasa').DataTable().row(row).data().price;
            var edit_detail_jasa_minimal = $('#table_detail_jasa').DataTable().row(row).data().minimum_person;
            var edit_detail_jasa_pelayanan = $('#table_detail_jasa').DataTable().row(row).data().jp_code;
            var edit_status_detail_jasa = $('#table_detail_jasa').DataTable().row(row).data().status;

            document.getElementById("edit_detail_jasa_institusi").value = edit_detail_jasa_institusi;
            document.getElementById("edit_detail_djp_code").value = edit_detail_jasa_djp_code;
            document.getElementById("edit_detail_jasa_name").value = edit_detail_jasa_name;
            document.getElementById("edit_detail_jasa_price").value = edit_detail_jasa_price;
            document.getElementById("edit_detail_jasa_minimal").value = edit_detail_jasa_minimal;
            document.getElementById("edit_detail_jasa_pelayanan").value = edit_detail_jasa_pelayanan;


            if (edit_status_detail_jasa == '1') {
                document.getElementById("edit_status_detail_jasa").innerHTML = '<label class="switch"><input type="checkbox" id="change_jps" checked=""><div class="slider round"></div></label>';
            } else if (edit_status_detail_jasa == '0') {
                document.getElementById("edit_status_detail_jasa").innerHTML = '<label class="switch"><input type="checkbox" id="change_jps"><div class="slider round"></div></label>';
            }
            $('.cd-popup-edit-detail-jasa').addClass('is-visible');
        });


        //close popup provide password
        $('.cd-popup-edit-detail-jasa').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-detail-jasa-close') || $(event.target).is('.cd-popup-edit-detail-jasa')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_detail_jasa")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-detail-jasa').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-edit-detail-jasa" role="alert">
    <div class="cd-popup-edit-detail-jasa-container" style="color: #29B19C;">
        <label id="label_edit_detail_jasa">Edit Detail Jasa Pelayanan</label>
        <div id="boxx_edit_detail_jasa">
            <!--<div id="box2_edit_user">-->
            <div id="input_edit_detail_jasa">
                <form id="form_edit_detail_jasa">
                    <div id="myModal_edit_detail_jasa" class="modal">
                        <div class="modal-content">
                            <span class="close_edit_detail_jasa">&times;</span>
                            <div id="push_text_edit_detail_jasa"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><select id="edit_detail_jasa_institusi" required=""></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">djp code</label><input type="text" id="edit_detail_djp_code" required="" placeholder="djp code" hidden="" readonly="">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa</label><input type="text" id="edit_detail_jasa_name" required="" placeholder="detail jasa">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">price</label><input type="number" id="edit_detail_jasa_price" required="" placeholder="price">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">minimal orang</label><input type="number" id="edit_detail_jasa_minimal" placeholder="minimal orang">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jasa pelayanan</label><select id="edit_detail_jasa_pelayanan"></select>
                    <div id="edit_status_detail_jasa"></div>
                </form>
                <div id="buttonon_detail_jasa">
                    <div id="btn_delete_detail_jasa" onclick="sub_del_detail_jasa()">Delete</div>
                    <div id="btn_edit_submit_detail_jasa" onclick="sub_edt_detail_jasa()">Save</div>
                </div>
                <div id="msgbox"></div>
            </div>
            <!--</div>-->
        </div>
        <a href="#0" class="cd-popup-edit-detail-jasa-close img-replace-edit-detail-jasa">Close</a>
    </div>
</div>
<script>
    function sub_edt_detail_jasa() {



        var ins_code = document.getElementById("edit_detail_jasa_institusi").value;
        var djp_code = document.getElementById("edit_detail_djp_code").value;
        var detail_jasa = document.getElementById("edit_detail_jasa_name").value;
        var price = document.getElementById("edit_detail_jasa_price").value;
        var minimum_person = document.getElementById("edit_detail_jasa_minimal").value;
        var jp_code = document.getElementById("edit_detail_jasa_pelayanan").value;
        var status = document.getElementById("change_jps").checked;

        var modal = document.getElementById("myModal_edit_detail_jasa");
        var span = document.getElementsByClassName("close_edit_detail_jasa")[0];
        var push = document.getElementById("push_text_edit_detail_jasa");
        ;
        if (ins_code == "") {
            push.innerHTML = "<p>institusi code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (ins_code != "") {
            if (djp_code == "") {
                push.innerHTML = "<p>djp code must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (djp_code != "") {
                if (detail_jasa == "") {
                    push.innerHTML = "<p>nama djp must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (detail_jasa != "") {
                    if (price == "") {
                        push.innerHTML = "<p>price must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (price != "") {
                        if (minimum_person == "") {
                            push.innerHTML = "<p>minimum person must be fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (minimum_person != "") {
                            if (jp_code == "") {
                                push.innerHTML = "<p>jasa pelayanan must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (jp_code != "") {


                                var datjson4 = new Object();
                                datjson4.procCode = "500020";
                                datjson4.user_id = window.localStorage.getItem('lab_user_id');


                                datjson4.ins_code = ins_code;
                                datjson4.djp_code = djp_code;
                                datjson4.detail_jasa = detail_jasa;
                                datjson4.price = price;
                                datjson4.minimum_person = minimum_person;
                                datjson4.jp_code = jp_code;
                                var sts = "0";
                                if (status) {
                                    sts = "1";
                                }
                                datjson4.status = sts;

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
                                            destroyDetailJasa();
                                            getListDetailJasa();
                                            alert('success update detail jasa pelayanan');
                                            $('.cd-popup-edit-detail-jasa').removeClass('is-visible');
                                            $("#form_edit_detail_jasa")[0].reset();
                                        } else {
                                            alert('failed update detail jasa pelayanan : ' + response.respDesc);
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

    function sub_del_detail_jasa() {

        var djp_code = document.getElementById("edit_detail_djp_code").value;

        if (djp_code == "") {
            push.innerHTML = "<p>djp code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (djp_code != "") {
            var datjson3 = new Object();
            datjson3.procCode = "600014";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.djp_code = djp_code;
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson3),
                type: 'post',
                success: function (response) {
                    if (response.respCode == 0000) {
                        destroyDetailJasa();
                        getListDetailJasa();
                        alert('Success Delete Detail Jasa Pelayanan');
                        $('.cd-popup-edit-detail-jasa').removeClass('is-visible');
                        $("#form_edit_detail_jasa")[0].reset();
                    } else {
                        alert('Failed Delete Detail Jasa Pelayanan');
                    }
                }
            });
        }
    }
</script>