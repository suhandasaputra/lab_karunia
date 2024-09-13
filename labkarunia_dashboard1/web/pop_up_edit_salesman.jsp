<%--
    Document   : pop_up_edit_salesman
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-edit-salesman
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-salesman {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-salesman {
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
    .cd-popup-edit-salesman.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-salesman-container {
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

    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman div {
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
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-salesman-container .cd-buttons-edit-salesman li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-salesman-container .cd-popup-edit-salesman-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-salesman-container .cd-popup-edit-salesman-close::before, .cd-popup-edit-salesman-container .cd-popup-edit-salesman-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-salesman-container .cd-popup-edit-salesman-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-salesman-container .cd-popup-edit-salesman-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-salesman-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-salesman-container {
            margin: 8em auto;
        }
    }
    #label_edit_salesman {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_salesman{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_salesman {
        width: 250px;
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
    #buttonon_edit_salesman {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_delete_salesman {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_edit_submit_salesman {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_salesman:hover {
        background-color: #CCC;
    }
    #btn_edit_submit_salesman:hover {
        background-color: #CCC;
    }

    /* The Close Button */
    .close_edit_salesman {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_salesman:hover,
    .close_edit_salesman:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }






    #lble1{font-size: 10px; font-weight: 100;color: black; float: left;}
    #lble2{font-size: 10px; font-weight: 100;color: black; float: left;}
    #lble3{font-size: 10px;font-weight: 100;color: black; float: left;}
    #lble4{font-size: 10px; font-weight: 100;color: black; float: left;}
    #edit_sales_code{margin-top: -10px; background-color: azure;}
    #edit_sales_name{margin-top: -10px;}
    #edit_sales_phone{margin-top: -10px;}
    #edit_sales_channel{margin-top: -10px;}

    @media only screen and (max-width: 400px) {
        #lble1{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble2{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble3{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble4{font-size: 10px; float: left; font-weight: 100;margin-left: 10px;color: black;}
        #lble5{font-size: 10px; float: left; font-weight: 100; top: -190px; position: relative; left: 220px;color: black;}

        #customer_outlet_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #customer_email_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #customer_name_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #customer_phone_edit{width: 180px; float: left; margin-top: -10px;margin-left: 10px}
        #customer_address_edit{width: 180px; float: left; margin-top: -10px; top: -190px; position: relative; left: 220px; height: 170px}

    }
</style>

<script>
    jQuery(document).ready(function ($) {
        $('#table_salesman').on('click', 'td', function () {
            var row = $(this).closest('tr');
            var sales_code = $('#table_salesman').DataTable().row(row).data().sales_code;
            var sales_name = $('#table_salesman').DataTable().row(row).data().sales_name;
            var sales_channel = $('#table_salesman').DataTable().row(row).data().sales_channel;
            var sales_phone = $('#table_salesman').DataTable().row(row).data().sales_phone;
            var sales_status = $('#table_salesman').DataTable().row(row).data().sales_status;
            
            document.getElementById("edit_sales_code").value = sales_code;
            document.getElementById("edit_sales_name").value = sales_name;
            document.getElementById("edit_sales_phone").value = sales_channel;
            document.getElementById("edit_sales_channel").value = sales_phone;

            if (sales_status == '1') {
                document.getElementById("ggwp1").innerHTML = '<label class="switch"><input type="checkbox" id="change_ss" checked=""><div class="slider round"></div></label>';
            } else if (sales_status == '0') {
                document.getElementById("ggwp1").innerHTML = '<label class="switch"><input type="checkbox" id="change_ss"><div class="slider round"></div></label>';
            }
            $('.cd-popup-edit-salesman').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-edit-salesman').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-salesman-close') || $(event.target).is('.cd-popup-edit-salesman')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#formedit_salesman")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-salesman').removeClass('is-visible');
            }
        });
    });</script>

