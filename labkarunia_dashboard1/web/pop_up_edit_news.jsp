<%--
    Document   : pop_up_edit_news
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

    .img-replace-edit-news {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-edit-news {
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
    .cd-popup-edit-news.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-edit-news-container {
        position: relative;
        width: 90%;
        height: 710px;
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

    .cd-popup-edit-news-container .cd-buttons-add-news:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-edit-news-container .cd-buttons-add-news li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-edit-news-container .cd-buttons-add-news div {
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
    .cd-popup-edit-news-container .cd-buttons-add-news li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-edit-news-container .cd-buttons-add-news li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-edit-news-container .cd-buttons-add-news li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-edit-news-container .cd-buttons-add-news li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-edit-news-container .cd-buttons-add-news li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-edit-news-container .cd-buttons-add-news li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-edit-news-container .cd-popup-edit-news-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-edit-news-container .cd-popup-edit-news-close::before, .cd-popup-edit-news-container .cd-popup-edit-news-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-edit-news-container .cd-popup-edit-news-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-edit-news-container .cd-popup-edit-news-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-edit-news-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-edit-news-container {
            margin: 4em auto;
        }
    }
    #label_edit_news {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx_edit_news{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    #box2_edit_news {
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
    #buttonon_edit_news {
        color: white;
        margin-top: 10px;
        display: flex;
        justify-content: center;
    }
    #btn_delete_edit_news {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 8px;
        border-radius: 3px;
    }
    #btn_submit_edit_news {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 8px;
        border-radius: 3px;
    }

    #btn_delete_edit_news:hover {
        background-color: #CCC;
    }
    #btn_submit_edit_news:hover {
        background-color: #CCC;
    }

    /* The Close Button */
    .close_edit_news {
        padding-top: -10px;
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close_edit_news:hover,
    .close_edit_news:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

    #news_img_edit{
        width: 250px;
        height: 150px;
        margin-bottom: 5px;
    }


    #lble1{font-size: 10px; float: left; font-weight: 600;color: black;}
    #lble2{font-size: 10px; float: left; font-weight: 600;color: black;}
    #lble3{font-size: 10px; float: left; font-weight: 600;color: black;}
    #lble4{font-size: 10px; float: left; font-weight: 600;color: black;}
    #lble5{font-size: 10px; float: left; font-weight: 600;color: black;}
    #lble6{font-size: 10px; font-weight: 600;color: black;}

    @media only screen and (max-width: 400px) {
        #lble1{font-size: 10px; float: left; font-weight: 600;margin-left: 10px;color: black;}
        #lble2{font-size: 10px; float: left; font-weight: 600;margin-left: 10px;color: black;}
        #lble3{font-size: 10px; float: left; font-weight: 600;margin-left: 10px;color: black;}
        #lble4{font-size: 10px; float: left; font-weight: 600;margin-left: 10px;color: black;}
        #lble5{font-size: 10px; float: left; font-weight: 600; top: -190px; position: relative; left: 220px;color: black;}

    }
</style>

<script>
    jQuery(document).ready(function ($) {
        $('#table_news').on('click', 'td', function () {
            var row = $(this).closest('tr');
            var news_id = $('#table_news').DataTable().row(row).data().news_id;
            var tittle = $('#table_news').DataTable().row(row).data().tittle;
            var description = $('#table_news').DataTable().row(row).data().description;
            var startdate = $('#table_news').DataTable().row(row).data().startdate;
            var enddate = $('#table_news').DataTable().row(row).data().enddate;
            var status = $('#table_news').DataTable().row(row).data().status;
            var img = $('#table_news').DataTable().row(row).data().img;

            document.getElementById("news_id_edit").value = news_id;
            document.getElementById("news_title_edit").value = tittle;
            document.getElementById("news_description_edit").value = description;
            document.getElementById("news_startdate_edit").value = startdate;
            document.getElementById("news_enddate_edit").value = enddate;
            document.getElementById("news_img_edit").src = img;

            if (status == '1') {
                document.getElementById("news_status_edit").innerHTML = '<label class="switch"><input type="checkbox" id="news_status_change" checked=""><div class="slider round"></div></label>';
            } else if (status == '0') {
                document.getElementById("news_status_edit").innerHTML = '<label class="switch"><input type="checkbox" id="news_status_change"><div class="slider round"></div></label>';
            }

            $('.cd-popup-edit-news').addClass('is-visible');
        });
        //close popup provide password
        $('.cd-popup-edit-news').on('click', function (event) {
            if ($(event.target).is('.cd-popup-edit-news-close') || $(event.target).is('.cd-popup-edit-news')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
                $("#formedit_news")[0].reset();

            }
        });
        //close popup when clicking the esc keyboard button provide password
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-edit-news').removeClass('is-visible');
            }
        });
    });</script>

