<%-- 
    Document   : pop_up_email_hasil
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-email-hasil
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-email-hasil {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-email-hasil {
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
    .cd-popup-add-email-hasil.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-email-hasil-container {
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

    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil div {
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
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-email-hasil-container .cd-buttons-add-email-hasil li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-email-hasil-container .cd-popup-add-email-hasil-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-email-hasil-container .cd-popup-add-email-hasil-close::before, .cd-popup-add-email-hasil-container .cd-popup-add-email-hasil-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-email-hasil-container .cd-popup-add-email-hasil-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-email-hasil-container .cd-popup-add-email-hasil-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-email-hasil-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-email-hasil-container {
            margin: 8em auto;
        }
    }
    #label_add_email_hasil {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_email_hasil{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_email_hasil {
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
    #buttonon_add_email_hasil {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_cancel_add_email_hasil {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_add_email_hasil {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_add_email_hasil:hover {
        background-color: #CCC;
    }
    #btn_submit_add_email_hasil:hover {
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


    #btn_recheck {
        cursor: pointer;
        width: 100px;
        background-color: #d3c91b;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_recheck:hover {
        background-color: #CCC;
    }
</style>


<script>
    jQuery(document).ready(function ($) {

        //open popup provide password
        $('#table_email_hasil').on('click', 'td:nth-child(-n+22)', function () {
//            event.preventDefault();
            var row = $(this).closest("tr");
            var patient_id = $('#table_email_hasil').DataTable().row(row).data().patient_id;
            var book_code = $('#table_email_hasil').DataTable().row(row).data().book_code;
            var hasil = $('#table_email_hasil').DataTable().row(row).data().final_result;
            var email = $('#table_email_hasil').DataTable().row(row).data().email;
            var tipe = $('#table_email_hasil').DataTable().row(row).data().ext;

            document.getElementById("add_email_hasil_kode_pasien").value = patient_id;
            document.getElementById("add_email_hasil_kode_booking").value = book_code;
            document.getElementById("add_email_hasil_hasil").value = hasil;
            document.getElementById("add_email_hasil_email").value = email;

            var cek_aktif = document.getElementById('change_status').checked;
            if (!cek_aktif) {
                if (tipe == 't') {
                    document.getElementById('btn_view_data').style.visibility = 'visible';
                }else {
                    document.getElementById('btn_view_data').style.visibility = 'hidden';
                }
                $('.cd-popup-add-email-hasil').addClass('is-visible');
            }
        });

        //close popup provide password
        $('.cd-popup-add-email-hasil').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-email-hasil-close') || $(event.target).is('.cd-popup-add-email-hasil') || $(event.target).is('#btn_cancel_add_email_hasil')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_email_hasil")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-email-hasil').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-add-email-hasil" role="alert">
    <div class="cd-popup-add-email-hasil-container">
        <label id="label_add_email_hasil">Kirim Email</label>
        <div id="boxx_add_email_hasil">
            <div id="input_add_lab">
                <form id="form_add_email_hasil">
                    <div id="myModal" class="modal">
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <div id="push_text"></div>
                        </div>
                    </div>
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">kode pasien</label><input type="text" id="add_email_hasil_kode_pasien" required="" placeholder="kode pasien" disabled="" readonly="">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">kode booking</label><input type="text" id="add_email_hasil_kode_booking" required="" placeholder="kode booking" disabled="" readonly="">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">email</label><input type="email" id="add_email_hasil_email" placeholder="email" required="" disabled="" readonly="">
                    <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">hasil</label><input type="text" id="add_email_hasil_hasil" required="" placeholder="hasil" disabled="" readonly="">                    

                </form>
                <div id="buttonon_add_email_hasil">
                    <div id="btn_cancel_add_email_hasil">Cancel</div>
                    <div id="btn_recheck">ReCheck</div>
                    <div id="btn_submit_add_email_hasil" onclick="sub_out()">Send</div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-top: 5px; width: 200px; padding: 0px" id="btn_view_data">View Data MCU</button>
                <div id="msgbox"></div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-email-hasil-close img-replace-add-email-hasil">Close</a>
    </div>
</div>
<script>
    function sub_out() {
        var add_email_hasil_kode_booking = document.getElementById("add_email_hasil_kode_booking").value;
        var add_email_hasil_email = document.getElementById("add_email_hasil_email").value;

        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text");
        ;
        if (add_email_hasil_kode_booking == "") {
            push.innerHTML = "<p>kode booking must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (add_email_hasil_kode_booking != "") {

            var datjson2 = new Object();

            datjson2.procCode = "100002";
            datjson2.user_id = window.localStorage.getItem('lab_user_id');
            datjson2.book_code = add_email_hasil_kode_booking;
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
                        destroyEmailhasil();
                        getListEmailhasil();
                        alert('success send email to : ' + add_email_hasil_email);
                        $('.cd-popup-add-email-hasil').removeClass('is-visible');
                        $("#form_add_email_hasil")[0].reset();
                    } else {
                        alert('failed send email : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
    }

    $('#btn_recheck').on('click', function () {
        var add_email_hasil_kode_booking = document.getElementById("add_email_hasil_kode_booking").value;

        var modal_qc = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text");
        if (add_email_hasil_kode_booking == "") {
            push.innerHTML = "<p>booking code must be Fill</p>";
            modal_qc.style.display = "block";
            span.onclick = function () {
                modal_qc.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal_qc) {
                    modal_qc.style.display = "none";
                }
            }
        } else if (add_email_hasil_kode_booking != "") {

            var datjson = new Object();
            datjson.book_code = add_email_hasil_kode_booking;
            datjson.procCode = "500025";
            datjson.user_id = window.localStorage.getItem('lab_user_id');

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
                        destroyEmailhasil();
                        getListEmailhasil();
                        alert('Success Recheck ' + add_email_hasil_kode_booking + ', back to setting hasil');
                        $('.cd-popup-add-email-hasil').removeClass('is-visible');
                        $("#form_add_email_hasil")[0].reset();
                    } else {
                        alert('Failed Recheck : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
    });
</script>