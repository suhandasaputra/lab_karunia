<%-- 
    Document   : pop_up_add_detail_jasa
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-detail_jasa
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-detail-jasa {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-detail_jasa {
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
    .cd-popup-add-detail_jasa.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-detail_jasa-container {
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

    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa div {
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
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-detail_jasa-container .cd-buttons-add-detail_jasa li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-detail_jasa-container .cd-popup-add-detail_jasa-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-detail_jasa-container .cd-popup-add-detail_jasa-close::before, .cd-popup-add-detail_jasa-container .cd-popup-add-detail_jasa-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-detail_jasa-container .cd-popup-add-detail_jasa-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-detail_jasa-container .cd-popup-add-detail_jasa-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-detail_jasa-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-detail_jasa-container {
            margin: 8em auto;
        }
    }
    #label_add_jasa {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_jasa{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_jasa {
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
    select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        height: 28.5px;
        margin-bottom: 5px;
    }
    textarea {
        padding-left: 10px;
        border-radius: 3px;
        width: 100%;
        margin-top: 10px;
        height: 115px;
    }
    #buttonon_add_detail_jasa {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_cancel_add_detail_jasa {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_add_detail_jasa {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_add_detail_jasa:hover {
        background-color: #CCC;
    }
    #btn_submit_add_detail_jasa:hover {
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
        if (userlevel !== 'administrator') {
            $('#option_manager').remove();
        }

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
                    $("select#add_detail_jasa_institusi").html(options);
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
                    $("select#add_detail_jasa_pelayanan").html(options);
                } else {
                    alert('Failed get list jasa pelayanan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });





        //open popup provide password
        $('#add_detail_jasa').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-detail_jasa').addClass('is-visible');
        });

        //close popup provide password
        $('.cd-popup-add-detail_jasa').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-detail_jasa-close') || $(event.target).is('.cd-popup-add-detail_jasa') || $(event.target).is('#btn_cancel_add_detail_jasa')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_detail_jasa")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-detail_jasa').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-add-detail_jasa" role="alert">
    <div class="cd-popup-add-detail_jasa-container">
        <label id="label_add_jasa">Create Detail Jasa Pelayanan</label>
        <div id="boxx_add_jasa">
            <!--<div id="box2_add_jasa">-->
            <div id="input_add_jasa">
                <form id="form_add_detail_jasa">
                    <div id="myModal" class="modal">
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <div id="push_text"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">institusi</label><select id="add_detail_jasa_institusi" required=""></select>
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">detail jasa</label><input type="text" id="add_detail_jasa_name" required="" placeholder="detail jasa">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">price</label><input type="number" id="add_detail_jasa_price" required="" placeholder="price">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">minimal orang</label><input type="number" id="add_detail_jasa_minimal" placeholder="minimal orang">
                    <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jasa pelayanan</label><select id="add_detail_jasa_pelayanan"></select>
                </form>
                <div id="buttonon_add_detail_jasa">
                    <div id="btn_cancel_add_detail_jasa">Cancel</div>
                    <div id="btn_submit_add_detail_jasa" onclick="sub_out_detail_jasa()">Save</div>
                </div>
                <div id="msgbox"></div>
            </div>
            <!--</div>-->
        </div>
        <a href="#0" class="cd-popup-add-detail_jasa-close img-replace-add-detail-jasa">Close</a>
    </div>
</div>
<script>
    function sub_out_detail_jasa() {
        var add_detail_jasa_institusi = document.getElementById("add_detail_jasa_institusi").value;
        var add_detail_jasa_name = document.getElementById("add_detail_jasa_name").value;
        var add_detail_jasa_price = document.getElementById("add_detail_jasa_price").value;
        var add_detail_jasa_minimal = document.getElementById("add_detail_jasa_minimal").value;
        var add_detail_jasa_pelayanan = document.getElementById("add_detail_jasa_pelayanan").value;

        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text");
        ;
        if (add_detail_jasa_institusi == "") {
            push.innerHTML = "<p>institusi must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (add_detail_jasa_institusi != "") {
            if (add_detail_jasa_name == "") {
                push.innerHTML = "<p>detail jasa name must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (add_detail_jasa_name != "") {

                if (add_detail_jasa_price == "") {
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
                } else if (add_detail_jasa_price != "") {
                    if (add_detail_jasa_minimal == "") {
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
                    } else if (add_detail_jasa_minimal != "") {
                        if (add_detail_jasa_pelayanan == "") {
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
                        } else if (add_detail_jasa_pelayanan != "") {

                            var datjson2 = new Object();
                            datjson2.procCode = "300014";
                            datjson2.user_id = window.localStorage.getItem('lab_user_id');
                            datjson2.detail_jasa = add_detail_jasa_name;
                            datjson2.price = add_detail_jasa_price;
                            datjson2.minimum_person = add_detail_jasa_minimal;
                            datjson2.jp_code = add_detail_jasa_pelayanan;
                            datjson2.ins_code = add_detail_jasa_institusi;
                            datjson2.status = "1";
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
                                        destroyDetailJasa();
                                        getListDetailJasa();
                                        alert('success create Detail Jasa Pelayanan');
                                        $('.cd-popup-add-detail_jasa').removeClass('is-visible');
                                        $("#form_add_detail_jasa")[0].reset();
                                    } else {
                                        alert('failed create Detail Jasa Pelayanan : ' + response.respDesc);
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
</script>