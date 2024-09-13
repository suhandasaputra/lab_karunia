<%-- 
    Document   : pop_up_add_category
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-pasien
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-pasien {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-pasien {
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
    .cd-popup-add-pasien.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-pasien-container {
        position: relative;
        width: 90%;
        height: 650px;
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

    .cd-popup-add-pasien-container .cd-buttons-add-pasien:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-pasien-container .cd-buttons-add-pasien li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-pasien-container .cd-buttons-add-pasien div {
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
    .cd-popup-add-pasien-container .cd-buttons-add-pasien li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-pasien-container .cd-buttons-add-pasien li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-pasien-container .cd-buttons-add-pasien li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-pasien-container .cd-buttons-add-pasien li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-pasien-container .cd-buttons-add-pasien li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-pasien-container .cd-buttons-add-pasien li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-pasien-container .cd-popup-add-pasien-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-pasien-container .cd-popup-add-pasien-close::before, .cd-popup-add-pasien-container .cd-popup-add-pasien-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-pasien-container .cd-popup-add-pasien-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-pasien-container .cd-popup-add-pasien-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-pasien-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-pasien-container {
            margin: 8em auto;
        }
    }
    #label_add_pasien {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_pasien{
        padding: 20px;
        display: flex;
        justify-content: center;
        align-content: center;
    }


    #img_ktp2, #img_passport2, #img_self2 {
        width: 200px;
        height: 150px;
        margin-bottom: 5px;
    }



    #box1_add_pasien {
        cursor: pointer;
        width: 215px;
        height: 530px;
        margin-right: 5px;
        /*background-color: #68f3e9;*/
        border-radius: 5px;
    }




    #box2_add_pasien {
        width: 215px;
        height: 530px;
        margin-left: 5px;
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
    #buttonon_pasien {
        justify-content: center;
        color: white;
        margin-top: 10px;
        display: flex;
    }
    #btn_cancel_pasien {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_pasien {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_pasien:hover {
        background-color: #CCC;
    }
    #btn_submit_pasien:hover {
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
        if (userlevel !== 'owner') {
            $('#option_manager').remove();
        }
        $('#img_ktp2').on('click', function (event) {
            $('#file-input-item').trigger('click');
        });

        $('#img_passport2').on('click', function (event) {
            $('#file-input-item2').trigger('click');
        });

        $('#img_self2').on('click', function (event) {
            $('#file-input-item3').trigger('click');
        });

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
//                        var options;
                    var options = '<option selected="true" disabled value="">Pilih Negara</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].kwn_code + '">' + data[i].kwn_name + '</option>';
                    }
                    $("select#add_pasien_nationality").html(options);
                } else {
                    alert('Failed get data kewarganegaraan : ' + response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });


        //open popup provide password
        $('#add_pasien').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-pasien').addClass('is-visible');
        });

        //close popup provide password
        $('.cd-popup-add-pasien').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-pasien-close') || $(event.target).is('.cd-popup-add-pasien') || $(event.target).is('#btn_cancel_pasien')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_pasien")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-pasien').removeClass('is-visible');
            }
        });










    });