<div class="cd-popup-edit-news" role="alert">
    <div class="cd-popup-edit-news-container" style="color: #29B19C;">
        <label id="label_edit_news">Edit News</label>
        <div id="boxx_edit_news">
            <div id="box2_edit_news">
                <div id="input_edit_news">
                    <form id="formedit_news">
                        <div id="myModal_edit_news" class="modal">
                            <div class="modal-content">
                                <span class="close_edit_news">&times;</span>
                                <div id="push_text_edit_news"></div>
                            </div>
                        </div>
                        <label id="lble1">news id</label><br>
                        <input type="text" id="news_id_edit" readonly="" required="" placeholder="news id" style="background-color:aqua"><br>
                        <label id="lble2">title news</label><br>
                        <input type="text" id="news_title_edit" required="" placeholder="title news"><br>
                        <label id="lble3">start date</label><br>
                        <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="news_startdate_edit" required="" placeholder="start date"><br>
                        <label id="lble4">end date</label><br>
                        <input type="text" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" id="news_enddate_edit" required="" placeholder="end date"><br>
                        <label id="lble5">description</label><br>
                        <textarea id="news_description_edit" required="" placeholder="description"></textarea>
                        <label id="lble6">image</label><br>
                        <img id="news_img_edit" src="image/upload_icon.jpeg" alt><br>

                        <div style="display: inline-flex;"><div id="news_status_edit"></div>status</div>
                    </form>
                    <div id="buttonon_edit_news">
                        <div id="btn_delete_edit_news" onclick="sub_del_news()">Delete</div>
                        <div id="btn_submit_edit_news" onclick="sub_edt_news()">Save</div>
                    </div>
                    <div id="msgbox"></div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-edit-news-close img-replace-edit-news">Close</a>
    </div>
</div>
<script>
    function sub_edt_news() {
        var news_id_edit = document.getElementById("news_id_edit").value;
        var news_title_edit = document.getElementById("news_title_edit").value;
        var news_startdate_edit = document.getElementById("news_startdate_edit").value;
        var news_enddate_edit = document.getElementById("news_enddate_edit").value;
        var news_description_edit = document.getElementById('news_description_edit').value;
        var news_status_edit = document.getElementById("news_status_change").checked;


        var modal = document.getElementById("myModal_edit_news");
        var span = document.getElementsByClassName("close_edit_news")[0];
        var push = document.getElementById("push_text_edit_news");
        ;
        if (news_id_edit == "") {
            push.innerHTML = "<p>id must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (news_id_edit != "") {
            if (news_title_edit == "") {
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
            } else if (news_title_edit != "") {
                if (news_startdate_edit == "") {
                    push.innerHTML = "<p>lab startdate be choose</p>";
                    modal.style.display = "block";
                    span.onclick = function () {
                        modal.style.display = "none";
                    }
                    window.onclick = function (event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                } else if (news_startdate_edit != "") {
                    if (news_enddate_edit == "") {
                        push.innerHTML = "<p>enddate must be fill</p>";
                        modal.style.display = "block";
                        span.onclick = function () {
                            modal.style.display = "none";
                        }
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    } else if (news_enddate_edit != "") {
                        if (news_description_edit == "") {
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
                        } else if (news_description_edit != "") {

                            var datjson4 = new Object();
                            datjson4.procCode = "500007";
                            datjson4.user_id = window.localStorage.getItem('lab_user_id');

                            datjson4.tittle = news_title_edit;
                            datjson4.description = news_description_edit;

                            if (news_enddate_edit.length < 19) {
                                news_enddate_edit += ' 23:59:59';
                            }
                            datjson4.startdate = news_startdate_edit;
                            datjson4.enddate = news_enddate_edit;
                            datjson4.news_id = news_id_edit;

                            var sts = "0";
                            if (news_status_edit) {
                                sts = "1";
                            }
                            datjson4.status = sts;


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
                                        alert('success update news ' + news_title_edit);
                                        $('.cd-popup-edit-news').removeClass('is-visible');
                                        $("#formedit_news")[0].reset();
                                    } else {
                                        alert('failed update news ' + response.respDesc);
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

    function sub_del_news() {
        var news_id_edit = document.getElementById("news_id_edit").value;


        var modal = document.getElementById("myModal_edit_news");
        var span = document.getElementsByClassName("close_edit_news")[0];
        var push = document.getElementById("push_text_edit_news");



        if (news_id_edit == "") {
            push.innerHTML = "<p>news id must be fill</p>";
            modal.style.display = "block";
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        } else if (news_id_edit != "") {
            var datjson3 = new Object();
            datjson3.procCode = "600007";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.news_id = news_id_edit;
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
                        destroyNews();
                        getListNews();
                        alert('Success Delete ' + news_id_edit);
                        $('.cd-popup-edit-news').removeClass('is-visible');
                        $("#formedit_news")[0].reset();
                    } else {
                        alert('Failed Delete ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
    }
</script>