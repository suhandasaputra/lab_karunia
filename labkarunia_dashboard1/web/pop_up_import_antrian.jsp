<%-- 
    Document   : pop_up_import_antrian
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-import-antrian
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-import-antrian {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-import-antrian {
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
    .cd-popup-import-antrian.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-import-antrian-container {
        position: relative;
        top: -50px;
        width: 90%;
        height: 750px;
        max-width: 1000px;
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

    .cd-popup-import-antrian-container .cd-buttons-import-antrian:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-import-antrian-container .cd-buttons-import-antrian li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-import-antrian-container .cd-buttons-import-antrian div {
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
    .cd-popup-import-antrian-container .cd-buttons-import-antrian li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-import-antrian-container .cd-buttons-import-antrian li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-import-antrian-container .cd-buttons-import-antrian li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-import-antrian-container .cd-buttons-import-antrian li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-import-antrian-container .cd-buttons-import-antrian li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-import-antrian-container .cd-buttons-import-antrian li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-import-antrian-container .cd-popup-import-antrian-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-import-antrian-container .cd-popup-import-antrian-close::before, .cd-popup-import-antrian-container .cd-popup-import-antrian-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-import-antrian-container .cd-popup-import-antrian-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-import-antrian-container .cd-popup-import-antrian-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-import-antrian-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-import-antrian-container {
            margin: 8em auto;
        }
    }
    #label-import-antrian {
        text-align: center;
        align-content: center;
    }
    #boxx-import-antrian{
        overflow-x: hidden;
        /*background-color: yellow;*/
        width: -webkit-fill-available;
        height: -webkit-fill-available;
        padding: 20px;
        /*display: flex;*/
        /*        justify-content: center;
                align-content: center;*/
    }

    #btn_cancel_import_antrian {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_import_antrian {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel_import_antrian:hover {
        background-color: #CCC;
    }
    /*    #btn_reject:hover {
            background-color: #CCC;
        }*/
    #btn_save_import_antrian:hover {
        background-color: #CCC;
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


        select{
            width: 10px;
        }
    }
</style>


<script>
    jQuery(document).ready(function ($) {
        //open popup add antrian
        $('#import_antrian').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-import-antrian').addClass('is-visible');
        });


        //close popup add antrian
        $('.cd-popup-import-antrian').on('click', function (event) {
            if ($(event.target).is('.cd-popup-import-antrian-close') || $(event.target).is('.cd-popup-import-antrian') || $(event.target).is('#btn_cancel_import_antrian')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button add antrian
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-import-antrian').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-import-antrian" role="alert">
    <div class="cd-popup-import-antrian-container">
        <label id="label-import-antrian">Import Queue data from Excel</label>
        <div id="boxx-import-antrian">
            <div id="myModal_import_antrian" class="modal">
                <div class="modal-content">
                    <span class="close_import_antrian">&times;</span>
                    <div id="push_text_import_antrian"></div>
                </div>
            </div>

            <div style="display: inline-flex">
                <input class="form-control" type="file" id="input" accept=".xls,.xlsx" style="height: 45px; margin-right: 20px">
                <button class="btn btn-primary" id="button" style="height: 45px">Convert</button>
            </div>
            <br>
            <table class="table" id="table_json_antrian" style="width: 100%">
                <thead>
                    <tr>
                        <td>idcard_number</td>
                        <td>passport_number</td>
                        <td>name</td>
                        <td>gender</td>
                        <td>birth_date</td>
                        <td>citizenship</td>
                        <td>address</td>
                        <td>email</td>
                        <td>phonenumber</td>
                        <td>idcard_img64</td>
                        <td>passport_img64</td>
                        <td>self_img64</td>
                        <td>ins_code</td>
                        <td>tc_code</td>
                        <td>jp_code</td>
                        <td>djp_code</td>
                        <td>tp_code</td>
                        <td>product_name</td>
                        <td>queue_date</td>
                        <td>queue_hour</td>
                        
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <input type="text" id="jsondata_antrian" disabled="" hidden="">
            <button type="button" class="btn btn-success" id="btn_submit_import_antrian" style="display: none; margin-top: 30px; width: 200px;" onclick="sub_imp_antrian()">Submit</button>
        </div>
        <a href="#0" class="cd-popup-import-antrian-close img-replace-import-antrian">Close</a>
    </div>
</div>
<script src="myjs/excel_antrian.js"></script>
<script>
                function sub_imp_antrian() {
                    var user_id = window.localStorage.getItem('lab_user_id');
                    var jsondata_antrian = document.getElementById("jsondata_antrian").value;
                    var modal = document.getElementById("myModal_import_antrian");
                    var span = document.getElementsByClassName("close_import_antrian")[0];
                    var push = document.getElementById("push_text_import_antrian");
                    ;
                    if (jsondata_antrian == "") {
                        push.innerHTML = "<p>data must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (jsondata_antrian != "") {

                        var datjson2 = new Object();

                        datjson2.procCode = "300020";
                        datjson2.list = JSON.parse(jsondata_antrian);
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
                                    destroyimportant();
                                    destroyAntrian();
                                    getListAntrian();
                                    alert('success import data antrian');
                                    $('.cd-popup-import-antrian').removeClass('is-visible');
                                } else {
                                    alert('failed import data antrian : ' + response.respDesc);
                                }
                            },
                            complete: function () {
                                $('#loader').addClass('hidden');
                            }
                        });
                    }
                }
</script>