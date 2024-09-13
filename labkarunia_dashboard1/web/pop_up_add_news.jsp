<%-- 
    Document   : pop_up_add_news
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<style>
    .cd-buttons-add-news
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-add-news {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-add-news {
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
    .cd-popup-add-news.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-add-news-container {
        position: relative;
        width: 90%;
        height: 630px;
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

    .cd-popup-add-news-container .cd-buttons-add-news:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-add-news-container .cd-buttons-add-news li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-add-news-container .cd-buttons-add-news div {
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
    .cd-popup-add-news-container .cd-buttons-add-news li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-add-news-container .cd-buttons-add-news li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-add-news-container .cd-buttons-add-news li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-add-news-container .cd-buttons-add-news li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-add-news-container .cd-buttons-add-news li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-add-news-container .cd-buttons-add-news li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-add-news-container .cd-popup-add-news-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-add-news-container .cd-popup-add-news-close::before, .cd-popup-add-news-container .cd-popup-add-news-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-add-news-container .cd-popup-add-news-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-add-news-container .cd-popup-add-news-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-add-news-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-add-news-container {
            margin: 8em auto;
        }
    }
    #label_add_news {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_add_news{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_add_news {
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
        height: 115px;
    }
    #buttonon_add_news {
        color: white;
        margin-top: 10px;
        display: flex;
        position: relative;
        justify-content: center;
    }
    #btn_cancel_add_news {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_add_news {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_cancel_add_news:hover {
        background-color: #CCC;
    }
    #btn_submit_add_news:hover {
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

    #img_news{
        width: 250px;
        height: 150px;
        margin-bottom: 5px;
    }






    #lbl1{font-size: 10px; float: left; font-weight: 600}
    #lbl2{font-size: 10px; float: left; font-weight: 600}
    #lbl3{font-size: 10px; float: left; font-weight: 600}
    #lbl4{font-size: 10px; float: left; font-weight: 600}
    #lbl5{font-size: 10px; float: left; font-weight: 600}
    #lbl6{font-size: 10px; font-weight: 600}


    @media only screen and (max-width: 400px) {
        #lbl1{font-size: 10px; float: left; font-weight: 600;margin-left: 10px}
        #lbl2{font-size: 10px; float: left; font-weight: 600;margin-left: 10px}
        #lbl3{font-size: 10px; float: left; font-weight: 600;margin-left: 10px}
        #lbl4{font-size: 10px; float: left; font-weight: 600;margin-left: 10px}
        #lbl5{font-size: 10px; float: left; font-weight: 600; top: -144px; position: relative; left: 220px;}


    }
</style>


