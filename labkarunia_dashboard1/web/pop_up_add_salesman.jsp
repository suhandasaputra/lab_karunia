<%-- 
    Document   : pop_up_add_salesman
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-add-salesman
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-salesman {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-salesman {
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
    .cd-popup-add-salesman.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-salesman-container {
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

    .cd-popup-add-salesman-container .cd-buttons-add-salesman:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-salesman-container .cd-buttons-add-salesman li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-salesman-container .cd-buttons-add-salesman div {
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
    .cd-popup-add-salesman-container .cd-buttons-add-salesman li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-salesman-container .cd-buttons-add-salesman li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-salesman-container .cd-buttons-add-salesman li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-salesman-container .cd-buttons-add-salesman li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-salesman-container .cd-buttons-add-salesman li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-salesman-container .cd-buttons-add-salesman li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-salesman-container .cd-popup-add-salesman-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-salesman-container .cd-popup-add-salesman-close::before, .cd-popup-add-salesman-container .cd-popup-add-salesman-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-salesman-container .cd-popup-add-salesman-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-salesman-container .cd-popup-add-salesman-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-salesman-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-salesman-container {
            margin: 8em auto;
        }
    }
    #label_add_salesman {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_salesman{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_salesman {
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
    #buttonon-add-salesman {
        color: white;
        margin-top: 10px;
        display: flex;
        position: relative;
        justify-content: center;
        /*left: -125px;*/
    }
    #btn_cancel_add_salesman {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_add_salesman {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_add_salesman:hover {
        background-color: #CCC;
    }
    #btn_submit_add_salesman:hover {
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






    #lbl1{font-size: 10px; float: left; font-weight: 100}
    #lbl2{font-size: 10px; float: left; font-weight: 100}
    #lbl3{font-size: 10px; float: left; font-weight: 100}
    #lbl4{font-size: 10px; float: left; font-weight: 100}
    #lbl5{font-size: 10px; float: left; font-weight: 100; top: -144px; position: relative; left: 220px;}
    

    @media only screen and (max-width: 400px) {
        #lbl1{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl2{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl3{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl4{font-size: 10px; float: left; font-weight: 100;margin-left: 10px}
        #lbl5{font-size: 10px; float: left; font-weight: 100; top: -144px; position: relative; left: 220px;}
    }
</style>


<script>
    jQuery(document).ready(function ($) {
        //open popup provide password
        $('#add_salesman').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-salesman').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-add-salesman').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-salesman-close') || $(event.target).is('.cd-popup-add-salesman') || $(event.target).is('#btn_cancel_add_salesman')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_salesman")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-salesman').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-add-salesman" role="alert">
    <div class="cd-popup-add-salesman-container">
        <label id="label_add_salesman">Create Sales</label>
        <div id="boxx_add_salesman">
            <div id="box2_add_salesman">
                <div id="input_add_salesman">
                    <form id="form_add_salesman">
                        <div id="myModal_add_salesman" class="modal">
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <div id="push_text_add_salesman"></div>
                            </div>
                        </div>
                        <label id="lbl1">sales code</label><br>
                        <input type="text" id="sales_code" name="sales_code" required="" placeholder="sales code"><br>
                        <label id="lbl2">sales name</label><br>
                        <input type="text" id="sales_name" name="sales_name" required="" placeholder="sales name"><br>
                        <label id="lbl3">sales chanel</label><br>
                        <input type="text" id="sales_channel" name="sales_channel" required="" placeholder="sales channel"><br>
                        <label id="lbl4">sales phone</label><br>
                        <input type="tel" id="sales_phone" name="sales_phone" required="" placeholder="sales phone"><br>
                        <!--                        <label id="lbl5">status</label><br>
                                                <input type="text" id="sales_status">-->
                    </form>
                    <div id="buttonon-add-salesman">
                        <div id="btn_cancel_add_salesman">Cancel</div>
                        <div id="btn_submit_add_salesman" onclick="sub_add_salesman()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-salesman-close img-replace-add-salesman">Close</a>
    </div>
</div>
<script>
    function sub_add_salesman() {
        var sales_code = document.getElementById("sales_code").value;
        var sales_name = document.getElementById("sales_name").value;
        var sales_channel = document.getElementById("sales_channel").value;
        var sales_phone = document.getElementById("sales_phone").value;
        var user_id = window.localStorage.getItem('lab_user_id');
        var modal = document.getElementById("myModal_add_salesman");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text_add_salesman");
        ;
        if (sales_code == "") {
            push.innerHTML = "<p>User name must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (sales_code != "") {
            if (sales_name == "") {
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
            } else if (sales_name != "") {
                if (sales_channel == "") {
                    push.innerHTML = "<p>Phone must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (sales_channel != "") {
                    if (sales_phone == "") {
                        push.innerHTML = "<p>Address must be choose</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (sales_phone != "") {
                        var datjson = new Object();

                        datjson.procCode = "300010";
                        datjson.user_id = user_id;

                        datjson.sales_code = sales_code;
                        datjson.sales_name = sales_name;
                        datjson.sales_channel = sales_channel;
                        datjson.sales_phone = sales_phone;
                        datjson.sales_status = "1";
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
                                    destroySalesman();
                                    getlistSalesman();
                                    alert('success create sales ' + sales_name);
                                    $("#form_add_salesman")[0].reset();
                                    $('.cd-popup-add-salesman').removeClass('is-visible');
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
</script>