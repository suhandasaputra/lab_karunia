<%-- 
    Document   : pop_up_set_plating
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-image-set-plating
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-edit-brand-set-plating {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-set-plating {
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
    .cd-popup-set-plating.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-set-plating-container {
        position: relative;
        width: 500px;
        height: 200px;
        /*max-width: 420px;*/
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

    .cd-popup-set-plating-container .cd-buttons-image-set-plating:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-set-plating-container .cd-buttons-image-set-plating li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-set-plating-container .cd-buttons-image-set-plating div {
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
    .cd-popup-set-plating-container .cd-buttons-image-set-plating li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-set-plating-container .cd-buttons-image-set-plating li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-set-plating-container .cd-buttons-image-set-plating li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-set-plating-container .cd-buttons-image-set-plating li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-set-plating-container .cd-buttons-image-set-plating li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-set-plating-container .cd-buttons-image-set-plating li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-set-plating-container .cd-popup-set-plating-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-set-plating-container .cd-popup-set-plating-close::before, .cd-popup-set-plating-container .cd-popup-set-plating-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: black;
    }
    .cd-popup-set-plating-container .cd-popup-set-plating-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-set-plating-container .cd-popup-set-plating-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-set-plating-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-set-plating-container {
            margin: 8em auto;
        }
    }

    #boxx-set-plating{
        display: flex;
        justify-content: center;
        align-content: center;
    }

    select {
        padding-left: 10px;
        border: 1px solid #CCC; 
        border-radius: 3px;
        width: 100px;
        /*height: 28.5px;*/
        margin-bottom: 5px;
        margin-left: 5px;

    }


</style>


<script>
    jQuery(document).ready(function ($) {
        $('#table_sample').on('click', 'td', function () {
            var row = $(this).closest("tr");
            var book_code = $('#table_sample').DataTable().row(row).data().book_code;
            document.getElementById('plating_book_code').value = book_code;
            $('.cd-popup-set-plating').addClass('is-visible');
        });

        //close popup edit brand
        $('.cd-popup-set-plating').on('click', function (event) {
            if ($(event.target).is('.cd-popup-set-plating-close') || $(event.target).is('.cd-popup-set-plating') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //close popup when clicking the esc keyboard button edit brand
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-set-plating').removeClass('is-visible');
            }
        });
    });
</script>
<div class="cd-popup-set-plating" role="alert">
    <div class="cd-popup-set-plating-container">
        <div id="boxx-set-plating" style="background-color: #29B19C; margin-top: 30px">
            <input type="text" disabled="" readonly="" id="plating_book_code" style="text-align: center; color: white; font-weight: 600; background-color: #3dceb7">
        </div>
        <div>
            <label>set to   : </label>
            <select class="form-select" id="set_to">
                <option value="a1">A1</option>
                <option value="a2">A2</option>
                <option value="a3">A3</option>
                <option value="a4">A4</option>
                <option value="a5">A5</option>
                <option value="a6">A6</option>
                <option value="a7">A7</option>
                <option value="a8">A8</option>
                <option value="b1">B1</option>
                <option value="b2">B2</option>
                <option value="b3">B3</option>
                <option value="b4">B4</option>
                <option value="b5">B5</option>
                <option value="b6">B6</option>
                <option value="b7">B7</option>
                <option value="b8">B8</option>
            </select>
        </div>
        <div>
            <button type="button" class="btn btn-primary" id="approve" onclick="approve()">Approve</button>
        </div>
        <a href="#0" class="cd-popup-set-plating-close img-replace-edit-brand-set-plating">Close</a>
    </div>
</div>
<script>
//    jQuery(document).ready(function ($) {
//        $('#approve').on('click', function () {
//            var
//        });
//    });
    function approve() {
        var book_code = document.getElementById('plating_book_code').value;
        var set_to = document.getElementById('set_to').value;

        var val_a1 = document.getElementById('a1').value;
        var val_a2 = document.getElementById('a2').value;
        var val_a3 = document.getElementById('a3').value;
        var val_a4 = document.getElementById('a4').value;
        var val_a5 = document.getElementById('a5').value;
        var val_a6 = document.getElementById('a6').value;
        var val_a7 = document.getElementById('a7').value;
        var val_a8 = document.getElementById('a8').value;
        var val_b1 = document.getElementById('b1').value;
        var val_b2 = document.getElementById('b2').value;
        var val_b3 = document.getElementById('b3').value;
        var val_b4 = document.getElementById('b4').value;
        var val_b5 = document.getElementById('b5').value;
        var val_b6 = document.getElementById('b6').value;
        var val_b7 = document.getElementById('b7').value;
        var val_b8 = document.getElementById('b8').value;

        if (book_code == val_a1 || val_a2 || val_a3 || val_a4 || val_a5 || val_a6 || val_a7 || val_a8 || val_b1 || val_b2 || val_b3 || val_b4 || val_b5 || val_b6 || val_b7 || val_b8) {
            var gg = val_a1 || val_a2 || val_a3 || val_a4 || val_a5 || val_a6 || val_a7 || val_a8 || val_b1 || val_b2 || val_b3 || val_b4 || val_b5 || val_b6 || val_b7 || val_b8;
            alert('sample ' + book_code + ' sudah ada di plate, silakan masukan sample lain');
        } else {
            switch (set_to) {
                case 'a1':
                    document.getElementById('a1').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a2':
                    document.getElementById('a2').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a3':
                    document.getElementById('a3').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a4':
                    document.getElementById('a4').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a5':
                    document.getElementById('a5').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a6':
                    document.getElementById('a6').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a7':
                    document.getElementById('a7').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'a8':
                    document.getElementById('a8').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b1':
                    document.getElementById('b1').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b2':
                    document.getElementById('b2').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b3':
                    document.getElementById('b3').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    break;
                case 'b4':
                    document.getElementById('b4').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b5':
                    document.getElementById('b5').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b6':
                    document.getElementById('b6').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b7':
                    document.getElementById('b7').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                case 'b8':
                    document.getElementById('b8').value = book_code;
                    alert('pasien ' + book_code + ' berhasil di masukan ke ' + set_to);
                    $('.cd-popup-set-plating').removeClass('is-visible');
                    break;
                default:
                    alert('ga ada');
            }
        }
    }
</script>