</script>
<div class="cd-popup-add-pasien" role="alert">
    <div class="cd-popup-add-pasien-container">
        <label id="label_add_pasien">Register Pasien2</label>
        <div id="boxx_add_pasien">
            <div id="box1_add_pasien">
                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">ktp</label>
                <img id="img_ktp2" src="image/upload_icon.jpeg">
                <input id="file-input-item" name="file1" type="file" onchange="readURLItem(this)" style="display: none"/>
                <input type="text" readonly name="img_item" id="img_item" hidden=""/>
                <script>
                    function readURLItem(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();
                            reader.onload = function (e) {

                                var layar = window.screen.availWidth;
                                if (layar < 400) {
                                    $('#img_ktp2')
                                            .attr('src', e.target.result)
                                            .width(190)
                                            .height(200);
                                } else if (layar > 400) {
                                    $('#img_ktp2')
                                            .attr('src', e.target.result)
//                                            .width(215)
//                                            .height(200);
                                }
                            };
                            reader.readAsDataURL(input.files[0]);
                        }
                    }

                    if (window.File && window.FileReader && window.FileList && window.Blob) {
                        document.getElementById('file-input-item').addEventListener('change', handleFileSelectItem, false);
                    } else {
                        alert('The File APIs are not fully supported in this browser.');
                    }
                    function handleFileSelectItem(evt) {
                        var f = evt.target.files[0]; // FileList object
                        var reader = new FileReader();
                        // Closure to capture the file information.
                        reader.onload = (function (theFile) {
                            return function (e) {
                                var binaryData = e.target.result;
                                //Converting Binary Data to base 64
                                var base64String = window.btoa(binaryData);
                                //showing file converted to base64
                                document.getElementById('img_item').value = base64String;
                            };
                        })(f);
                        reader.readAsBinaryString(f);
                    }
                </script>






                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">passport</label>                
                <img id="img_passport2" src="image/upload_icon.jpeg">
                <input id="file-input-item2" name="file2" type="file" onchange="readURLItem2(this)" style="display: none"/>
                <input type="text" readonly name="img_item2" id="img_item2" hidden=""/>
                <script>
                    function readURLItem2(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();
                            reader.onload = function (e) {

                                var layar = window.screen.availWidth;
                                if (layar < 400) {
                                    $('#img_passport2')
                                            .attr('src', e.target.result)
                                            .width(190)
                                            .height(200);
                                } else if (layar > 400) {
                                    $('#img_passport2')
                                            .attr('src', e.target.result)
//                                            .width(215)
//                                            .height(200);
                                }
                            };
                            reader.readAsDataURL(input.files[0]);
                        }
                    }

                    if (window.File && window.FileReader && window.FileList && window.Blob) {
                        document.getElementById('file-input-item2').addEventListener('change', handleFileSelectItem2, false);
                    } else {
                        alert('The File APIs are not fully supported in this browser.');
                    }
                    function handleFileSelectItem2(evt) {
                        var f = evt.target.files[0]; // FileList object
                        var reader = new FileReader();
                        // Closure to capture the file information.
                        reader.onload = (function (theFile) {
                            return function (e) {
                                var binaryData = e.target.result;
                                //Converting Binary Data to base 64
                                var base64String = window.btoa(binaryData);
                                //showing file converted to base64
                                document.getElementById('img_item2').value = base64String;
                            };
                        })(f);
                        reader.readAsBinaryString(f);
                    }
                </script>




                <label style="margin: 0px 0px 0px 10px;
                       font-size: 10px;
                       font-weight: 100;
                       float: left;">foto diri</label>
                <img id="img_self2" src="image/upload_icon.jpeg">

                <input id="file-input-item3" name="file3" type="file" onchange="readURLItem3(this)" style="display: none"/>
                <input type="text" readonly name="img_item3" id="img_item3" hidden=""/>
                <script>
                    function readURLItem3(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();
                            reader.onload = function (e) {

                                var layar = window.screen.availWidth;
                                if (layar < 400) {
                                    $('#img_self2')
                                            .attr('src', e.target.result)
                                            .width(190)
                                            .height(200);
                                } else if (layar > 400) {
                                    $('#img_self2')
                                            .attr('src', e.target.result)
//                                            .width(215)
//                                            .height(200);
                                }
                            };
                            reader.readAsDataURL(input.files[0]);
                        }
                    }

                    if (window.File && window.FileReader && window.FileList && window.Blob) {
                        document.getElementById('file-input-item3').addEventListener('change', handleFileSelectItem3, false);
                    } else {
                        alert('The File APIs are not fully supported in this browser.');
                    }
                    function handleFileSelectItem3(evt) {
                        var f = evt.target.files[0]; // FileList object
                        var reader = new FileReader();
                        // Closure to capture the file information.
                        reader.onload = (function (theFile) {
                            return function (e) {
                                var binaryData = e.target.result;
                                //Converting Binary Data to base 64
                                var base64String = window.btoa(binaryData);
                                //showing file converted to base64
                                document.getElementById('img_item3').value = base64String;
                            };
                        })(f);
                        reader.readAsBinaryString(f);
                    }
                </script>
            </div>











            <div id="box2_add_pasien">
                <div id="input_add_lab">
                    <form id="form_add_pasien">
                        <div id="myModal_add_pasien" class="modal">
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <div id="push_text_add_pasien"></div>
                            </div>
                        </div>
                        <!--<label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">pasien code</label><input type="text" id="add_pasien_code" required="" placeholder="code">-->
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">identity number</label><input type="text" id="add_pasien_id_card_number" required="" placeholder="identity number">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">passport number</label><input type="text" id="add_pasien_passport_number" required="" placeholder="passport number">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">pasien name</label><input type="text" id="add_pasien_name" required="" placeholder="name">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">gender</label>
                        <!--<input type="text" id="add_pasien_gender" required="" placeholder="gender">-->
                        <select id="add_pasien_gender">
                            <option value="laki-laki">laki-laki</option>
                            <option value="perempuan">perempuan</option>
                        </select>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">birthdate</label><input type="date" id="add_pasien_birthdate" required="" placeholder="birtdate">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">nationality</label>
                        <!--<input type="text" id="add_pasien_nationality" required="" placeholder="nationality">-->
                        <select id="add_pasien_nationality"></select>
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">address</label><input type="text" id="add_pasien_address" required="" placeholder="address">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">email</label><input type="text" id="add_pasien_email" required="" placeholder="email">
                        <label style="margin-bottom: 0px; font-size: 10px; float: left; font-weight: 100">phone</label><input type="tel" id="add_pasien_phone" required="" placeholder="phone">
                    </form>
                    <div id="buttonon_pasien">
                        <div id="btn_cancel_pasien">Cancel</div>
                        <div id="btn_submit_pasien" onclick="sub_out_pasien()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-pasien-close img-replace-add-pasien">Close</a>
    </div>
