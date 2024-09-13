<%-- 
    Document   : pop_up_edit_draft_pasien
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-edit-draft-to-pasien
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-draft-to-pasien {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-draft-to-pasien {
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
    .cd-popup-edit-draft-to-pasien.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-draft-to-pasien-container {
        position: relative;
        width: 90%;
        height: 680px;
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

    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien div {
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
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-draft-to-pasien-container .cd-buttons-edit-draft-to-pasien li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-popup-edit-draft-to-pasien-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-popup-edit-draft-to-pasien-close::before, .cd-popup-edit-draft-to-pasien-container .cd-popup-edit-draft-to-pasien-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-popup-edit-draft-to-pasien-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-draft-to-pasien-container .cd-popup-edit-draft-to-pasien-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-draft-to-pasien-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-draft-to-pasien-container {
            margin: 8em auto;
        }
    }
    #label_edit_draft_pasien {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_draft_pasien{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-edit-draft-to-pasien {
        cursor: pointer;
        width: 215px;
        height: 600px;
        margin-right: 5px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
    }
    #box2-edit-draft-to-pasien {
        width: 215px;
        height: 600px;
        /*margin-left: 5px;*/
        /*background-color: yellow;*/
    }
    input, select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100%;
        margin-bottom: 5px;
    }

    #buttonon {
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_reject-edit-draft-to-pasien {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        border-radius: 3px;
    }
    #btn-cancel-edit-draft-to-pasien {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn-save-edit-draft-to-pasien {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn-cancel-edit-draft-to-pasien:hover {
        background-color: #CCC;
    }
    #btn_reject-edit-draft-to-pasien:hover {
        background-color: #CCC;
    }
    #btn-save-edit-draft-to-pasien:hover {
        background-color: #CCC;
    }

    #img_ktp1, #img_passport1, #img_self1 {
        width: 200px;
        height: 150px;
        margin-bottom: 5px;
    }





    /*--------------------------------------------------------------------------*/

    #myImg {
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
    }

    #myImg:hover {opacity: 0.7;}

    /* The Modal (background) */
    .modal {
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
    .modal-content {
        margin: auto;
        display: block;
        width: 90%;
        max-width: 700px;
    }



    /* Add Animation */
    .modal-content {  
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

        #box1-edit-draft-to-pasien {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-edit-draft-to-pasien {
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
        var datjson4 = new Object();
        datjson4.procCode = "200004";
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
                    var options;
//                    var options = '<option selected="true" disabled value=""></option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].kwn_code + '">' + data[i].kwn_name + '</option>';
                    }
                    $("select#edit_regispasien_nation").html(options);
                } else {
                    alert('Failed get data kewarganegaraan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });




        //open popup add category
        $('#table_draftpasien').on('click', 'td:nth-child(-n+14)', function () {
            var row = $(this).closest("tr");    // Find the row
            var patient_id = $('#table_draftpasien').DataTable().row(row).data().patient_id;

            var datjson3 = new Object();
            datjson3.procCode = "400013";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.patient_id = patient_id;
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
                        document.getElementById("edit_regispasien_code").value = patient_id;
                        document.getElementById("edit_regispasien_identitynumber").value = response.idcard_number;
                        document.getElementById("edit_regispasien_passport").value = response.passport_number;

                        document.getElementById("edit_regispasien_name").value = response.name;
                        document.getElementById("edit_regispasien_gender").value = response.gender;
                        document.getElementById("edit_regispasien_birthday").value = response.birth_date;

                        document.getElementById("edit_regispasien_nation").value = response.citizenship;
                        document.getElementById("edit_regispasien_adress").value = response.address;
                        document.getElementById("edit_regispasien_email").value = response.email;
                        document.getElementById("edit_regispasien_phone").value = response.phonenumber;

                        var img_ktp1 = document.getElementById('img_ktp1');
                        img_ktp1.src = response.idcard_img;

                        var img_passport1 = document.getElementById('img_passport1');
                        img_passport1.src = response.passport_img;

                        var img_self1 = document.getElementById('img_self1');
                        img_self1.src = response.self_img;

                        if (response.status == '1') {
                            document.getElementById("status").innerHTML = '<label class="switch"><input type="checkbox" id="change_srp" checked="" disabled><div class="slider round"></div></label>';
                        } else if (response.status == '0') {
                            document.getElementById("status").innerHTML = '<label class="switch"><input type="checkbox" id="change_srp" disabled><div class="slider round"></div></label>';
                        }

                        if (response.register_status == '1') {
                            document.getElementById("reg_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_sregpasien" checked="" disabled><div class="slider round"></div></label>';
                        } else if (response.register_status == '0') {
                            document.getElementById("reg_status").innerHTML = '<label class="switch"><input type="checkbox" id="change_sregpasien" disabled><div class="slider round"></div></label>';
                        }



                        var modal = document.getElementById("myModal");
                        var modalImg = document.getElementById("img01");
                        img_ktp1.onclick = function () {
                            modal.style.display = "block";
                            modalImg.src = this.src;
                        };
                        img_passport1.onclick = function () {
                            modal.style.display = "block";
                            modalImg.src = this.src;
                        };
                        img_self1.onclick = function () {
                            modal.style.display = "block";
                            modalImg.src = this.src;
                        };
                        var span = document.getElementsByClassName("close")[0];
                        span.onclick = function () {
                            modal.style.display = "none";
                        };
                        $('.cd-popup-edit-draft-to-pasien').addClass('is-visible');
                    } else {
                        alert('Failed get data pasien : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        });





        //close popup add category
        $('.cd-popup-edit-draft-to-pasien').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-draft-to-pasien-close') || $(event.target).is('.cd-popup-edit-draft-to-pasien') || $(event.target).is('#btn-cancel-edit-draft-to-pasien')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_edit_draft_pasien")[0].reset();
                $('#img_ktp1').prop('src', 'image/upload_icon.jpeg');

            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-draft-to-pasien').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-edit-draft-to-pasien" role="alert">
    <div class="cd-popup-edit-draft-to-pasien-container">
        <label id="label_edit_draft_pasien">Update Draft Pasien</label>
        <div id="boxx_edit_draft_pasien">
            <div id="box1-edit-draft-to-pasien">
                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">ktp</label>
                <img id="img_ktp1" src="image/upload_icon.jpeg">
                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">passport</label>                
                <img id="img_passport1" src="image/upload_icon.jpeg">
                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">foto diri</label>
                <img id="img_self1" src="image/upload_icon.jpeg">
            </div>
            <div id="box2-edit-draft-to-pasien">
                <div id="input_category">
                    <form id="form_edit_draft_pasien">
                        <div id="myModal_edit_draft_pasien" class="modal">
                            <div class="modal-content">
                                <span class="close_edit_draft_pasien">&times;</span>
                                <div id="push_text_edit_draft_pasien"></div>
                            </div>
                        </div>
                        <!-- The Modal -->
                        <div id="myModal" class="modal">
                            <span class="close">&times;</span>
                            <img class="modal-content" id="img01">
                        </div>

                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">pasien code</label><input type="text" id="edit_regispasien_code" required="" placeholder="code" readonly="" style="background-color: aqua">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">identity number</label><input type="text" id="edit_regispasien_identitynumber" required="" placeholder="identity number">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">passport number</label><input type="text" id="edit_regispasien_passport" required="" placeholder="passport number">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">pasien name</label><input type="text" id="edit_regispasien_name" required="" placeholder="name">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">gender</label>
                        <select id="edit_regispasien_gender" required="">
                            <option value="laki-laki">laki-laki</option>
                            <option value="perempuan">perempuan</option>
                        </select>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">birthdate</label><input type="text" id="edit_regispasien_birthday" required="" placeholder="birtdate">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">nationality</label>
                        <select id="edit_regispasien_nation" required="">
                        </select>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">address</label><input type="text" id="edit_regispasien_adress" required="" placeholder="address">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">email</label><input type="text" id="edit_regispasien_email" required="" placeholder="email">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">phone</label><input type="text" id="edit_regispasien_phone" required="" placeholder="phone">
                        <div style="display: inline-flex">
                            <div id="status"></div><label style="font-size: 12px">status</label><br>
                            <div id="reg_status"></div><label style="font-size: 12px">reg status</label>
                        </div>

                    </form>
                    <div id="buttonon">
                        <div id="btn_reject-edit-draft-to-pasien">Reject</div>
                        <div id="btn-cancel-edit-draft-to-pasien">Cancel</div>
                        <div id="btn-save-edit-draft-to-pasien">Save</div>
                    </div>

                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-draft-to-pasien-close img-replace-edit-draft-to-pasien">Close</a>
    </div>
</div>
<script>
    jQuery(document).ready(function ($) {
        var user = window.localStorage.getItem('lab_user_id');
        $('#btn-save-edit-draft-to-pasien').on('click', function () {

            var edit_regispasien_code = document.getElementById('edit_regispasien_code').value;
            var edit_regispasien_identitynumber = document.getElementById('edit_regispasien_identitynumber').value;
            var edit_regispasien_passport = document.getElementById('edit_regispasien_passport').value;
            var edit_regispasien_name = document.getElementById('edit_regispasien_name').value;
            var edit_regispasien_gender = document.getElementById('edit_regispasien_gender').value;
            var edit_regispasien_birthday = document.getElementById('edit_regispasien_birthday').value;
            var edit_regispasien_nation = document.getElementById('edit_regispasien_nation').value;
            var edit_regispasien_adress = document.getElementById('edit_regispasien_adress').value;
            var edit_regispasien_email = document.getElementById('edit_regispasien_email').value;
            var edit_regispasien_phone = document.getElementById('edit_regispasien_phone').value;

            var modal = document.getElementById("myModal_edit_draft_pasien");
            var span = document.getElementsByClassName("close_edit_draft_pasien")[0];
            var push = document.getElementById("push_text_edit_draft_pasien");

            if (edit_regispasien_code == "") {
                push.innerHTML = "<p>code must be Fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (edit_regispasien_code != "") {
                if (edit_regispasien_identitynumber == "") {
                    push.innerHTML = "<p>id number must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (edit_regispasien_identitynumber != "") {



                    if (edit_regispasien_passport == "") {
                        push.innerHTML = "<p>passport must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (edit_regispasien_passport != "") {
                        if (edit_regispasien_name == "") {
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
                        } else if (edit_regispasien_name != "") {
                            if (edit_regispasien_gender == "") {
                                push.innerHTML = "<p>gender must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (edit_regispasien_gender != "") {
                                if (edit_regispasien_birthday == "") {
                                    push.innerHTML = "<p>birthday must be fill</p>";
                                    modal.style.display = "block";
                                    span.onclick = function () {
                                        modal.style.display = "none";
                                    }
                                    window.onclick = function (event) {
                                        if (event.target == modal) {
                                            modal.style.display = "none";
                                        }
                                    }
                                } else if (edit_regispasien_birthday != "") {
                                    if (edit_regispasien_nation == "") {
                                        push.innerHTML = "<p>nation must be fill</p>";
                                        modal.style.display = "block";
                                        span.onclick = function () {
                                            modal.style.display = "none";
                                        }
                                        window.onclick = function (event) {
                                            if (event.target == modal) {
                                                modal.style.display = "none";
                                            }
                                        }
                                    } else if (edit_regispasien_nation != "") {
                                        if (edit_regispasien_adress == "") {
                                            push.innerHTML = "<p>address must be fill</p>";
                                            modal.style.display = "block";
                                            span.onclick = function () {
                                                modal.style.display = "none";
                                            }
                                            window.onclick = function (event) {
                                                if (event.target == modal) {
                                                    modal.style.display = "none";
                                                }
                                            }
                                        } else if (edit_regispasien_adress != "") {
                                            if (edit_regispasien_email == "") {
                                                push.innerHTML = "<p>email must be fill</p>";
                                                modal.style.display = "block";
                                                span.onclick = function () {
                                                    modal.style.display = "none";
                                                }
                                                window.onclick = function (event) {
                                                    if (event.target == modal) {
                                                        modal.style.display = "none";
                                                    }
                                                }
                                            } else if (edit_regispasien_email != "") {
                                                if (edit_regispasien_phone == "") {
                                                    push.innerHTML = "<p>phone must be fill</p>";
                                                    modal.style.display = "block";
                                                    span.onclick = function () {
                                                        modal.style.display = "none";
                                                    }
                                                    window.onclick = function (event) {
                                                        if (event.target == modal) {
                                                            modal.style.display = "none";
                                                        }
                                                    }
                                                } else if (edit_regispasien_phone != "") {

                                                    var datjson = new Object();
                                                    
                                                    datjson.patient_id = edit_regispasien_code;
                                                    datjson.procCode = "500013";
                                                    datjson.user_id = user;
                                                    datjson.idcard_number = edit_regispasien_identitynumber;
                                                    datjson.passport_number = edit_regispasien_passport;
                                                    datjson.name = edit_regispasien_name;
                                                    datjson.gender = edit_regispasien_gender;
                                                    datjson.birth_date = edit_regispasien_birthday;
                                                    datjson.citizenship = edit_regispasien_nation;
                                                    datjson.address = edit_regispasien_adress;
                                                    datjson.email = edit_regispasien_email;
                                                    datjson.phonenumber = edit_regispasien_phone;
                                                    datjson.status = "1";
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
                                                                destroyDraftPasien();
                                                                getDraftPasien();
                                                                alert('Success Update Draft Pasien data');
                                                                $('.cd-popup-edit-draft-to-pasien').removeClass('is-visible');
                                                            } else {
                                                                alert('Failed Update Draft Pasien data');
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
                    }
                }
            }
        });





        $('#btn_reject-edit-draft-to-pasien').on('click', function () {
            var edit_regispasien_code = document.getElementById('edit_regispasien_code').value;

            var modal = document.getElementById("myModal_edit_draft_pasien");
            var span = document.getElementsByClassName("close_edit_draft_pasien")[0];
            var push = document.getElementById("push_text_edit_draft_pasien");

            if (edit_regispasien_code == "") {
                push.innerHTML = "<p>code must be Fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (edit_regispasien_code != "") {

                var datjson = new Object();
                datjson.patient_id = edit_regispasien_code;
                datjson.procCode = "600013";
                datjson.user_id = user;
                $.ajax({
                    contentType: 'application/json',
                    dataType: "json",
                    url: "http://www.app.mobatech.net:80/KaruniaLAB/API",
                    data: JSON.stringify(datjson),
                    type: 'post',
                    success: function (response) {
                        if (response.respCode == 0000) {
                            destroyDraftPasien();
                            getDraftPasien();
                            alert('Reject Draft Pasien');
                            $('.cd-popup-edit-draft-to-pasien').removeClass('is-visible');
                        } else {
                            alert('Failed Reject Draft Pasien : ' + response.respDesc);
                        }
                    }
                });
            }
        });
    });
</script>