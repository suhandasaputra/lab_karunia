<%-- 
    Document   : pop_up_add_category
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>
<%--<%@include file='defaultextend.jsp' %>--%>
<style>
    .cd-buttons-mcu
    {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    .img-replace-mcu {
        /* replace text with an image */
        display: inline-block;
        overflow: hidden;
        text-indent: 100%;
        color: transparent;
        white-space: nowrap;
    }

    .cd-popup-mcu {
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
    .cd-popup-mcu.is-visible {
        opacity: 1;
        visibility: visible;
        -webkit-transition: opacity 0.3s 0s, visibility 0s 0s;
        -moz-transition: opacity 0.3s 0s, visibility 0s 0s;
        transition: opacity 0.3s 0s, visibility 0s 0s;
    }

    .cd-popup-mcu-container {
        position: relative;
        width: 100%;
        height: 780px;
        max-width: 1500px;
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

    .cd-popup-mcu-container .cd-buttons-mcu:after {
        content: "";
        display: table;
        clear: both;
    }
    .cd-popup-mcu-container .cd-buttons-mcu li {
        float: left;
        width: 50%;
        list-style: none;
    }
    .cd-popup-mcu-container .cd-buttons-mcu div {
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
    .cd-popup-mcu-container .cd-buttons-mcu li:first-child div {
        background: #3dceb7;
        border-radius: 0 0 0 .25em;
    }
    .cd-popup-mcu-container .cd-buttons-mcu li:first-child div:hover {
        background: #52e4cd;
        border-radius: 0 0 0 .25em;
    }

    .no-touch .cd-popup-mcu-container .cd-buttons-mcu li:first-child div:hover {
        background-color: #fc8982;
    }
    .cd-popup-mcu-container .cd-buttons-mcu li:last-child div {
        background: #b6bece;
        border-radius: 0 0 .25em 0;
    }
    .cd-popup-mcu-container .cd-buttons-mcu li:last-child div:hover {
        background: #d1d9e8;
        border-radius: 0 0 .25em 0;
    }
    .no-touch .cd-popup-mcu-container .cd-buttons-mcu li:last-child div:hover {
        background-color: #c5ccd8;
    }
    .cd-popup-mcu-container .cd-popup-mcu-close {
        position: absolute;
        top: 8px;
        right: 8px;
        width: 30px;
        height: 30px;
    }
    .cd-popup-mcu-container .cd-popup-mcu-close::before, .cd-popup-mcu-container .cd-popup-mcu-close::after {
        content: '';
        position: absolute;
        top: 12px;
        width: 14px;
        height: 3px;
        background-color: #8f9cb5;
    }
    .cd-popup-mcu-container .cd-popup-mcu-close::before {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        left: 8px;
    }
    .cd-popup-mcu-container .cd-popup-mcu-close::after {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        right: 8px;
    }
    .is-visible .cd-popup-mcu-container {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }

    @media only screen and (min-width: 1170px) {
        .cd-popup-mcu-container {
            margin: 5em auto;
        }
    }
    #label-mcu {
        width: 100%;
        margin: 20px;
        text-align: left;
    }
    #boxx-mcu{
        display: flex;
        justify-content: center;
        align-content: center;
    }
    #box1-mcu {
        cursor: pointer;
        width: 200px;
        height: 600px;
        margin-right: 5px;
        margin-left: 15px;
        /*background-color: greenyellow;*/
        border-radius: 5px;
        border: 1px solid #28a745;
        padding: 5px;
    }
    #box2-mcu {
        /*overflow-y: scroll;*/
        cursor: pointer;
        width: 1250px;
        height: 600px;
        margin-right: 5px;
        margin-left: 15px;
        border-radius: 5px;
        border: 1px solid #28a745;

        /*background-color: yellow;*/
    }
    input, select {
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
        color: white;
        margin-top: 10px;
        display: flex;
    }

    #btn_cancel {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-right: 4px;
        margin-left: 4px;
        border-radius: 3px;
    }
    #btn_save {
        cursor: pointer;
        width: 100px;
        background-color: #a7a0a0;
        border: 1px solid #CCC;
        margin-left: 4px;
        border-radius: 3px;
    }

    #btn_cancel:hover {
        background-color: #CCC;
    }

    #btn_save:hover {
        background-color: #CCC;
    }

    #metins_img_ktp, #metins_img_passport, #metins_img_self {
        width: 200px;
        height: 150px;
        margin-bottom: 5px;
    }

    /*    table_nya table {
            padding: 0px !important;
        }*/
    #table_nya tr td {
        padding: 0px !important;
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

        #box1-mcu {
            cursor: pointer;
            width: 190px;
            height: 200px;
            margin-right: 5px;
            /*background-color: yellow;*/
            border-radius: 5px;
        }
        #box2-mcu {
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
    var ext;
    jQuery(document).ready(function ($) {
        //open popup add category
        $('#btn_view_data').on('click', function () {
            $("#tbodyid").empty();
            var datjson3 = new Object();
            datjson3.procCode = "400021";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.book_code = document.getElementById('add_email_hasil_kode_booking').value;
            senddata(datjson3);
        });


        $('#table_alreadyemail').on('click', 'td', function () {
            $("#tbodyid").empty();
            var row = $(this).closest("tr");    // Find the row
            var bookcode = $('#table_alreadyemail').DataTable().row(row).data().book_code;
            var tipe = $('#table_alreadyemail').DataTable().row(row).data().ext;

            if (tipe == 't') {
                var datjson3 = new Object();
                datjson3.procCode = "400021";
                datjson3.user_id = window.localStorage.getItem('lab_user_id');
                datjson3.book_code = bookcode;
                senddata(datjson3);
            }
        });


        function senddata(datjson3) {
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

                        document.getElementById("pasien_id_mcu").value = response.patient_id;
                        document.getElementById("book_code_mcu").value = response.book_code;
                        document.getElementById("name_mcu").value = response.name;
                        document.getElementById("birthdate_mcu").value = response.birth_date;
                        document.getElementById("gender_mcu").value = response.gender;
                        document.getElementById("adress_mcu").value = response.address;
                        document.getElementById("tanggal_mcu").value = response.queue_date;
                        document.getElementById("jam_mcu").value = response.queue_hour;
                        document.getElementById("list_mcu").value = JSON.stringify(response.ext2_name);
                        var gg = response.ext2_name;
                        ext = response.ext2;
                        var mantap = response.ext;
//                        var baruobject = new Object();
//                        for (var key in mantap) {
//                            if (mantap[key] !== '-') {
//                                baruobject[key] = mantap[key];
//                            }
//                        }

//                        hematologi
                        if (gg.indexOf("darah rutin") !== -1) {
                            darahrutin(mantap);
                        }
                        if (gg.indexOf("darah lengkap") !== -1) {
                            darahlengkap(mantap);
                        }
                        if (gg.indexOf("hemoglobin") !== -1) {
                            hemoglobin(mantap);
                        }
                        if (gg.indexOf("hematokrit") !== -1) {
                            hematokrit(mantap);
                        }
                        if (gg.indexOf("trombosit") !== -1) {
                            trombosit(mantap);
                        }
                        if (gg.indexOf("leukosit") !== -1) {
                            leukosit(mantap);
                        }
                        if (gg.indexOf("eritrosit") !== -1) {
                            eritrosit(mantap);
                        }
                        if (gg.indexOf("mcv mch mch") !== -1) {
                            mcv(mantap);
                        }
                        if (gg.indexOf("hitung jenis leukosit") !== -1) {
                            hitung(mantap);
                        }
                        if (gg.indexOf("retikulosit") !== -1) {
                            retikulosit(mantap);
                        }
                        if (gg.indexOf("hitung eosinofil") !== -1) {
                            hitung_eosinofil(mantap);
                        }
                        if (gg.indexOf("golongan darah") !== -1) {
                            golongan_darah(mantap);
                        }
                        if (gg.indexOf("morfologi darah tepi") !== -1) {
                            morfologi_darah_tepi(mantap);
                        }
                        if (gg.indexOf("it ratio") !== -1) {
                            it_ratio(mantap);
                        }
                        if (gg.indexOf("serum_iron ( si )") !== -1) {
                            serum_iron(mantap);
                        }
                        if (gg.indexOf("tibc") !== -1) {
                            tibc(mantap);
                        }
                        if (gg.indexOf("feritin") !== -1) {
                            feritin(mantap);
                        }
                        if (gg.indexOf("transferin") !== -1) {
                            transferin(mantap);
                        }
                        if (gg.indexOf("asam folat") !== -1) {
                            asam_folat(mantap);
                        }
                        if (gg.indexOf("vitamin b12") !== -1) {
                            vitamin_b12(mantap);
                        }
                        if (gg.indexOf("pewarnaan sitokimia") !== -1) {
                            pewarnaan_sitokimia(mantap);
                        }
                        if (gg.indexOf("sel le") !== -1) {
                            sel_le(mantap);
                        }
                        if (gg.indexOf("le reaksi") !== -1) {
                            le_reaksi(mantap);
                        }
                        if (gg.indexOf("hb elektroforesa") !== -1) {
                            hb_elektroforesa(mantap);
                        }
                        if (gg.indexOf("g6 pd") !== -1) {
                            g6_pd(mantap);
                        }
                        if (gg.indexOf("g6 pd neonatus") !== -1) {
                            g6_pd_neonatus(mantap);
                        }
                        if (gg.indexOf("nap") !== -1) {
                            nap(mantap);
                        }
                        if (gg.indexOf("malaria") !== -1) {
                            malaria(mantap);
                        }
                        if (gg.indexOf("mikrofilaria") !== -1) {
                            mikrofilaria(mantap);
                        }
                        if (gg.indexOf("antibodi trombosit") !== -1) {
                            antibodi_trombosit(mantap);
                        }
                        if (gg.indexOf("cd4") !== -1) {
                            cd4(mantap);
                        }
                        if (gg.indexOf("cd4 - cd8") !== -1) {
                            cd4_cd8(mantap);
                        }
                        if (gg.indexOf("coombs test direct/indirect") !== -1) {
                            coombs_test_direct_indirect(mantap);
                        }
                        if (gg.indexOf("hb f ( alkali denaturasi )") !== -1) {
                            hb_f(mantap);
                        }
                        if (gg.indexOf("hb h") !== -1) {
                            hb_h(mantap);
                        }
                        if (gg.indexOf("hb a2") !== -1) {
                            hb_a2(mantap);
                        }
                        if (gg.indexOf("hams test") !== -1) {
                            hams_test(mantap);
                        }
                        if (gg.indexOf("sugar water test") !== -1) {
                            sugar_water_test(mantap);
                        }
                        if (gg.indexOf("sito genetika") !== -1) {
                            sito_genetika(mantap);
                        }
                        if (gg.indexOf("kromosom") !== -1) {
                            kromosom(mantap);
                        }

//                         koagulasi

                        if (gg.indexOf("hemostasis lengkap") !== -1) {
                            hemostasis_lengkap(mantap);
                        }
                        if (gg.indexOf("masa pendarahan ( bt )") !== -1) {
                            masa_pendarahan(mantap);
                        }
                        if (gg.indexOf("masa pembekuan ( ct )") !== -1) {
                            masa_pembekuan(mantap);
                        }
                        if (gg.indexOf("masa protrombin ( pt )") !== -1) {
                            masa_protrombin(mantap);
                        }
                        if (gg.indexOf("aptt") !== -1) {
                            aptt(mantap);
                        }
                        if (gg.indexOf("fibrinogen") !== -1) {
                            fibrinogen(mantap);
                        }
                        if (gg.indexOf("masa trombin ( tt )") !== -1) {
                            masa_trombin(mantap);
                        }
                        if (gg.indexOf("d - dimer ( kuantitatif )") !== -1) {
                            d_dimer(mantap);
                        }
                        if (gg.indexOf("agregasi trobosit") !== -1) {
                            agregasi_trobosit(mantap);
                        }
                        if (gg.indexOf("anti trombin iii") !== -1) {
                            anti_trombin_iii(mantap);
                        }
                        if (gg.indexOf("percobaan pembendungan") !== -1) {
                            percobaan_pembendungan(mantap);
                        }
                        if (gg.indexOf("inr") !== -1) {
                            inr(mantap);
                        }
                        if (gg.indexOf("protein c") !== -1) {
                            protein_c(mantap);
                        }
                        if (gg.indexOf("viskositas darah /  plasma") !== -1) {
                            viskositas_darah_plasma(mantap);
                        }
                        if (gg.indexOf("protein s") !== -1) {
                            protein_s(mantap);
                        }
                        if (gg.indexOf("faktor viii") !== -1) {
                            faktor_viii(mantap);
                        }
                        if (gg.indexOf("faktor ix") !== -1) {
                            faktor_ix(mantap);
                        }

//                         kimia fungsi hati
                        if (gg.indexOf("albumin") !== -1) {
                            albumin(mantap);
                        }
                        if (gg.indexOf("total protein") !== -1) {
                            total_protein(mantap);
                        }
                        if (gg.indexOf("total protein/albumin/globulin") !== -1) {
                            total_protein_albumin_globulin(mantap);
                        }
                        if (gg.indexOf("protein elektroforesa") !== -1) {
                            protein_elektroforesa(mantap);
                        }
                        if (gg.indexOf("bilirubin direct") !== -1) {
                            bilirubin_direct(mantap);
                        }
                        if (gg.indexOf("bilirubin indirect/direct/total") !== -1) {
                            bilirubin_indirect_direct_total(mantap);
                        }
                        if (gg.indexOf("bilirubin neonatus") !== -1) {
                            bilirubin_neonatus(mantap);
                        }
                        if (gg.indexOf("sgot") !== -1) {
                            sgot(mantap);
                        }
                        if (gg.indexOf("sgpt") !== -1) {
                            sgpt(mantap);
                        }
                        if (gg.indexOf("gamma - gt") !== -1) {
                            gamma_gt(mantap);
                        }
                        if (gg.indexOf("cholinesterase") !== -1) {
                            cholinesterase(mantap);
                        }
                        if (gg.indexOf("alkali phosphatase") !== -1) {
                            alkali_phosphatase(mantap);
                        }
                        if (gg.indexOf("lap") !== -1) {
                            lap(mantap);
                        }
//                         kimia pankreas                        
                        if (gg.indexOf("amilase") !== -1) {
                            amilase(mantap);
                        }
                        if (gg.indexOf("lipase") !== -1) {
                            lipase(mantap);
                        }
//                         kimia lemak darah
                        if (gg.indexOf("cholesterol total") !== -1) {
                            cholesterol_total(mantap);
                        }
                        if (gg.indexOf("ldl cholesterol") !== -1) {
                            ldl_cholesterol(mantap);
                        }
                        if (gg.indexOf("hdl cholesterol") !== -1) {
                            hdl_cholesterol(mantap);
                        }
                        if (gg.indexOf("trigliserida") !== -1) {
                            trigliserida(mantap);
                        }
                        if (gg.indexOf("total lipid") !== -1) {
                            total_lipid(mantap);
                        }
                        if (gg.indexOf("ratio chol t/hdl") !== -1) {
                            ratio_chol_t_hdl(mantap);
                        }
                        if (gg.indexOf("vldl") !== -1) {
                            vldl(mantap);
                        }

//                        kimia fungsi jantung
                        if (gg.indexOf("ck") !== -1) {
                            ck(mantap);
                        }
                        if (gg.indexOf("ckmb") !== -1) {
                            ckmb(mantap);
                        }
                        if (gg.indexOf("ldh") !== -1) {
                            ldh(mantap);
                        }
                        if (gg.indexOf("alfa-hbdh") !== -1) {
                            alfa_hbdh(mantap);
                        }
                        if (gg.indexOf("troponin t kuantitatif") !== -1) {
                            troponin_t_kuantitatif(mantap);
                        }
                        if (gg.indexOf("troponin t kualitatif") !== -1) {
                            troponin_t_kualitatif(mantap);
                        }
                        if (gg.indexOf("nt pro bnp") !== -1) {
                            nt_pro_bnp(mantap);
                        }
//                        kimia fungsi ginjal
                        if (gg.indexOf("ureum") !== -1) {
                            ureum(mantap);
                        }
                        if (gg.indexOf("creatinin") !== -1) {
                            creatinin(mantap);
                        }
                        if (gg.indexOf("creatinin clearance test ( cct )") !== -1) {
                            creatinin_clearance_test(mantap);
                        }
                        if (gg.indexOf("ureum clearance test ( uct )") !== -1) {
                            ureum_clearance_test(mantap);
                        }
                        if (gg.indexOf("asam urat") !== -1) {
                            asam_urat(mantap);
                        }
                        if (gg.indexOf("cystatin - c") !== -1) {
                            cystatin_c(mantap);
                        }
                        if (gg.indexOf("bun") !== -1) {
                            bun(mantap);
                        }
                        if (gg.indexOf("e gfr") !== -1) {
                            e_gfr(mantap);
                        }

//                        kimia elektrolit
                        if (gg.indexOf("calcium ( ca )") !== -1) {
                            calcium(mantap);
                        }
                        if (gg.indexOf("phospor anorganik") !== -1) {
                            phospor_anorganik(mantap);
                        }
                        if (gg.indexOf("magnesium ( mg )") !== -1) {
                            magnesium(mantap);
                        }
                        if (gg.indexOf("paket elektrolit ( na, k, cl )") !== -1) {
                            paket_elektrolit(mantap);
                        }
                        if (gg.indexOf("plumbum serum") !== -1) {
                            plumbum_serum(mantap);
                        }
                        if (gg.indexOf("osmolalitas darah") !== -1) {
                            osmolalitas_darah(mantap);
                        }
                        if (gg.indexOf("calcium ion ( ca ion )") !== -1) {
                            calcium_ion(mantap);
                        }

//                        kimia karbohidrat
                        if (gg.indexOf("gula darah puasa") !== -1) {
                            gula_darah_puasa(mantap);
                        }
                        if (gg.indexOf("gula darah 2 jam pp") !== -1) {
                            gula_darah_2_jam_pp(mantap);
                        }
                        if (gg.indexOf("glukosa sewaktu") !== -1) {
                            glukosa_sewaktu(mantap);
                        }
                        if (gg.indexOf("kurva harian") !== -1) {
                            kurva_harian(mantap);
                        }
                        if (gg.indexOf("gtt") !== -1) {
                            gtt(mantap);
                        }
                        if (gg.indexOf("hba1c") !== -1) {
                            hba1c(mantap);
                        }
                        if (gg.indexOf("keton darah") !== -1) {
                            keton_darah(mantap);
                        }
                        if (gg.indexOf("fruktosamin") !== -1) {
                            fruktosamin(mantap);
                        }
                        if (gg.indexOf("c. peptide") !== -1) {
                            c_peptide(mantap);
                        }
                        if (gg.indexOf("insulin") !== -1) {
                            insulin(mantap);
                        }

//                         kimia analisa gas darah                        
                        if (gg.indexOf("analisa gas darah") !== -1) {
                            analisa_gas_darah(mantap);
                        }
                        if (gg.indexOf("asam laktat") !== -1) {
                            asam_laktat(mantap);
                        }


//                         seroimunologi
                        if (gg.indexOf("anti dengue ig g / ig m") !== -1) {
                            anti_dengue_igg_igm(mantap);
                        }
                        if (gg.indexOf("dengue ns1 antigen") !== -1) {
                            dengue_ns1_antigen(mantap);
                        }
                        if (gg.indexOf("widal") !== -1) {
                            widal(mantap);
                        }
                        if (gg.indexOf("anti salmonella igm ( tubex )") !== -1) {
                            anti_salmonella_igm(mantap);
                        }
                        if (gg.indexOf("crp") !== -1) {
                            crp(mantap);
                        }
                        if (gg.indexOf("asto") !== -1) {
                            asto(mantap);
                        }
                        if (gg.indexOf("rheumatoid faktor ( rf )") !== -1) {
                            rheumatoid_faktor(mantap);
                        }
                        if (gg.indexOf("serologi amoeba") !== -1) {
                            serologi_amoeba(mantap);
                        }
                        if (gg.indexOf("vdrl") !== -1) {
                            vdrl(mantap);
                        }
                        if (gg.indexOf("tpha") !== -1) {
                            tpha(mantap);
                        }
                        if (gg.indexOf("anti leptospira ig g") !== -1) {
                            anti_leptospira_igg(mantap);
                        }
                        if (gg.indexOf("anti leptospira ig m") !== -1) {
                            anti_leptospira_igm(mantap);
                        }
                        if (gg.indexOf("anti mycoplasma ig g / ig m") !== -1) {
                            anti_mycoplasma_igg_igm(mantap);
                        }
                        if (gg.indexOf("anti ebv ea ig a") !== -1) {
                            anti_ebv_ea_iga(mantap);
                        }
                        if (gg.indexOf("anti ebv ea ig g") !== -1) {
                            anti_ebv_ea_igg(mantap);
                        }
                        if (gg.indexOf("anti ebv ea ig m") !== -1) {
                            anti_ebv_ea_igm(mantap);
                        }
                        if (gg.indexOf("anti tb ig g") !== -1) {
                            anti_tb_igg(mantap);
                        }
                        if (gg.indexOf("serologi jamur") !== -1) {
                            serologi_jamur(mantap);
                        }
                        if (gg.indexOf("serologi jamur lengkap") !== -1) {
                            serologi_jamur_lengkap(mantap);
                        }



//                         hepatitis
                        if (gg.indexOf("hbsag") !== -1) {
                            hbsag(mantap);
                        }
                        if (gg.indexOf("anti hbs") !== -1) {
                            anti_hbs(mantap);
                        }
                        if (gg.indexOf("hbeag") !== -1) {
                            hbeag(mantap);
                        }
                        if (gg.indexOf("anti hbe") !== -1) {
                            anti_hbe(mantap);
                        }
                        if (gg.indexOf("anti hbc total") !== -1) {
                            anti_hbc_total(mantap);
                        }
                        if (gg.indexOf("anti hbc ig m") !== -1) {
                            anti_hbc_igm(mantap);
                        }
                        if (gg.indexOf("hbv dna") !== -1) {
                            hbv_dna(mantap);
                        }
                        if (gg.indexOf("anti hav ig m") !== -1) {
                            anti_hav_igm(mantap);
                        }
                        if (gg.indexOf("anti hav total") !== -1) {
                            anti_hav_total(mantap);
                        }
                        if (gg.indexOf("anti hcv total") !== -1) {
                            anti_hcv_total(mantap);
                        }
                        if (gg.indexOf("anti hcv ig m") !== -1) {
                            anti_hcv_igm(mantap);
                        }
                        if (gg.indexOf("anti hdv") !== -1) {
                            anti_hdv(mantap);
                        }
                        if (gg.indexOf("anti hev ig m") !== -1) {
                            anti_hev_igm(mantap);
                        }
                        if (gg.indexOf("anti hev ig g") !== -1) {
                            anti_hev_igg(mantap);
                        }

//                         urinalisa
                        if (gg.indexOf("urin lengkap") !== -1) {
                            urin_lengkap(mantap);
                        }
                        if (gg.indexOf("urin rutin") !== -1) {
                            urin_rutin_(mantap);
                        }
                        if (gg.indexOf("sedimen urine") !== -1) {
                            sedimen_urine(mantap);
                        }
                        if (gg.indexOf("test kehamilan") !== -1) {
                            test_kehamilan(mantap);
                        }

//                         narkotika urin
                        if (gg.indexOf("amphetamine") !== -1) {
                            amphetamine(mantap);
                        }
                        if (gg.indexOf("meth -  amphetamine") !== -1) {
                            meth_amphetamine(mantap);
                        }
                        if (gg.indexOf("opiat / morfin") !== -1) {
                            opiat_morfin(mantap);
                        }
                        if (gg.indexOf("benzodiazepin") !== -1) {
                            benzodiazepin(mantap);
                        }
                        if (gg.indexOf("thc") !== -1) {
                            thc(mantap);
                        }
                        if (gg.indexOf("opiat / amphetamin / thc") !== -1) {
                            opiat_amphetamin_thc(mantap);
                        }
                        if (gg.indexOf("cocaine") !== -1) {
                            cocaine(mantap);
                        }



//                         feses
                        if (gg.indexOf("feses lengkap") !== -1) {
                            feses_lengkap(mantap);
                        }
                        if (gg.indexOf("feses rutin") !== -1) {
                            feses_rutin(mantap);
                        }
                        if (gg.indexOf("darah samar") !== -1) {
                            darah_samar(mantap);
                        }

//                         sekret
                        if (gg.indexOf("pewarnaan gram sekret") !== -1) {
                            pewarnaan_gram_sekret(mantap);
                        }
                        if (gg.indexOf("candida albican") !== -1) {
                            candida_albican(mantap);
                        }
                        if (gg.indexOf("jamur sekret") !== -1) {
                            jamur_sekret(mantap);
                        }
                        if (gg.indexOf("tricomonas") !== -1) {
                            tricomonas(mantap);
                        }
                        if (gg.indexOf("koh 10%") !== -1) {
                            koh_10(mantap);
                        }

//                         sputum
                        if (gg.indexOf("pewarnaan gram sputum") !== -1) {
                            pewarnaan_gram_sputum(mantap);
                        }
                        if (gg.indexOf("pewarnaan bta") !== -1) {
                            pewarnaan_bta(mantap);
                        }
                        if (gg.indexOf("difteri") !== -1) {
                            difteri(mantap);
                        }
                        if (gg.indexOf("jamur sputum") !== -1) {
                            jamur_sputum(mantap);
                        }


                        $('.cd-popup-mcu').addClass('is-visible');
                    } else {
                        alert('Failed get data pasien : ' + response.respDesc);
                    }
                },
                complete: function () {
                    $('#loader').addClass('hidden');
                }
            });
        }
        ;







        //close popup add category
        $('.cd-popup-mcu').on('click', function (event) {
            if ($(event.target).is('.cd-popup-mcu-close') || $(event.target).is('.cd-popup-mcu') || $(event.target).is('#btn_cancel')) {
                event.preventDefault();
                $(this).removeClass('is-visible');
//                $("#form_mcu")[0].reset();
            }
        });
        //close popup when clicking the esc keyboard button add category
        $(document).keyup(function (event) {
            if (event.which == '27') {
                $('.cd-popup-mcu').removeClass('is-visible');
            }
        });
    });</script>
