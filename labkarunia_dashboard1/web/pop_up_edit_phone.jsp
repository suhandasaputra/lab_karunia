<%-- 
    Document   : pop_up_add_category
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-add-category
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-contact {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-phone {
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
    .cd-popup-edit-phone.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-phone-container {
        position: relative;
        width: 90%;
        height: 300px;
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

    .cd-popup-edit-phone-container .cd-buttons-add-category:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-phone-container .cd-buttons-add-category li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-phone-container .cd-buttons-add-category div {
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
    .cd-popup-edit-phone-container .cd-buttons-add-category li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-phone-container .cd-buttons-add-category li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-phone-container .cd-buttons-add-category li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-phone-container .cd-buttons-add-category li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-phone-container .cd-buttons-add-category li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-phone-container .cd-buttons-add-category li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-phone-container .cd-popup-edit-phone-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-phone-container .cd-popup-edit-phone-close::before, .cd-popup-edit-phone-container .cd-popup-edit-phone-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-phone-container .cd-popup-edit-phone-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-phone-container .cd-popup-edit-phone-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-phone-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-phone-container {
            margin: 8em auto;
        }
    }
    #label_edit_contact {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_contact{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_reset {
        width: 300px;
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
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_cancel_pass {
        cursor: pointer;
        width: 100px;
        background-color: #af5858;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_sreset_pass {
        cursor: pointer;
        width: 100px;
        background-color: #29B19C;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_pass:hover {
        background-color: #CCC;
    }
    #btn_sreset_pass:hover {
        background-color: #CCC;
    }
    .image-upload > input {
        visibility:hidden;
        width:0;
        height:0
    }
    #panel_img {
        margin: 15px;
        height: 300px;
        width: 430px;
        background-color: white;
    }
    #blah {
        width: 430px;;
        height: 300px;
    }
    #btn_upl {
        width: 100px;
    }
    #img_filechooser_category {
        width: 215px;
        height: 200px;
    }
</style>


<script>
    jQuery(document).ready(function ($) {
        //open popup edit contact
        $('#reset_password').on('click', function (event) {
            event.preventDefault();
//            var phone = document.getElementById("phone").value;
//            document.getElementById("phonenumber").value = phone;
            $('.cd-popup-edit-phone').addClass('is-visible');
        });

        //close popup edit contact
        $('.cd-popup-edit-phone').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-phone-close') || $(event.target).is('.cd-popup-edit-phone') || $(event.target).is('#btn_cancel_pass')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit contact
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-phone').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-edit-phone" role="alert">
    <div class="cd-popup-edit-phone-container">
        <label id="label_edit_contact">Reset Password</label>
        <div id="boxx_contact">
            <div id="box2_reset">

                <label style="font-weight: 100;
                       margin: 20px 0px 3px 0px;
                       font-weight: 600;
                       color: black;
                       font-size: 18px;">#password will send to your email</label>
                <br>
                <div id="buttonon">
                    <div id="btn_cancel_pass">No</div>
                    <div id="btn_sreset_pass">Yes</div>
                </div>
                <div id="msgbox"></div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-phone-close img-replace-edit-contact">Close</a>
    </div>
</div>
<%--<%@include file='pop_up_provide_password.jsp'%>--%>

<script>
    jQuery(document).ready(function ($) {
        //open popup add category
        $('#box1_contact').on('click', function (event) {
            $('#file-input-contact').trigger('click');
        });
        $('#btn_sreset_pass').on('click', function (event) {
            var user_id = window.localStorage.getItem('lab_user_id');
//            var ins_code = window.localStorage.getItem('lab_ins_code');
            var datjson = new Object();
            datjson.procCode = '100005';
            datjson.user_id = user_id;
//            datjson.ins_code = ins_code;
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
                        alert('success reset password');
                        window.location.href = "ho";
                    } else {
                        alert('Failed reset password');
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });
    });
</script>