<script>
    jQuery(document).ready(function ($) {
        $('#img_news').on('click', function (event) {
            $('#file-input-item').trigger('click');
        });

        var datjson2 = new Object();
        datjson2.procCode = "200005";
        datjson2.user_id = window.localStorage.getItem('lab_user_id');
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
                    var data = response.list;
                    var options = '<option selected disabled value="">Select Lab</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].outlet_id + '">' + data[i].outlet_id + '</option>';
                    }
                    $("select#outlet_id_add_cus").html(options);
                } else {
                    alert('gagal mengambil data lab ' + response.respCode);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        var datjson3 = new Object();
        datjson3.procCode = "200010";
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
                    var options = '<option selected disabled value="">Select Sales</option>';
                    for (var i = 0; i < data.length; i++) {
                        options += '<option value="' + data[i].sales_code + '">' + data[i].sales_code + '</option>';
                    }
                    $("select#add_inst_sales").html(options);
                } else {
                    alert('gagal mengambil data sales ' + response.respCode);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });

        //open popup provide password
        $('#add_news').on('click', function (event) {
            event.preventDefault();
            $('.cd-popup-add-news').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-add-news').on('click', function (event) {
            if ($(event.target).is('.cd-popup-add-news-close') || $(event.target).is('.cd-popup-add-news') || $(event.target).is('#btn_cancel_add_news')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#form_add_news")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-add-news').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-add-news" role="alert">
    <div class="cd-popup-add-news-container">
        <label id="label_add_news">Create News</label>
        <div id="boxx_add_news">
            <div id="box2_add_news">
                <div id="input_add_news">
                    <form id="form_add_news">
                        <div id="myModal_add_news" class="modal">
                            <div class="modal-content">
                                <span class="close">&times;</span>
                                <div id="push_text_add_news"></div>
                            </div>
                        </div>
                        <label id="lbl2">title</label><br>
                        <input type="text" id="add_news_title" name="add_news_title" required="" placeholder="title"><br>
                        <label id="lbl3">start date</label><br>
                        <input type="date" id="add_news_startdate" name="add_news_startdate" required="" placeholder="start date"><br>
                        <label id="lbl4">end date</label><br>
                        <input type="date" id="add_news_enddate" name="add_news_enddate" required="" placeholder="end date"><br>
                        <label id="lbl5">description</label><br>
                        <textarea id="add_news_description" name="add_news_description" required="" placeholder="description"></textarea><br>
                        <label id="lbl6">image</label><br>






                        <img id="img_news" src="image/upload_icon.jpeg">
                        <input id="file-input-item" name="file1" type="file" onchange="readURLItem(this)" style="display: none"/>
                        <input type="text" readonly name="img_base64" id="img_base64" hidden=""/>
                        <script>
                            function readURLItem(input) {
                                if (input.files && input.files[0]) {
                                    var reader = new FileReader();
                                    reader.onload = function (e) {

                                        var layar = window.screen.availWidth;
                                        if (layar < 400) {
                                            $('#img_news')
                                                    .attr('src', e.target.result)
//                                                    .width(250)
//                                                    .height(200);
                                        } else if (layar > 400) {
                                            $('#img_news')
                                                    .attr('src', e.target.result)
//                                                    .width(215)
//                                                    .height(200);
                                        }
                                    }
                                    ;
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
                                        document.getElementById('img_base64').value = base64String;
                                    };
                                })(f);
                                reader.readAsBinaryString(f);
                            }
                        </script>
                    </form>
                    <div id="buttonon_add_news">
                        <div id="btn_cancel_add_news">Cancel</div>
                        <div id="btn_submit_add_news" onclick="sub_add_news()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-add-news-close img-replace-add-news">Close</a>
    </div>
</div>
<script>
    function sub_add_news() {

        var add_news_title = document.getElementById("add_news_title").value;
        var add_news_startdate = document.getElementById("add_news_startdate").value;
        var add_news_enddate = document.getElementById("add_news_enddate").value;
        var add_news_description = document.getElementById("add_news_description").value;
        var img_base64 = document.getElementById("img_base64").value;


        var modal = document.getElementById("myModal_add_news");
        var span = document.getElementsByClassName("close")[0];
        var push = document.getElementById("push_text_add_news");
        ;
        if (add_news_title == "") {
            push.innerHTML = "<p>title must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (add_news_title != "") {
            if (add_news_startdate == "") {
                push.innerHTML = "<p>start date must be fill</p>";
                modal.style.display = "block";
                span.onclick = function () {
                    modal.style.display = "none";
                }
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            } else if (add_news_startdate != "") {
                if (add_news_enddate == "") {
                    push.innerHTML = "<p>end date must be fill</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (add_news_enddate != "") {
                    if (add_news_description == "") {
                        push.innerHTML = "<p>description must be choose</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (add_news_description != "") {
                        if (img_base64 == "") {
                            push.innerHTML = "<p>image must be choose</p>";
                            modal.style.display = "block";
                            span.onclick = function () {
                                modal.style.display = "none";
                            }
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        } else if (img_base64 != "") {


                            var datjson4 = new Object();
                            datjson4.procCode = "300007";
                            datjson4.user_id = window.localStorage.getItem('lab_user_id');

                            datjson4.tittle = add_news_title;
                            datjson4.description = add_news_description;
                            datjson4.startdate = add_news_startdate + ' 00:00:00';
                            datjson4.enddate = add_news_enddate + ' 23:59:59';
                            datjson4.img64 = img_base64;

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
                                        destroyNews();
                                        getListNews();
                                        alert('success create news ' + add_news_title);
                                        $("#form_add_news")[0].reset();
                                        $('.cd-popup-add-news').removeClass('is-visible');
                                    } else {
                                        alert('Failed create news : ' + response.respDesc);
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