<div class="cd-popup-mcu" role="alert">
    <div class="cd-popup-mcu-container">
        <label id="label-mcu">Result MCU</label>

        <textarea id="list_mcu" style="height: 50px; margin: 0px 20px 0px 20px; width: -webkit-fill-available" disabled=""></textarea>

        <div class="row">
            <div class="tab-content" style="width: 100%; margin-top: 0px;">
                <div id="pasien" class="tab-pane fade in active show">
                    <div id="boxx-mcu">
                        <div id="box1-mcu">
                            <h6>PASIEN</h6>
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien id</label><input type="text" id="pasien_id_mcu" required="" placeholder="code" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">book_code</label><input id="book_code_mcu" required="" placeholder="kode booking" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">pasien name</label><input type="text" id="name_mcu" required="" placeholder="name" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">birthdate</label><input type="text" id="birthdate_mcu" required="" placeholder="birtdate" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">gender</label><input type="text" id="gender_mcu" required="" placeholder="gender" readonly="">                            
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">address</label><input type="text" id="adress_mcu" required="" placeholder="address" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">tanggal reservasi</label><input type="text" id="tanggal_mcu" readonly="">
                            <label style="margin-bottom: 0px; font-size: 11px; float: left; font-weight: 400">jam reservasi</label><input type="text" id="jam_mcu" readonly="">
                            <!--<button type="button" class="btn btn-success" style="margin-top: 20px" id="btn_input_result">SEND</button>-->
                        </div>
                        <div id="box2-mcu">
                            <h6>VIEW HASIL MCU</h6>
                            <div style="height: 570px; width: -webkit-available; margin-right: 10px; margin-left: 10px; overflow-y: scroll;">
                                <table class="table" id="table_nya" style="font-size: 11px;">
                                    <thead>
                                        <tr>
                                            <th>Input</th>
                                            <th>Item Hasil</th>
                                            <th>Hasil</th>
                                            <th>Nilai Rujukan</th>
                                            <th>Keterangan</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbodyid">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="#0" class="cd-popup-mcu-close img-replace-mcu">Close</a>
    </div>
</div>
<script src="myjs/hematologi_view.js"></script>
<script src="myjs/koagulasi_view.js"></script>
<script src="myjs/kimia_fungsi_hati_view.js"></script>
<script src="myjs/kimia_pankreas_view.js"></script>
<script src="myjs/kimia_lemak_darah_view.js"></script>
<script src="myjs/kimia_fungsi_ginjal_view.js"></script>
<script src="myjs/kimia_elektrolit_view.js"></script>
<script src="myjs/kimia_karbohidrat_view.js"></script>
<script src="myjs/kimia_analisa_gas_darah_view.js"></script>
<script src="myjs/kimia_fungsi_jantung_view.js"></script>
<script src="myjs/seroimunologi_view.js"></script>
<script src="myjs/hepatitis_view.js"></script>
<script src="myjs/urinalisa_view.js"></script>
<script src="myjs/narkotika_urin_view.js"></script>
<script src="myjs/feses_view.js"></script>
<script src="myjs/sekret_view.js"></script>
<script src="myjs/sputum_view.js"></script>