<div class="cd-popup-edit-salesman" role="alert">
    <div class="cd-popup-edit-salesman-container" style="color: #29B19C;">
        <label id="label_edit_salesman">Edit Sales</label>
        <div id="boxx_edit_salesman">
            <div id="box2_edit_salesman">
                <form id="formedit_salesman">
                    <div id="myModal_edit_customer" class="modal">
                        <div class="modal-content">
                            <span class="close_edit_salesman">&times;</span>
                            <div id="push_text_edit_customer"></div>
                        </div>
                    </div>
                    <label id="lble1">sales code</label><br>
                    <input type="text" id="edit_sales_code" readonly="" name="edit_sales_code" required="" placeholder="sales code"><br>
                    <label id="lble2">sales name</label><br>
                    <input type="text" id="edit_sales_name" name="edit_sales_name" required="" placeholder="sales name"><br>
                    <label id="lble3">sales phone</label><br>
                    <input type="text" id="edit_sales_phone" name="edit_sales_phone" required="" placeholder="sales phone"><br>
                    <label id="lble4">sales channel</label><br>
                    <input type="text" id="edit_sales_channel" name="edit_sales_channel" required="" placeholder="sales channel"><br>
                    <div id="ggwp1"></div>
                </form>
                <div id="buttonon_edit_salesman">
                    <div id="btn_delete_salesman" onclick="sub_del_sales()">Delete</div>
                    <div id="btn_edit_submit_salesman" onclick="sub_edt_sales()">Save</div>
                </div>
                <div id="msgbox"></div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-salesman-close img-replace-edit-salesman">Close</a>
    </div>
</div>
<script>
    function sub_edt_sales() {
        var edit_sales_code = document.getElementById("edit_sales_code").value;
        var edit_sales_name = document.getElementById("edit_sales_name").value;
        var edit_sales_phone = document.getElementById("edit_sales_phone").value;
        var edit_sales_channel = document.getElementById("edit_sales_channel").value;
        var edit_sales_status = document.getElementById("change_ss").checked;

        var modal = document.getElementById("myModal_edit_customer");
        var span = document.getElementsByClassName("close_edit_salesman")[0];
        var push = document.getElementById("push_text_edit_customer");
        ;
        if (edit_sales_code == "") {
            push.innerHTML = "<p>sales code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (edit_sales_code != "") {
            if (edit_sales_name == "") {
                push.innerHTML = "<p>sales name must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (edit_sales_name != "") {
                if (edit_sales_phone == "") {
                    push.innerHTML = "<p>sales phone must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (edit_sales_phone != "") {
                    if (edit_sales_channel == "") {
                        push.innerHTML = "<p>sales channel must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (edit_sales_channel != "") {
                        var datjson4 = new Object();


                        datjson4.procCode = "500010";
                        datjson4.sales_code = edit_sales_code;
                        datjson4.sales_name = edit_sales_name;
                        datjson4.sales_phone = edit_sales_phone;
                        datjson4.sales_channel = edit_sales_channel;

                        var edit_status = "0";
                        if (edit_sales_status) {
                            edit_status = "1";
                        }
                        datjson4.sales_status = edit_status;
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
                                    destroySalesman();
                                    getlistSalesman();
                                    alert('success update sales ' + edit_sales_name);
                                    $('.cd-popup-edit-salesman').removeClass('is-visible');
                                    $("#formedit_salesman")[0].reset();
                                } else {
                                    alert(response.respDesc);
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

    function sub_del_sales() {
        var edit_sales_code = document.getElementById("edit_sales_code").value;

        if (edit_sales_code == "") {
            push.innerHTML = "<p>sales code must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (edit_sales_code != "") {
            var datjson = new Object();
            datjson.procCode = "600010";
            
            datjson.sales_code = edit_sales_code;
            datjson.user_id = window.localStorage.getItem('lab_user_id');
            $.ajax({
                contentType: 'application/json',
                dataType: "json",
                url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                data: JSON.stringify(datjson),
                type: 'post',
                success: function (response) {
                    if (response.respCode == 0000) {
                        destroySalesman();
                        getlistSalesman();
                        alert('success delete sales ' + edit_sales_code);
                        $('.cd-popup-edit-salesman').removeClass('is-visible');
                        $("#formedit_salesman")[0].reset();
                    } else {
                        alert('failed delete sales : '+response.respDesc);
                    }
                }
            });
        }
    }
</script>