</div>
<script>
    function sub_out_pasien() {

        var idcard_number = document.getElementById("add_pasien_id_card_number").value;
        var passport_number = document.getElementById("add_pasien_passport_number").value;
        var name = document.getElementById("add_pasien_name").value;
        var gender = document.getElementById('add_pasien_gender').value;
        var birth_date = document.getElementById("add_pasien_birthdate").value;
        var citizenship = document.getElementById("add_pasien_nationality").value;
        var address = document.getElementById("add_pasien_address").value;
        var email = document.getElementById('add_pasien_email').value;
        var phonenumber = document.getElementById("add_pasien_phone").value;

        var idcard_img64 = document.getElementById("img_item").value;
        var passport_img64 = document.getElementById("img_item2").value;
        var self_img64 = document.getElementById("img_item3").value;

        var modal = document.getElementById("myModal_add_pasien");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text_add_pasien");
        ;
        if (idcard_number == "") {
            push.innerHTML = "<p>id card must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (idcard_number != "") {
            if (passport_number == "") {
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
            } else if (passport_number != "") {
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
                    if (gender == "") {
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
                    } else if (gender != "") {
                        if (birth_date == "") {
                            push.innerHTML = "<p>birthdate must be fill</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (birth_date != "") {
                            if (citizenship == "") {
                                push.innerHTML = "<p>nationality must be fill</p>";
                                modal.style.display = "block";
                                span.onclick = function () {
                                    modal.style.display = "none";
                                }
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            } else if (citizenship != "") {
                                if (address == "") {
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
                                } else if (address != "") {
                                    if (email == "") {
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
                                    } else if (email != "") {
                                        if (phonenumber == "") {
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
                                        } else if (phonenumber != "") {
                                            if (idcard_img64 == "") {
                                                push.innerHTML = "<p>image ktp must be fill</p>";
                                                modal.style.display = "block";
                                                span.onclick = function () {
                                                    modal.style.display = "none";
                                                }
                                                window.onclick = function (event) {
                                                    if (event.target == modal) {
                                                        modal.style.display = "none";
                                                    }
                                                }
                                            } else if (idcard_img64 != "") {
                                                if (passport_img64 == "") {
                                                    push.innerHTML = "<p>image passport must be fill</p>";
                                                    modal.style.display = "block";
                                                    span.onclick = function () {
                                                        modal.style.display = "none";
                                                    }
                                                    window.onclick = function (event) {
                                                        if (event.target == modal) {
                                                            modal.style.display = "none";
                                                        }
                                                    }
                                                } else if (passport_img64 != "") {
                                                    if (self_img64 == "") {
                                                        push.innerHTML = "<p>image self must be fill</p>";
                                                        modal.style.display = "block";
                                                        span.onclick = function () {
                                                            modal.style.display = "none";
                                                        }
                                                        window.onclick = function (event) {
                                                            if (event.target == modal) {
                                                                modal.style.display = "none";
                                                            }
                                                        }
                                                    } else if (self_img64 != "") {
                                                        var datjson2 = new Object();

                                                        datjson2.procCode = "300013";
                                                        datjson2.user_id = window.localStorage.getItem('lab_user_id');

                                                        datjson2.idcard_number = idcard_number;
                                                        datjson2.passport_number = passport_number;
                                                        datjson2.name = name;
                                                        datjson2.gender = gender;
                                                        datjson2.birth_date = birth_date;
                                                        datjson2.citizenship = citizenship;
                                                        datjson2.address = address;
                                                        datjson2.email = email;
                                                        datjson2.phonenumber = phonenumber;
                                                        datjson2.idcard_img64 = idcard_img64;
                                                        datjson2.passport_img64 = passport_img64;
                                                        datjson2.self_img64 = self_img64;
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
                                                                    destroyPasien();
                                                                    getlistPasien();
                                                                    alert('success register pasien : ' + idcard_number);
                                                                    $('.cd-popup-add-pasien').removeClass('is-visible');
                                                                    $("#form_add_pasien")[0].reset();
                                                                } else {
                                                                    alert('failed register pasien : ' + response.respDesc);
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
            }
        }
    }
</script>