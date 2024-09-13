<%--
    Document   : pop_up_add_jasa
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-edit-jasa
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-jasa {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-jasa {
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
    .cd-popup-edit-jasa.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-jasa-container {
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

    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa div {
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
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-jasa-container .cd-buttons-edit-jasa li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-jasa-container .cd-popup-edit-jasa-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-jasa-container .cd-popup-edit-jasa-close::before, .cd-popup-edit-jasa-container .cd-popup-edit-jasa-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-jasa-container .cd-popup-edit-jasa-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-jasa-container .cd-popup-edit-jasa-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-jasa-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-jasa-container {
            margin: 8em auto;
        }
    }
    #label_edit_user {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_user{
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
    #buttonon {
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_delete {
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

    #btn_delete:hover {
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
        $('#table_jasa').on('click', 'td', function () {
            var row = $(this).closest("tr");    // Find the row

            var jp_kode = $('#table_jasa').DataTable().row(row).data().jp_kode;
            var jp_name = $('#table_jasa').DataTable().row(row).data().jp_name;
            var jp_kode_produk_vaksinku = $('#table_jasa').DataTable().row(row).data().jp_kode_produk_vaksinku;
            var jp_metode_instan = $('#table_jasa').DataTable().row(row).data().jp_metode_instan;
            var jp_status = $('#table_jasa').DataTable().row(row).data().jp_status;

            document.getElementById("edit_code").value = jp_kode;
            document.getElementById("edit_name").value = jp_name;
            document.getElementById("edit_kode_produk_vaksinku").value = jp_kode_produk_vaksinku;

            if (jp_metode_instan == '1') {
                document.getElementById("edit_metode_instan").innerHTML = '<label class="switch"><input type="checkbox" id="change_jpmi" checked=""><div class="slider round"></div></label>';
            } else if (jp_metode_instan == '0') {
                document.getElementById("edit_metode_instan").innerHTML = '<label class="switch"><input type="checkbox" id="change_jpmi"><div class="slider round"></div></label>';
            }

            if (jp_status == '1') {
                document.getElementById("edit_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_jps" checked=""><div class="slider round"></div></label>';
            } else if (jp_status == '0') {
                document.getElementById("edit_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_jps"><div class="slider round"></div></label>';
            }
            $('.cd-popup-edit-jasa').addClass('is-visible');
        });


        //close popup provide password
        $('.cd-popup-edit-jasa').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-jasa-close') || $(event.target).is('.cd-popup-edit-jasa')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_lab")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-jasa').removeClass('is-visible');
            }
        });
    });
</script>

<div class="cd-popup-edit-jasa" role="alert">
    <div class="cd-popup-edit-jasa-container" style="color: #29B19C;">
        <label id="label_edit_user">Edit Jasa Pelayanan</label>
        <div id="boxx_edit_user">
            <!--<div id="box2_edit_user">-->
            <div id="input_edit_user">
                <form id="form_edit_lab">
                    <div id="myModal_edit_user" class="modal">
                        <div class="modal-content">
                            <span class="close_edit_user">&times;</span>
                            <div id="push_text_edit_user"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">code</label><input readonly="" type="text" id="edit_code" required="" style="background-color: aqua;" disabled="">
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">name</label><input type="text" id="edit_name" required="" placeholder="name">
                    <label style="margin-bottom: 0px; font-size: 12px; float: left; font-weight: 100; color: black">kode produk vaksinku</label><input type="text" id="edit_kode_produk_vaksinku" required="" placeholder="kode produk vaksinku">                        
                    <div style="display: inline-flex;">
                        <div id="edit_metode_instan" style="margin-left: 30px"></div>metode instan
                        <div id="edit_status" style="margin-left: 30px"></div>status
                    </div>
                </form>
                <div id="buttonon">
                    <div id="btn_delete" onclick="sub_del_lab()">Delete</div>
                    <div id="btn_edit_submit_user" onclick="sub_edt_lab()">Save</div>
                </div>
                <div id="msgbox"></div>
            </div>
            <!--</div>-->
        </div>
        <a href="#0" class="cd-popup-edit-jasa-close img-replace-edit-jasa">Close</a>
    </div>
</div>
<script>
    function sub_edt_lab() {
        var code = document.getElementById("edit_code").value;
        var name = document.getElementById("edit_name").value;
//        var price = document.getElementById("edit_price").value;
        var kode_produk_vaksinku = document.getElementById("edit_kode_produk_vaksinku").value;
        var change_jpmi = document.getElementById("change_jpmi").checked;
        var change_jps = document.getElementById("change_jps").checked;


        var modal = document.getElementById("myModal_edit_user");
        var span = document.getElementsByClassName("close_edit_user")[0];
        var push = document.getElementById("push_text_edit_user");
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
//                if (price == "") {
//                    push.innerHTML = "<p>price must be fill</p>";
//                    modal.style.display = "block";
//                    span.onclick = function () {
//                        modal.style.display = "none";
//                    }
//                    window.onclick = function (event) {
//                        if (event.target == modal) {
//                            modal.style.display = "none";
//                        }
//                    }
//                } else if (price != "") {
                if (kode_produk_vaksinku == "") {
                    push.innerHTML = "<p>kode produk vaksinku must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (kode_produk_vaksinku != "") {



                    var datjson4 = new Object();
                    datjson4.procCode = "500003";
                    datjson4.user_id = window.localStorage.getItem('lab_user_id');



                    datjson4.jp_kode = code;
                    datjson4.jp_name = name;
//                        datjson4.jp_price = price;
                    datjson4.jp_kode_produk_vaksinku = kode_produk_vaksinku;

                    var sts1 = "0";
                    if (change_jpmi) {
                        sts1 = "1";
                    }
                    datjson4.jp_metode_instan = sts1;

                    var sts2 = "0";
                    if (change_jps) {
                        sts2 = "1";
                    }
                    datjson4.jp_status = sts2;

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
                                destroyJasa();
                                getListJasa();
                                alert('success update jasa pelayanan');
                                $('.cd-popup-edit-jasa').removeClass('is-visible');
                                $("#form_edit_lab")[0].reset();
                            } else {
                                alert('failed update jasa pelayanan : '+response.respDesc);
                            }
                        },
                        complete: function () {
                        $('#loader').addClass('hidden');
                    }	
                    });
//                    }
                }
            }
        }
    }

    function sub_del_lab() {
        var code = document.getElementById("edit_code").value;


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
            datjson3.procCode = "600003";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.jp_kode = code;
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
                        destroyJasa();
                        getListJasa();
                        alert('Success Delete Jasa Pelayanan');
                        $('.cd-popup-edit-jasa').removeClass('is-visible');
                        $("#form_edit_lab")[0].reset();
                    } else {
                        alert('Failed Delete Jasa Pelayanan');
                    }
                },
                complete: function () {
                        $('#loader').addClass('hidden');
                    }	
            });
        }
    }
</script>