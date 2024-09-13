<%-- 
    Document   : pop_up_add_metode_mesin_approve
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-metode_mesin_approve
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-metode_mesin_approve {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-metode_mesin_approve {
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
    .cd-popup-metode_mesin_approve.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-metode_mesin_approve-container {
        position: relative;
        width: 90%;
        height: 500px;
        max-width: 400px;
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

    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve div {
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
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-metode_mesin_approve-container .cd-buttons-metode_mesin_approve li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-metode_mesin_approve-container .cd-popup-metode_mesin_approve-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-metode_mesin_approve-container .cd-popup-metode_mesin_approve-close::before, .cd-popup-metode_mesin_approve-container .cd-popup-metode_mesin_approve-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-metode_mesin_approve-container .cd-popup-metode_mesin_approve-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-metode_mesin_approve-container .cd-popup-metode_mesin_approve-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-metode_mesin_approve-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-metode_mesin_approve-container {
            margin: 5em auto;
        }
    }
    /*    #label-metode_mesin_approve {
            width: 100%;
            margin: 20px;
            text-align: left;
        }*/
    #boxx-metode_mesin_approve{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-metode_mesin_approve {
        cursor: pointer;
        width: 215px;
        height: 600px;
        margin-right: 5px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
    }
    #box2-metode_mesin_approve {
        width: -webkit-fill-available;
        margin: 20px;
        /*height: 600px;*/
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }
    

    #buttonon_approve {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }

    #btn_cancel_approve {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save_approve {
        cursor: pointer;
        width: 100px;
        background-color: #39b9db;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }



    #btn_cancel_approve:hover {
        background-color: #CCC;
    }

    #btn_save_approve:hover {
        background-color: #CCC;
    }



    /*--------------------------------------------------------------------------*/



    /* The Modal (background) */
    .modal_approve {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
    }

    /* Modal Content (image) */
    .modal_approve-content {
        margin: auto;
        display: block;
        width: 90%;
        max-width: 700px;
    }



    /* Add Animation */
    .modal_approve-content {  
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @-webkit-keyframes zoom {
        from {-webkit-transform:scale(0)} 
        to {-webkit-transform:scale(1)}
    }

    @keyframes zoom {
        from {transform:scale(0)} 
        to {transform:scale(1)}
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

        #box1-metode_mesin_approve {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-metode_mesin_approve {
            width: 190px;
            height: 200px;
            /*margin-left: 5px;*/
            /*background-color: blue;*/
        }



        select{
            width: 10px;
        }
    }
</style>


<script>
    jQuery(document).ready(function ($) {
        //open popup add category
//        $('#table_qchasilfinal').on('click', 'td', function () {
//
//        });
        //close popup add category
        $('.cd-popup-metode_mesin_approve').on('click', function (event) {
            if ($(event.target).is('.cd-popup-metode_mesin_approve-close') || $(event.target).is('.cd-popup-metode_mesin_approve') || $(event.target).is('#btn_cancel_approve')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_metode_mesin_approve")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-metode_mesin_approve').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-metode_mesin_approve" role="alert">
    <div class="cd-popup-metode_mesin_approve-container">
        <label id="label-metode_mesin_approve">Input Approve Token</label>
        <div id="boxx-metode_mesin_approve">

            <div id="box2-metode_mesin_approve">
                <form id="form_metode_mesin_approve">
                    <div id="myModal_approve" class="modal_approve">
                        <div class="modal_approve-content">
                            <span class="close">&times;</span>
                            <div id="push_text_approve"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">Book code</label><input type="text" id="set_approve_book_code" required="" placeholder="book code" disabled="" readonly="" class="input_a">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">Input Token</label><input type="text" id="set_approve_token" required="" placeholder="token" style="height: 60px" class="input_a">
                </form>
                <div id="buttonon_approve">
                    <div id="btn_cancel_approve">Cancel</div>
                    <div id="btn_save_approve">Approve</div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-metode_mesin_approve-close img-replace-metode_mesin_approve">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        $('#btn_save_approve').on('click', function () {
            var set_approve_book_code = document.getElementById('set_approve_book_code').value;
            var set_approve_token = document.getElementById('set_approve_token').value;

            var modal_approve = document.getElementById("myModal_approve");
            var span = document.getElementsByClassName("close")[0];
            var push = document.getElementById("push_text_approve");
            if (set_approve_book_code == "") {
                push.innerHTML = "<p>booking code must be Fill</p>";
                modal_approve.style.display = "block";
                span.onclick = function () {
                    modal_approve.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal_approve) {
                        modal_approve.style.display = "none";
                    }
                }
            } else if (set_approve_book_code != "") {
                if (set_approve_token == "") {
                    push.innerHTML = "<p>token must be Fill</p>";
                    modal_approve.style.display = "block";
                    span.onclick = function () {
                        modal_approve.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal_approve) {
                            modal_approve.style.display = "none";
                        }
                    }
                } else if (set_approve_token != "") {
                    var datjson = new Object();
                    datjson.book_code = set_approve_book_code;
                    datjson.procCode = "500023";
                    datjson.user_id = window.localStorage.getItem('lab_user_id');
                    datjson.token = set_approve_token;

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
                                destroyQc();
                                getListQc();
                                alert('Success Approve & Set Final : ' + set_approve_book_code + ', please go to email hasil');
                                $('.cd-popup-metode_mesin_approve').removeClass('is-visible');
                            } else {
                                alert('Failed Set Final : ' + response.respDesc);
                            }
                        },
                        complete: function () {
                            $('#loader').addClass('hidden');
                        }
                    });
                }
            }
        });
    });
</script>