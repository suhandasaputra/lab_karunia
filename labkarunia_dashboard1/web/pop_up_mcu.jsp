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
        $('#table_mcu').on('click', 'td', function () {
            $("#tbodyid").empty();
            var row = $(this).closest("tr");
            var book_code = $('#table_mcu').DataTable().row(row).data().book_code;
            var datjson3 = new Object();
            datjson3.procCode = "400021";
            datjson3.user_id = window.localStorage.getItem('lab_user_id');
            datjson3.book_code = book_code;
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



//                        hematologi
                        if (gg.indexOf("darah rutin") !== -1) {
                            darahrutin();
                        }
                        if (gg.indexOf("darah lengkap") !== -1) {
                            darahlengkap();
                        }
                        if (gg.indexOf("hemoglobin") !== -1) {
                            hemoglobin();
                        }
                        if (gg.indexOf("hematokrit") !== -1) {
                            hematokrit();
                        }
                        if (gg.indexOf("trombosit") !== -1) {
                            trombosit();
                        }
                        if (gg.indexOf("leukosit") !== -1) {
                            leukosit();
                        }
                        if (gg.indexOf("eritrosit") !== -1) {
                            eritrosit();
                        }
                        if (gg.indexOf("mcv mch mch") !== -1) {
                            mcv();
                        }
                        if (gg.indexOf("hitung jenis leukosit") !== -1) {
                            hitung();
                        }
                        if (gg.indexOf("retikulosit") !== -1) {
                            retikulosit();
                        }
                        if (gg.indexOf("hitung eosinofil") !== -1) {
                            hitung_eosinofil();
                        }
                        if (gg.indexOf("golongan darah") !== -1) {
                            golongan_darah();
                        }
                        if (gg.indexOf("morfologi darah tepi") !== -1) {
                            morfologi_darah_tepi();
                        }
                        if (gg.indexOf("it ratio") !== -1) {
                            it_ratio();
                        }
                        if (gg.indexOf("serum_iron ( si )") !== -1) {
                            serum_iron();
                        }
                        if (gg.indexOf("tibc") !== -1) {
                            tibc();
                        }
                        if (gg.indexOf("feritin") !== -1) {
                            feritin();
                        }
                        if (gg.indexOf("transferin") !== -1) {
                            transferin();
                        }
                        if (gg.indexOf("asam folat") !== -1) {
                            asam_folat();
                        }
                        if (gg.indexOf("vitamin b12") !== -1) {
                            vitamin_b12();
                        }
                        if (gg.indexOf("pewarnaan sitokimia") !== -1) {
                            pewarnaan_sitokimia();
                        }
                        if (gg.indexOf("sel le") !== -1) {
                            sel_le();
                        }
                        if (gg.indexOf("le reaksi") !== -1) {
                            le_reaksi();
                        }
                        if (gg.indexOf("hb elektroforesa") !== -1) {
                            hb_elektroforesa();
                        }
                        if (gg.indexOf("g6 pd") !== -1) {
                            g6_pd();
                        }
                        if (gg.indexOf("g6 pd neonatus") !== -1) {
                            g6_pd_neonatus();
                        }
                        if (gg.indexOf("nap") !== -1) {
                            nap();
                        }
                        if (gg.indexOf("malaria") !== -1) {
                            malaria();
                        }
                        if (gg.indexOf("mikrofilaria") !== -1) {
                            mikrofilaria();
                        }
                        if (gg.indexOf("antibodi trombosit") !== -1) {
                            antibodi_trombosit();
                        }
                        if (gg.indexOf("cd4") !== -1) {
                            cd4();
                        }
                        if (gg.indexOf("cd4 - cd8") !== -1) {
                            cd4_cd8();
                        }
                        if (gg.indexOf("coombs test direct/indirect") !== -1) {
                            coombs_test_direct_indirect();
                        }
                        if (gg.indexOf("hb f ( alkali denaturasi )") !== -1) {
                            hb_f();
                        }
                        if (gg.indexOf("hb h") !== -1) {
                            hb_h();
                        }
                        if (gg.indexOf("hb a2") !== -1) {
                            hb_a2();
                        }
                        if (gg.indexOf("hams test") !== -1) {
                            hams_test();
                        }
                        if (gg.indexOf("sugar water test") !== -1) {
                            sugar_water_test();
                        }
                        if (gg.indexOf("sito genetika") !== -1) {
                            sito_genetika();
                        }
                        if (gg.indexOf("kromosom") !== -1) {
                            kromosom();
                        }

//                         koagulasi

                        if (gg.indexOf("hemostasis lengkap") !== -1) {
                            hemostasis_lengkap();
                        }
                        if (gg.indexOf("masa pendarahan ( bt )") !== -1) {
                            masa_pendarahan();
                        }
                        if (gg.indexOf("masa pembekuan ( ct )") !== -1) {
                            masa_pembekuan();
                        }
                        if (gg.indexOf("masa protrombin ( pt )") !== -1) {
                            masa_protrombin();
                        }
                        if (gg.indexOf("aptt") !== -1) {
                            aptt();
                        }
                        if (gg.indexOf("fibrinogen") !== -1) {
                            fibrinogen();
                        }
                        if (gg.indexOf("masa trombin ( tt )") !== -1) {
                            masa_trombin();
                        }
                        if (gg.indexOf("d - dimer ( kuantitatif )") !== -1) {
                            d_dimer();
                        }
                        if (gg.indexOf("agregasi trobosit") !== -1) {
                            agregasi_trobosit();
                        }
                        if (gg.indexOf("anti trombin iii") !== -1) {
                            anti_trombin_iii();
                        }
                        if (gg.indexOf("percobaan pembendungan") !== -1) {
                            percobaan_pembendungan();
                        }
                        if (gg.indexOf("inr") !== -1) {
                            inr();
                        }
                        if (gg.indexOf("protein c") !== -1) {
                            protein_c();
                        }
                        if (gg.indexOf("viskositas darah /  plasma") !== -1) {
                            viskositas_darah_plasma();
                        }
                        if (gg.indexOf("protein s") !== -1) {
                            protein_s();
                        }
                        if (gg.indexOf("faktor viii") !== -1) {
                            faktor_viii();
                        }
                        if (gg.indexOf("faktor ix") !== -1) {
                            faktor_ix();
                        }

//                         kimia fungsi hati
                        if (gg.indexOf("albumin") !== -1) {
                            albumin();
                        }
                        if (gg.indexOf("total protein") !== -1) {
                            total_protein();
                        }
                        if (gg.indexOf("total protein/albumin/globulin") !== -1) {
                            total_protein_albumin_globulin();
                        }
                        if (gg.indexOf("protein elektroforesa") !== -1) {
                            protein_elektroforesa();
                        }
                        if (gg.indexOf("bilirubin direct") !== -1) {
                            bilirubin_direct();
                        }
                        if (gg.indexOf("bilirubin indirect/direct/total") !== -1) {
                            bilirubin_indirect_direct_total();
                        }
                        if (gg.indexOf("bilirubin neonatus") !== -1) {
                            bilirubin_neonatus();
                        }
                        if (gg.indexOf("sgot") !== -1) {
                            sgot();
                        }
                        if (gg.indexOf("sgpt") !== -1) {
                            sgpt();
                        }
                        if (gg.indexOf("gamma - gt") !== -1) {
                            gamma_gt();
                        }
                        if (gg.indexOf("cholinesterase") !== -1) {
                            cholinesterase();
                        }
                        if (gg.indexOf("alkali phosphatase") !== -1) {
                            alkali_phosphatase();
                        }
                        if (gg.indexOf("lap") !== -1) {
                            lap();
                        }
//                         kimia pankreas                        
                        if (gg.indexOf("amilase") !== -1) {
                            amilase();
                        }
                        if (gg.indexOf("lipase") !== -1) {
                            lipase();
                        }
//                         kimia lemak darah
                        if (gg.indexOf("cholesterol total") !== -1) {
                            cholesterol_total();
                        }
                        if (gg.indexOf("ldl cholesterol") !== -1) {
                            ldl_cholesterol();
                        }
                        if (gg.indexOf("hdl cholesterol") !== -1) {
                            hdl_cholesterol();
                        }
                        if (gg.indexOf("trigliserida") !== -1) {
                            trigliserida();
                        }
                        if (gg.indexOf("total lipid") !== -1) {
                            total_lipid();
                        }
                        if (gg.indexOf("ratio chol t/hdl") !== -1) {
                            ratio_chol_t_hdl();
                        }
                        if (gg.indexOf("vldl") !== -1) {
                            vldl();
                        }

//                        kimia fungsi jantung
                        if (gg.indexOf("ck") !== -1) {
                            ck();
                        }
                        if (gg.indexOf("ckmb") !== -1) {
                            ckmb();
                        }
                        if (gg.indexOf("ldh") !== -1) {
                            ldh();
                        }
                        if (gg.indexOf("alfa-hbdh") !== -1) {
                            alfa_hbdh();
                        }
                        if (gg.indexOf("troponin t kuantitatif") !== -1) {
                            troponin_t_kuantitatif();
                        }
                        if (gg.indexOf("troponin t kualitatif") !== -1) {
                            troponin_t_kualitatif();
                        }
                        if (gg.indexOf("nt pro bnp") !== -1) {
                            nt_pro_bnp();
                        }
//                        kimia fungsi ginjal
                        if (gg.indexOf("ureum") !== -1) {
                            ureum();
                        }
                        if (gg.indexOf("creatinin") !== -1) {
                            creatinin();
                        }
                        if (gg.indexOf("creatinin clearance test ( cct )") !== -1) {
                            creatinin_clearance_test();
                        }
                        if (gg.indexOf("ureum clearance test ( uct )") !== -1) {
                            ureum_clearance_test();
                        }
                        if (gg.indexOf("asam urat") !== -1) {
                            asam_urat();
                        }
                        if (gg.indexOf("cystatin - c") !== -1) {
                            cystatin_c();
                        }
                        if (gg.indexOf("bun") !== -1) {
                            bun();
                        }
                        if (gg.indexOf("e gfr") !== -1) {
                            e_gfr();
                        }

//                        kimia elektrolit
                        if (gg.indexOf("calcium ( ca )") !== -1) {
                            calcium();
                        }
                        if (gg.indexOf("phospor anorganik") !== -1) {
                            phospor_anorganik();
                        }
                        if (gg.indexOf("magnesium ( mg )") !== -1) {
                            magnesium();
                        }
                        if (gg.indexOf("paket elektrolit ( na, k, cl )") !== -1) {
                            paket_elektrolit();
                        }
                        if (gg.indexOf("plumbum serum") !== -1) {
                            plumbum_serum();
                        }
                        if (gg.indexOf("osmolalitas darah") !== -1) {
                            osmolalitas_darah();
                        }
                        if (gg.indexOf("calcium ion ( ca ion )") !== -1) {
                            calcium_ion();
                        }

//                        kimia karbohidrat
                        if (gg.indexOf("gula darah puasa") !== -1) {
                            gula_darah_puasa();
                        }
                        if (gg.indexOf("gula darah 2 jam pp") !== -1) {
                            gula_darah_2_jam_pp();
                        }
                        if (gg.indexOf("glukosa sewaktu") !== -1) {
                            glukosa_sewaktu();
                        }
                        if (gg.indexOf("kurva harian") !== -1) {
                            kurva_harian();
                        }
                        if (gg.indexOf("gtt") !== -1) {
                            gtt();
                        }
                        if (gg.indexOf("hba1c") !== -1) {
                            hba1c();
                        }
                        if (gg.indexOf("keton darah") !== -1) {
                            keton_darah();
                        }
                        if (gg.indexOf("fruktosamin") !== -1) {
                            fruktosamin();
                        }
                        if (gg.indexOf("c. peptide") !== -1) {
                            c_peptide();
                        }
                        if (gg.indexOf("insulin") !== -1) {
                            insulin();
                        }

//                         kimia analisa gas darah                        
                        if (gg.indexOf("analisa gas darah") !== -1) {
                            analisa_gas_darah();
                        }
                        if (gg.indexOf("asam laktat") !== -1) {
                            asam_laktat();
                        }


//                         seroimunologi
                        if (gg.indexOf("anti dengue ig g / ig m") !== -1) {
                            anti_dengue_igg_igm();
                        }
                        if (gg.indexOf("dengue ns1 antigen") !== -1) {
                            dengue_ns1_antigen();
                        }
                        if (gg.indexOf("widal") !== -1) {
                            widal();
                        }
                        if (gg.indexOf("anti salmonella igm ( tubex )") !== -1) {
                            anti_salmonella_igm();
                        }
                        if (gg.indexOf("crp") !== -1) {
                            crp();
                        }
                        if (gg.indexOf("asto") !== -1) {
                            asto();
                        }
                        if (gg.indexOf("rheumatoid faktor ( rf )") !== -1) {
                            rheumatoid_faktor();
                        }
                        if (gg.indexOf("serologi amoeba") !== -1) {
                            serologi_amoeba();
                        }
                        if (gg.indexOf("vdrl") !== -1) {
                            vdrl();
                        }
                        if (gg.indexOf("tpha") !== -1) {
                            tpha();
                        }
                        if (gg.indexOf("anti leptospira ig g") !== -1) {
                            anti_leptospira_igg();
                        }
                        if (gg.indexOf("anti leptospira ig m") !== -1) {
                            anti_leptospira_igm();
                        }
                        if (gg.indexOf("anti mycoplasma ig g / ig m") !== -1) {
                            anti_mycoplasma_igg_igm();
                        }
                        if (gg.indexOf("anti ebv ea ig a") !== -1) {
                            anti_ebv_ea_iga();
                        }
                        if (gg.indexOf("anti ebv ea ig g") !== -1) {
                            anti_ebv_ea_igg();
                        }
                        if (gg.indexOf("anti ebv ea ig m") !== -1) {
                            anti_ebv_ea_igm();
                        }
                        if (gg.indexOf("anti tb ig g") !== -1) {
                            anti_tb_igg();
                        }
                        if (gg.indexOf("serologi jamur") !== -1) {
                            serologi_jamur();
                        }
                        if (gg.indexOf("serologi jamur lengkap") !== -1) {
                            serologi_jamur_lengkap();
                        }



//                         hepatitis
                        if (gg.indexOf("hbsag") !== -1) {
                            hbsag();
                        }
                        if (gg.indexOf("anti hbs") !== -1) {
                            anti_hbs();
                        }
                        if (gg.indexOf("hbeag") !== -1) {
                            hbeag();
                        }
                        if (gg.indexOf("anti hbe") !== -1) {
                            anti_hbe();
                        }
                        if (gg.indexOf("anti hbc total") !== -1) {
                            anti_hbc_total();
                        }
                        if (gg.indexOf("anti hbc ig m") !== -1) {
                            anti_hbc_igm();
                        }
                        if (gg.indexOf("hbv dna") !== -1) {
                            hbv_dna();
                        }
                        if (gg.indexOf("anti hav ig m") !== -1) {
                            anti_hav_igm();
                        }
                        if (gg.indexOf("anti hav total") !== -1) {
                            anti_hav_total();
                        }
                        if (gg.indexOf("anti hcv total") !== -1) {
                            anti_hcv_total();
                        }
                        if (gg.indexOf("anti hcv ig m") !== -1) {
                            anti_hcv_igm();
                        }
                        if (gg.indexOf("anti hdv") !== -1) {
                            anti_hdv();
                        }
                        if (gg.indexOf("anti hev ig m") !== -1) {
                            anti_hev_igm();
                        }
                        if (gg.indexOf("anti hev ig g") !== -1) {
                            anti_hev_igg();
                        }

//                         urinalisa
                        if (gg.indexOf("urin lengkap") !== -1) {
                            urin_lengkap();
                        }
                        if (gg.indexOf("urin rutin") !== -1) {
                            urin_rutin_();
                        }
                        if (gg.indexOf("sedimen urine") !== -1) {
                            sedimen_urine();
                        }
                        if (gg.indexOf("test kehamilan") !== -1) {
                            test_kehamilan();
                        }

//                         narkotika urin
                        if (gg.indexOf("amphetamine") !== -1) {
                            amphetamine();
                        }
                        if (gg.indexOf("meth -  amphetamine") !== -1) {
                            meth_amphetamine();
                        }
                        if (gg.indexOf("opiat / morfin") !== -1) {
                            opiat_morfin();
                        }
                        if (gg.indexOf("benzodiazepin") !== -1) {
                            benzodiazepin();
                        }
                        if (gg.indexOf("thc") !== -1) {
                            thc();
                        }
                        if (gg.indexOf("opiat / amphetamin / thc") !== -1) {
                            opiat_amphetamin_thc();
                        }
                        if (gg.indexOf("cocaine") !== -1) {
                            cocaine();
                        }



//                         feses
                        if (gg.indexOf("feses lengkap") !== -1) {
                            feses_lengkap();
                        }
                        if (gg.indexOf("feses rutin") !== -1) {
                            feses_rutin();
                        }
                        if (gg.indexOf("darah samar") !== -1) {
                            darah_samar();
                        }

//                         sekret
                        if (gg.indexOf("pewarnaan gram sekret") !== -1) {
                            pewarnaan_gram_sekret();
                        }
                        if (gg.indexOf("candida albican") !== -1) {
                            candida_albican();
                        }
                        if (gg.indexOf("jamur sekret") !== -1) {
                            jamur_sekret();
                        }
                        if (gg.indexOf("tricomonas") !== -1) {
                            tricomonas();
                        }
                        if (gg.indexOf("koh 10%") !== -1) {
                            koh_10();
                        }

//                         sputum
                        if (gg.indexOf("pewarnaan gram sputum") !== -1) {
                            pewarnaan_gram_sputum();
                        }
                        if (gg.indexOf("pewarnaan bta") !== -1) {
                            pewarnaan_bta();
                        }
                        if (gg.indexOf("difteri") !== -1) {
                            difteri();
                        }
                        if (gg.indexOf("jamur sputum") !== -1) {
                            jamur_sputum();
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
        });
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
                            <button type="button" class="btn btn-success" style="margin-top: 20px" id="btn_input_result">SEND</button>
                        </div>
                        <div id="box2-mcu">
                            <h6>INPUT HASIL</h6>
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
<script src="myjs/hematologi.js"></script>
<script src="myjs/koagulasi.js"></script>
<script src="myjs/kimia_fungsi_hati.js"></script>
<script src="myjs/kimia_pankreas.js"></script>
<script src="myjs/kimia_lemak_darah.js"></script>
<script src="myjs/kimia_fungsi_ginjal.js"></script>
<script src="myjs/kimia_elektrolit.js"></script>
<script src="myjs/kimia_karbohidrat.js"></script>
<script src="myjs/kimia_analisa_gas_darah.js"></script>
<script src="myjs/kimia_fungsi_jantung.js"></script>
<script src="myjs/seroimunologi.js"></script>
<script src="myjs/hepatitis.js"></script>
<script src="myjs/urinalisa.js"></script>
<script src="myjs/narkotika_urin.js"></script>
<script src="myjs/feses.js"></script>
<script src="myjs/sekret.js"></script>
<script src="myjs/sputum.js"></script>
<script>
    $('#btn_input_result').on('click', function () {
        const arr = ext;
        const param_guys = arr.reduce((accumulator, value) => {
            return {...accumulator, [value]: ''};
        }, {});
        const vvv = new Object();

        for (var i = 0; i < Object.keys(param_guys).length; i++) {
            if (param_guys.hasOwnProperty(arr[i])) {
                switch (arr[i]) {
//hematologi
                    case 'darah_rutin':
                        var hemoglobin = document.getElementById('hemoglobin').value;
                        vvv.hemoglobin = hemoglobin;
                        var hematokrit = document.getElementById('hematokrit').value;
                        vvv.hematokrit = hematokrit;
                        var trombosit = document.getElementById('trombosit').value;
                        vvv.trombosit = trombosit;
                        var leukosit = document.getElementById('leukosit').value;
                        vvv.leukosit = leukosit;
                        break;
                    case 'darah_lengkap':
                        var hemoglobin = document.getElementById('hemoglobin').value;
                        vvv.hemoglobin = hemoglobin;
                        var hematokrit = document.getElementById('hematokrit').value;
                        vvv.hematokrit = hematokrit;
                        var trombosit = document.getElementById('trombosit').value;
                        vvv.trombosit = trombosit;
                        var leukosit = document.getElementById('leukosit').value;
                        vvv.leukosit = leukosit;
                        var eritrosit = document.getElementById('eritrosit').value;
                        vvv.eritrosit = eritrosit;
                        var mcv = document.getElementById('mcv').value;
                        vvv.mcv = mcv;
                        var mch = document.getElementById('mch').value;
                        vvv.mch = mch;
                        var mchc = document.getElementById('mchc').value;
                        vvv.mchc = mchc;
                        var basofil = document.getElementById('basofil').value;
                        vvv.basofil = basofil;
                        var eosinofil = document.getElementById('eosinofil').value;
                        vvv.eosinofil = eosinofil;
                        var n_segmen = document.getElementById('n_segmen').value;
                        vvv.n_segmen = n_segmen;
                        var n_batang = document.getElementById('n_batang').value;
                        vvv.n_batang = n_batang;
                        var limfosit = document.getElementById('limfosit').value;
                        vvv.limfosit = limfosit;
                        var monosit = document.getElementById('monosit').value;
                        vvv.monosit = monosit;
                        break;
                    case 'hemoglobin':
                        var hemoglobin = document.getElementById('hemoglobin').value;
                        vvv.hemoglobin = hemoglobin;
                        break;
                    case 'hematokrit':
                        var hematokrit = document.getElementById('hematokrit').value;
                        vvv.hematokrit = hematokrit;
                        break;
                    case 'trombosit':
                        var trombosit = document.getElementById('trombosit').value;
                        vvv.trombosit = trombosit;
                        break;
                    case 'leukosit':
                        var leukosit = document.getElementById('leukosit').value;
                        vvv.leukosit = leukosit;
                        break;
                    case 'eritrosit':
                        var eritrosit = document.getElementById('eritrosit').value;
                        vvv.eritrosit = eritrosit;
                        break;
                    case 'mcv_mch_mch':
                        var mcv = document.getElementById('mcv').value;
                        vvv.mcv = mcv;
                        var mch = document.getElementById('mch').value;
                        vvv.mch = mch;
                        var mchc = document.getElementById('mchc').value;
                        vvv.mchc = mchc;
                        break;
                    case 'hitung_jenis_leukosit':
                        var basofil = document.getElementById('basofil').value;
                        vvv.basofil = basofil;
                        var eosinofil = document.getElementById('eosinofil').value;
                        vvv.eosinofil = eosinofil;
                        var n_segmen = document.getElementById('n_segmen').value;
                        vvv.n_segmen = n_segmen;
                        var n_batang = document.getElementById('n_batang').value;
                        vvv.n_batang = n_batang;
                        var limfosit = document.getElementById('limfosit').value;
                        vvv.limfosit = limfosit;
                        var monosit = document.getElementById('monosit').value;
                        vvv.monosit = monosit;
                        break;
                    case 'retikulosit':
                        var retikulosit = document.getElementById('retikulosit').value;
                        vvv.retikulosit = retikulosit;
                        break;
                    case 'hitung_eosinofil':
                        var hitung_eosinofil = document.getElementById('hitung_eosinofil').value;
                        vvv.hitung_eosinofil = hitung_eosinofil;
                        break;
                    case 'golongan_darah':
                        var golongan_darah = document.getElementById('golongan_darah').value;
                        vvv.golongan_darah = golongan_darah;
                        var rhesus = document.getElementById('rhesus').value;
                        vvv.rhesus = rhesus;
                        break;
                    case 'morfologi_darah_tepi':
                        var eritrosit = document.getElementById('eritrosit').value;
                        vvv.eritrosit = eritrosit;
                        var leukosit = document.getElementById('leukosit').value;
                        vvv.leukosit = leukosit;
                        var trombosit = document.getElementById('trombosit').value;
                        vvv.trombosit = trombosit;
                        var kesan = document.getElementById('kesan').value;
                        vvv.kesan = kesan;
                        var saran = document.getElementById('saran').value;
                        vvv.saran = saran;
                        break;










                    case 'it_ratio':
                        var it_ratio = document.getElementById('it_ratio').value;
                        vvv.it_ratio = it_ratio;
                        break;
                    case 'serum_iron':
                        var serum_iron = document.getElementById('serum_iron').value;
                        vvv.serum_iron = serum_iron;
                        break;
                    case 'tibc':
                        var tibc = document.getElementById('tibc').value;
                        vvv.tibc = tibc;
                        break;
                    case 'feritin':
                        var feritin = document.getElementById('feritin').value;
                        vvv.feritin = feritin;
                        break;
                    case 'transferin':
                        var transferin = document.getElementById('transferin').value;
                        vvv.transferin = transferin;
                        break;
                    case 'asam_folat':
                        var asam_folat = document.getElementById('asam_folat').value;
                        vvv.asam_folat = asam_folat;
                        break;
                    case 'vitamin_b12':
                        var vitamin_b12 = document.getElementById('vitamin_b12').value;
                        vvv.vitamin_b12 = vitamin_b12;
                        break;
                    case 'pewarnaan_sitokimia':
                        var pewarnaan_sitokimia = document.getElementById('pewarnaan_sitokimia').value;
                        vvv.pewarnaan_sitokimia = pewarnaan_sitokimia;
                        break;
                    case 'sel_le':
                        var sel_le = document.getElementById('sel_le').value;
                        vvv.sel_le = sel_le;
                        break;
                    case 'le_reaksi':
                        var le_reaksi = document.getElementById('le_reaksi').value;
                        vvv.le_reaksi = le_reaksi;
                        break;
                    case 'hb_elektroforesa':
                        var hb_elektroforesa = document.getElementById('hb_elektroforesa').value;
                        vvv.hb_elektroforesa = hb_elektroforesa;
                        break;
                    case 'g6_pd':
                        var g6_pd = document.getElementById('g6_pd').value;
                        vvv.g6_pd = g6_pd;
                        break;
                    case 'g6_pd_neonatus':
                        var g6_pd_neonatus = document.getElementById('g6_pd_neonatus').value;
                        vvv.g6_pd_neonatus = g6_pd_neonatus;
                        break;
                    case 'nap':
                        var nap = document.getElementById('nap').value;
                        vvv.nap = nap;
                        break;
                    case 'malaria':
                        var malaria = document.getElementById('malaria').value;
                        vvv.malaria = malaria;
                        break;
                    case 'mikrofilaria':
                        var mikrofilaria = document.getElementById('mikrofilaria').value;
                        vvv.mikrofilaria = mikrofilaria;
                        break;
                    case 'antibodi_trombosit':
                        var antibodi_trombosit = document.getElementById('antibodi_trombosit').value;
                        vvv.antibodi_trombosit = antibodi_trombosit;
                        break;
                    case 'cd4':
                        var cd4 = document.getElementById('cd4').value;
                        vvv.cd4 = cd4;
                        break;
                    case 'cd4_cd8':
                        var cd4_cd8 = document.getElementById('cd4_cd8').value;
                        vvv.cd4_cd8 = cd4_cd8;
                        break;
                    case 'coombs_test_direct_indirect':
                        var coombs_direct = document.getElementById('coombs_direct').value;
                        vvv.coombs_direct = coombs_direct;
                        var coombs_indirect = document.getElementById('coombs_indirect').value;
                        vvv.coombs_indirect = coombs_indirect;
                        break;
                    case 'hb_f':
                        var hb_f = document.getElementById('hb_f').value;
                        vvv.hb_f = hb_f;
                        break;
                    case 'hb_h':
                        var hb_h = document.getElementById('hb_h').value;
                        vvv.hb_h = hb_h;
                        break;
                    case 'hb_a2':
                        var hb_a2 = document.getElementById('hb_a2').value;
                        vvv.hb_a2 = hb_a2;
                        break;
                    case 'hams_test':
                        var hams_test = document.getElementById('hams_test').value;
                        vvv.hams_test = hams_test;
                        break;
                    case 'sugar_water_test':
                        var sugar_water_test = document.getElementById('sugar_water_test').value;
                        vvv.sugar_water_test = sugar_water_test;
                        break;
                    case 'sito_genetika':
                        var sito_genetika = document.getElementById('sito_genetika').value;
                        vvv.sito_genetika = sito_genetika;
                        break;
                    case 'kromosom':
                        var kromosom = document.getElementById('kromosom').value;
                        vvv.kromosom = kromosom;
                        break;

//koagulasi
                    case 'hemostasis_lengkap':
                        var pt = document.getElementById('pt').value;
                        vvv.pt = pt;
                        var aptt = document.getElementById('aptt').value;
                        vvv.aptt = aptt;
                        var inr = document.getElementById('inr').value;
                        vvv.inr = inr;
                        break;
                    case 'masa_pendarahan':
                        var masa_pendarahan = document.getElementById('masa_pendarahan').value;
                        vvv.masa_pendarahan = masa_pendarahan;
                        break;
                    case 'masa_pembekuan':
                        var masa_pembekuan = document.getElementById('masa_pembekuan').value;
                        vvv.masa_pembekuan = masa_pembekuan;
                        break;
                    case 'masa_protrombin':
                        var masa_protrombin = document.getElementById('masa_protrombin').value;
                        vvv.masa_protrombin = masa_protrombin;
                        break;
                    case 'aptt':
                        var aptt = document.getElementById('aptt').value;
                        vvv.aptt = aptt;
                        break;
                    case 'fibrinogen':
                        var fibrinogen = document.getElementById('fibrinogen').value;
                        vvv.fibrinogen = fibrinogen;
                        break;
                    case 'masa_trombin':
                        var masa_trombin = document.getElementById('masa_trombin').value;
                        vvv.masa_trombin = masa_trombin;
                        break;
                    case 'd_dimer':
                        var d_dimer = document.getElementById('d_dimer').value;
                        vvv.d_dimer = d_dimer;
                        break;
                    case 'agregasi_trobosit':
                        var agregasi_trobosit = document.getElementById('agregasi_trobosit').value;
                        vvv.agregasi_trobosit = agregasi_trobosit;
                        break;
                    case 'anti_trombin_iii':
                        var anti_trombin_iii = document.getElementById('anti_trombin_iii').value;
                        vvv.anti_trombin_iii = anti_trombin_iii;
                        break;
                    case 'percobaan_pembendungan':
                        var percobaan_pembendungan = document.getElementById('percobaan_pembendungan').value;
                        vvv.percobaan_pembendungan = percobaan_pembendungan;
                        break;
                    case 'inr':
                        var inr = document.getElementById('inr').value;
                        vvv.inr = inr;
                        break;
                    case 'protein_c':
                        var protein_c = document.getElementById('protein_c').value;
                        vvv.protein_c = protein_c;
                        break;
                    case 'protein_s':
                        var protein_s = document.getElementById('protein_s').value;
                        vvv.protein_s = protein_s;
                        break;
                    case 'viskositas_darah_plasma':
                        var viskositas_darah_plasma = document.getElementById('viskositas_darah_plasma').value;
                        vvv.viskositas_darah_plasma = viskositas_darah_plasma;
                        break;
                    case 'faktor_viii':
                        var faktor_viii = document.getElementById('faktor_viii').value;
                        vvv.faktor_viii = faktor_viii;
                        break;
                    case 'faktor_ix':
                        var faktor_ix = document.getElementById('faktor_ix').value;
                        vvv.faktor_ix = faktor_ix;
                        break;

//fungsi hati
                    case 'albumin':
                        var albumin = document.getElementById('albumin').value;
                        vvv.albumin = albumin;
                        break;
                    case 'total_protein':
                        var total_protein = document.getElementById('total_protein').value;
                        vvv.total_protein = total_protein;
                        break;
                    case 'total_protein_albumin_globulin':
                        var total_protein = document.getElementById('total_protein').value;
                        vvv.total_protein = total_protein;
                        var albumin = document.getElementById('albumin').value;
                        vvv.albumin = albumin;
                        var globullin = document.getElementById('globullin').value;
                        vvv.globullin = globullin;
                        break;
                    case 'protein_elektroforesa':
                        var protein_elektroforesa = document.getElementById('protein_elektroforesa').value;
                        vvv.protein_elektroforesa = protein_elektroforesa;
                        break;
                    case 'bilirubin_direct':
                        var bilirubin_direct = document.getElementById('bilirubin_direct').value;
                        vvv.bilirubin_direct = bilirubin_direct;
                        break;
                    case 'bilirubin_indirect_direct_total':
                        var bilirubin_indirect = document.getElementById('bilirubin_indirect').value;
                        vvv.bilirubin_indirect = bilirubin_indirect;
                        var bilirubin_direct = document.getElementById('bilirubin_direct').value;
                        vvv.bilirubin_direct = bilirubin_direct;
                        var bilirubin_total = document.getElementById('bilirubin_total').value;
                        vvv.bilirubin_total = bilirubin_total;
                        break;
                    case 'bilirubin_neonatus':
                        var bilirubin_neonatus = document.getElementById('bilirubin_neonatus').value;
                        vvv.bilirubin_neonatus = bilirubin_neonatus;
                        break;
                    case 'sgot':
                        var sgot = document.getElementById('sgot').value;
                        vvv.sgot = sgot;
                        break;
                    case 'sgpt':
                        var sgpt = document.getElementById('sgpt').value;
                        vvv.sgpt = sgpt;
                        break;
                    case 'gamma_gt':
                        var gamma_gt = document.getElementById('gamma_gt').value;
                        vvv.gamma_gt = gamma_gt;
                        break;
                    case 'cholinesterase':
                        var cholinesterase = document.getElementById('cholinesterase').value;
                        vvv.cholinesterase = cholinesterase;
                        break;
                    case 'alkali_phosphatase':
                        var alkali_phosphatase = document.getElementById('alkali_phosphatase').value;
                        vvv.alkali_phosphatase = alkali_phosphatase;
                        break;
                    case 'lap':
                        var lap = document.getElementById('lap').value;
                        vvv.lap = lap;
                        break;
//pankreas
                    case 'amilase':
                        var amilase = document.getElementById('amilase').value;
                        vvv.amilase = amilase;
                        break;
                    case 'lipase':
                        var lipase = document.getElementById('lipase').value;
                        vvv.lipase = lipase;
                        break;
//lemak darah
                    case 'cholesterol_total':
                        var cholesterol_total = document.getElementById('cholesterol_total').value;
                        vvv.cholesterol_total = cholesterol_total;
                        break;
                    case 'ldl_cholesterol':
                        var ldl_cholesterol = document.getElementById('ldl_cholesterol').value;
                        vvv.ldl_cholesterol = ldl_cholesterol;
                        break;
                    case 'hdl_cholesterol':
                        var hdl_cholesterol = document.getElementById('hdl_cholesterol').value;
                        vvv.hdl_cholesterol = hdl_cholesterol;
                        break;
                    case 'trigliserida':
                        var trigliserida = document.getElementById('trigliserida').value;
                        vvv.trigliserida = trigliserida;
                        break;
                    case 'total_lipid':
                        var total_lipid = document.getElementById('total_lipid').value;
                        vvv.total_lipid = total_lipid;
                        break;
                    case 'ratio_chol_t_hdl':
                        var ratio_chol_t_hdl = document.getElementById('ratio_chol_t_hdl').value;
                        vvv.ratio_chol_t_hdl = ratio_chol_t_hdl;
                        break;
                    case 'vldl':
                        var vldl = document.getElementById('vldl').value;
                        vvv.vldl = vldl;
                        break;

//fungsi jantung
                    case 'ck':
                        var ck = document.getElementById('ck').value;
                        vvv.ck = ck;
                        break;
                    case 'ckmb':
                        var ckmb = document.getElementById('ckmb').value;
                        vvv.ckmb = ckmb;
                        break;
                    case 'ldh':
                        var ldh = document.getElementById('ldh').value;
                        vvv.ldh = ldh;
                        break;
                    case 'alfa_hbdh':
                        var alfa_hbdh = document.getElementById('alfa_hbdh').value;
                        vvv.alfa_hbdh = alfa_hbdh;
                        break;
                    case 'troponin_t_kuantitatif':
                        var troponin_t_kuantitatif = document.getElementById('troponin_t_kuantitatif').value;
                        vvv.troponin_t_kuantitatif = troponin_t_kuantitatif;
                        break;
                    case 'troponin_t_kualitatif':
                        var troponin_t_kualitatif = document.getElementById('troponin_t_kualitatif').value;
                        vvv.troponin_t_kualitatif = troponin_t_kualitatif;
                        break;
                    case 'nt_pro_bnp':
                        var nt_pro_bnp = document.getElementById('nt_pro_bnp').value;
                        vvv.nt_pro_bnp = nt_pro_bnp;
                        break;
//fungsi ginjal
                    case 'ureum':
                        var ureum = document.getElementById('ureum').value;
                        vvv.ureum = ureum;
                        break;
                    case 'creatinin':
                        var creatinin = document.getElementById('creatinin').value;
                        vvv.creatinin = creatinin;
                        break;
                    case 'ureum_clearance_test':
                        var ureum_clearance_test = document.getElementById('ureum_clearance_test').value;
                        vvv.ureum_clearance_test = ureum_clearance_test;
                        break;
                    case 'creatinin_clearance_test':
                        var creatinin_clearance_test = document.getElementById('creatinin_clearance_test').value;
                        vvv.creatinin_clearance_test = creatinin_clearance_test;
                        break;
                    case 'asam_urat':
                        var asam_urat = document.getElementById('asam_urat').value;
                        vvv.asam_urat = asam_urat;
                        break;
                    case 'cystatin_c':
                        var cystatin_c = document.getElementById('cystatin_c').value;
                        vvv.cystatin_c = cystatin_c;
                        break;
                    case 'bun':
                        var bun = document.getElementById('bun').value;
                        vvv.bun = bun;
                        break;
                    case 'e_gfr':
                        var e_gfr = document.getElementById('e_gfr').value;
                        vvv.e_gfr = e_gfr;
                        break;
//elektrolit
                    case 'calcium':
                        var calcium = document.getElementById('calcium').value;
                        vvv.calcium = calcium;
                        break;
                    case 'phospor_anorganik':
                        var phospor_anorganik = document.getElementById('phospor_anorganik').value;
                        vvv.phospor_anorganik = phospor_anorganik;
                        break;
                    case 'magnesium':
                        var magnesium = document.getElementById('magnesium').value;
                        vvv.magnesium = magnesium;
                        break;
                    case 'paket_elektrolit':
                        var na = document.getElementById('na').value;
                        vvv.na = na;
                        var k = document.getElementById('k').value;
                        vvv.k = k;
                        var cl = document.getElementById('cl').value;
                        vvv.cl = cl;
                        break;
                    case 'plumbum_serum':
                        var plumbum_serum = document.getElementById('plumbum_serum').value;
                        vvv.plumbum_serum = plumbum_serum;
                        break;
                    case 'osmolalitas_darah':
                        var osmolalitas_darah = document.getElementById('osmolalitas_darah').value;
                        vvv.osmolalitas_darah = osmolalitas_darah;
                        break;
                    case 'calcium_ion':
                        var calcium_ion = document.getElementById('calcium_ion').value;
                        vvv.calcium_ion = calcium_ion;
                        break;
//karbohidrat                        
                    case 'gula_darah_puasa':
                        var gula_darah_puasa = document.getElementById('gula_darah_puasa').value;
                        vvv.gula_darah_puasa = gula_darah_puasa;
                        break;
                    case 'gula_darah_2_jam_pp':
                        var gula_darah_2_jam_pp = document.getElementById('gula_darah_2_jam_pp').value;
                        vvv.gula_darah_2_jam_pp = gula_darah_2_jam_pp;
                        break;
                    case 'glukosa_sewaktu':
                        var glukosa_sewaktu = document.getElementById('glukosa_sewaktu').value;
                        vvv.glukosa_sewaktu = glukosa_sewaktu;
                        break;
                    case 'kurva_harian':
                        var kurva_harian = document.getElementById('kurva_harian').value;
                        vvv.kurva_harian = kurva_harian;
                        break;
                    case 'gtt':
                        var gtt = document.getElementById('gtt').value;
                        vvv.gtt = gtt;
                        break;
                    case 'hba1c':
                        var hba1c = document.getElementById('hba1c').value;
                        vvv.hba1c = hba1c;
                        break;
                    case 'keton_darah':
                        var keton_darah = document.getElementById('keton_darah').value;
                        vvv.keton_darah = keton_darah;
                        break;
                    case 'fruktosamin':
                        var fruktosamin = document.getElementById('fruktosamin').value;
                        vvv.fruktosamin = fruktosamin;
                        break;
                    case 'c_peptide':
                        var c_peptide = document.getElementById('c_peptide').value;
                        vvv.c_peptide = c_peptide;
                        break;
                    case 'insulin':
                        var insulin = document.getElementById('insulin').value;
                        vvv.insulin = insulin;
                        break;
//gas darah
                    case 'analisa_gas_darah':
                        var analisa_gas_darah = document.getElementById('analisa_gas_darah').value;
                        vvv.analisa_gas_darah = analisa_gas_darah;
                        break;
                    case 'asam_laktat':
                        var asam_laktat = document.getElementById('asam_laktat').value;
                        vvv.asam_laktat = asam_laktat;
                        break;

//seroimunologi
                    case 'anti_dengue_igg_igm':
                        var anti_dengue_igg = document.getElementById('anti_dengue_igg').value;
                        vvv.anti_dengue_igg = anti_dengue_igg;
                        var anti_dengue_igm = document.getElementById('anti_dengue_igm').value;
                        vvv.anti_dengue_igm = anti_dengue_igm;
                        break;
                    case 'dengue_ns1_antigen':
                        var dengue_ns1_antigen = document.getElementById('dengue_ns1_antigen').value;
                        vvv.dengue_ns1_antigen = dengue_ns1_antigen;
                        break;
                    case 'widal':
                        var salmonella_thypi_o = document.getElementById('salmonella_thypi_o').value;
                        vvv.salmonella_thypi_o = salmonella_thypi_o;
                        var salmonella_parathypi_ao = document.getElementById('salmonella_parathypi_ao').value;
                        vvv.salmonella_parathypi_ao = salmonella_parathypi_ao;
                        var salmonella_parathypi_bo = document.getElementById('salmonella_parathypi_bo').value;
                        vvv.salmonella_parathypi_bo = salmonella_parathypi_bo;
                        var salmonella_parathypi_co = document.getElementById('salmonella_parathypi_co').value;
                        vvv.salmonella_parathypi_co = salmonella_parathypi_co;
                        var salmonella_thypi_h = document.getElementById('salmonella_thypi_h').value;
                        vvv.salmonella_thypi_h = salmonella_thypi_h;
                        var salmonella_parathypi_ah = document.getElementById('salmonella_parathypi_ah').value;
                        vvv.salmonella_parathypi_ah = salmonella_parathypi_ah;
                        var salmonella_parathypi_bh = document.getElementById('salmonella_parathypi_bh').value;
                        vvv.salmonella_parathypi_bh = salmonella_parathypi_bh;
                        var salmonella_parathypi_ch = document.getElementById('salmonella_parathypi_ch').value;
                        vvv.salmonella_parathypi_ch = salmonella_parathypi_ch;
                        break;
                    case 'anti_salmonella_igm':
                        var anti_salmonella_igm = document.getElementById('anti_salmonella_igm').value;
                        vvv.anti_salmonella_igm = anti_salmonella_igm;
                        break;
                    case 'crp':
                        var crp = document.getElementById('crp').value;
                        vvv.crp = crp;
                        break;
                    case 'asto':
                        var asto = document.getElementById('asto').value;
                        vvv.asto = asto;
                        break;
                    case 'rheumatoid_faktor':
                        var rheumatoid_faktor = document.getElementById('rheumatoid_faktor').value;
                        vvv.rheumatoid_faktor = rheumatoid_faktor;
                        break;
                    case 'serologi_amoeba':
                        var serologi_amoeba = document.getElementById('serologi_amoeba').value;
                        vvv.serologi_amoeba = serologi_amoeba;
                        break;
                    case 'vdrl':
                        var vdrl = document.getElementById('vdrl').value;
                        vvv.vdrl = vdrl;
                        break;
                    case 'tpha':
                        var tpha = document.getElementById('tpha').value;
                        vvv.tpha = tpha;
                        break;
                    case 'anti_leptospira_igg':
                        var anti_leptospira_igg = document.getElementById('anti_leptospira_igg').value;
                        vvv.anti_leptospira_igg = anti_leptospira_igg;
                        break;
                    case 'anti_leptospira_igm':
                        var anti_leptospira_igm = document.getElementById('anti_leptospira_igm').value;
                        vvv.anti_leptospira_igm = anti_leptospira_igm;
                        break;
                    case 'anti_mycoplasma_igg_igm':
                        var anti_mycoplasma_igg = document.getElementById('anti_mycoplasma_igg').value;
                        vvv.anti_mycoplasma_igg = anti_mycoplasma_igg;
                        var anti_mycoplasma_igm = document.getElementById('anti_mycoplasma_igm').value;
                        vvv.anti_mycoplasma_igm = anti_mycoplasma_igm;
                        break;
                    case 'anti_ebv_ea_iga':
                        var anti_ebv_ea_iga = document.getElementById('anti_ebv_ea_iga').value;
                        vvv.anti_ebv_ea_iga = anti_ebv_ea_iga;
                        break;
                    case 'anti_ebv_ea_igg':
                        var anti_ebv_ea_igg = document.getElementById('anti_ebv_ea_igg').value;
                        vvv.anti_ebv_ea_igg = anti_ebv_ea_igg;
                        break;
                    case 'anti_ebv_ea_igm':
                        var anti_ebv_ea_igm = document.getElementById('anti_ebv_ea_igm').value;
                        vvv.anti_ebv_ea_igm = anti_ebv_ea_igm;
                        break;
                    case 'anti_tb_igg':
                        var anti_tb_igg = document.getElementById('anti_tb_igg').value;
                        vvv.anti_tb_igg = anti_tb_igg;
                        break;
                    case 'serologi_jamur':
                        var serologi_jamur = document.getElementById('serologi_jamur').value;
                        vvv.serologi_jamur = serologi_jamur;
                        break;
                    case 'serologi_jamur_lengkap':
                        var serologi_jamur_lengkap = document.getElementById('serologi_jamur_lengkap').value;
                        vvv.serologi_jamur_lengkap = serologi_jamur_lengkap;
                        break;
//hepatitis                        
                    case 'hbsag':
                        var hbsag = document.getElementById('hbsag').value;
                        vvv.hbsag = hbsag;
                        break;
                    case 'anti_hbs':
                        var anti_hbs = document.getElementById('anti_hbs').value;
                        vvv.anti_hbs = anti_hbs;
                        break;
                    case 'hbeag':
                        var hbeag = document.getElementById('hbeag').value;
                        vvv.hbeag = hbeag;
                        break;
                    case 'anti_hbe':
                        var anti_hbe = document.getElementById('anti_hbe').value;
                        vvv.anti_hbe = anti_hbe;
                        break;
                    case 'anti_hbc_total':
                        var anti_hbc_total = document.getElementById('anti_hbc_total').value;
                        vvv.anti_hbc_total = anti_hbc_total;
                        break;
                    case 'anti_hbc_igm':
                        var anti_hbc_igm = document.getElementById('anti_hbc_igm').value;
                        vvv.anti_hbc_igm = anti_hbc_igm;
                        break;
                    case 'hbv_dna':
                        var hbv_dna = document.getElementById('hbv_dna').value;
                        vvv.hbv_dna = hbv_dna;
                        break;
                    case 'anti_hav_igm':
                        var anti_hav_igm = document.getElementById('anti_hav_igm').value;
                        vvv.anti_hav_igm = anti_hav_igm;
                        break;
                    case 'anti_hav_total':
                        var anti_hav_total = document.getElementById('anti_hav_total').value;
                        vvv.anti_hav_total = anti_hav_total;
                        break;
                    case 'anti_hcv_total':
                        var anti_hcv_total = document.getElementById('anti_hcv_total').value;
                        vvv.anti_hcv_total = anti_hcv_total;
                        break;
                    case 'anti_hcv_igm':
                        var anti_hcv_igm = document.getElementById('anti_hcv_igm').value;
                        vvv.anti_hcv_igm = anti_hcv_igm;
                        break;
                    case 'anti_hdv':
                        var anti_hdv = document.getElementById('anti_hdv').value;
                        vvv.anti_hdv = anti_hdv;
                        break;
                    case 'anti_hev_igm':
                        var anti_hev_igm = document.getElementById('anti_hev_igm').value;
                        vvv.anti_hev_igm = anti_hev_igm;
                        break;
                    case 'anti_hev_igg':
                        var anti_hev_igg = document.getElementById('anti_hev_igg').value;
                        vvv.anti_hev_igg = anti_hev_igg;
                        break;
//urinalisa
                    case 'urin_lengkap':
                        var warna_urin = document.getElementById('warna_urin').value;
                        vvv.warna_urin = warna_urin;
                        var kejernihan = document.getElementById('kejernihan').value;
                        vvv.kejernihan = kejernihan;
                        var berat_jenis = document.getElementById('berat_jenis').value;
                        vvv.berat_jenis = berat_jenis;
                        var ph_urin = document.getElementById('ph_urin').value;
                        vvv.ph_urin = ph_urin;
                        var keton = document.getElementById('keton').value;
                        vvv.keton = keton;
                        var nitrit = document.getElementById('nitrit').value;
                        vvv.nitrit = nitrit;
                        var urobilinogen = document.getElementById('urobilinogen').value;
                        vvv.urobilinogen = urobilinogen;
                        var bilirubin = document.getElementById('bilirubin').value;
                        vvv.bilirubin = bilirubin;
                        var protein_urin = document.getElementById('protein_urin').value;
                        vvv.protein_urin = protein_urin;
                        var glukosa_urin = document.getElementById('glukosa_urin').value;
                        vvv.glukosa_urin = glukosa_urin;
                        var leukosit_urin = document.getElementById('leukosit_urin').value;
                        vvv.leukosit_urin = leukosit_urin;
                        var eritrosit_urin = document.getElementById('eritrosit_urin').value;
                        vvv.eritrosit_urin = eritrosit_urin;
                        var epitel = document.getElementById('epitel').value;
                        vvv.epitel = epitel;
                        var leukosit_urin = document.getElementById('leukosit_urin').value;
                        vvv.leukosit_urin = leukosit_urin;
                        var eritrosit_urin = document.getElementById('eritrosit_urin').value;
                        vvv.eritrosit_urin = eritrosit_urin;
                        var bakteri = document.getElementById('bakteri').value;
                        vvv.bakteri = bakteri;
                        var kristal = document.getElementById('kristal').value;
                        vvv.kristal = kristal;
                        var jamur_urin = document.getElementById('jamur_urin').value;
                        vvv.jamur_urin = jamur_urin;
                        var lain_lain_urin = document.getElementById('lain_lain_urin').value;
                        vvv.lain_lain_urin = lain_lain_urin;
                        break;
                    case 'urin_rutin_':
                        var warna_urin = document.getElementById('warna_urin').value;
                        vvv.warna_urin = warna_urin;
                        var kejernihan = document.getElementById('kejernihan').value;
                        vvv.kejernihan = kejernihan;
                        var berat_jenis = document.getElementById('berat_jenis').value;
                        vvv.berat_jenis = berat_jenis;
                        var ph_urin = document.getElementById('ph_urin').value;
                        vvv.ph_urin = ph_urin;
                        var keton = document.getElementById('keton').value;
                        vvv.keton = keton;
                        var nitrit = document.getElementById('nitrit').value;
                        vvv.nitrit = nitrit;
                        var urobilinogen = document.getElementById('urobilinogen').value;
                        vvv.urobilinogen = urobilinogen;
                        var bilirubin = document.getElementById('bilirubin').value;
                        vvv.bilirubin = bilirubin;
                        var protein_urin = document.getElementById('protein_urin').value;
                        vvv.protein_urin = protein_urin;
                        var glukosa_urin = document.getElementById('glukosa_urin').value;
                        vvv.glukosa_urin = glukosa_urin;
                        var leukosit_urin = document.getElementById('leukosit_urin').value;
                        vvv.leukosit_urin = leukosit_urin;
                        var eritrosit_urin = document.getElementById('eritrosit_urin').value;
                        vvv.eritrosit_urin = eritrosit_urin;
                        break;
                    case 'sedimen_urine':
                        var epitel = document.getElementById('epitel').value;
                        vvv.epitel = epitel;
                        var leukosit_urin = document.getElementById('leukosit_urin').value;
                        vvv.leukosit_urin = leukosit_urin;
                        var eritrosit_urin = document.getElementById('eritrosit_urin').value;
                        vvv.eritrosit_urin = eritrosit_urin;
                        var bakteri = document.getElementById('bakteri').value;
                        vvv.bakteri = bakteri;
                        var kristal = document.getElementById('kristal').value;
                        vvv.kristal = kristal;
                        var jamur_urin = document.getElementById('jamur_urin').value;
                        vvv.jamur_urin = jamur_urin;
                        var lain_lain_urin = document.getElementById('lain_lain_urin').value;
                        vvv.lain_lain_urin = lain_lain_urin;
                        break;
                    case 'test_kehamilan':
                        var test_kehamilan = document.getElementById('test_kehamilan').value;
                        vvv.test_kehamilan = test_kehamilan;
                        break;
//narkoba
                    case 'amphetamine':
                        var amphetamine = document.getElementById('amphetamine').value;
                        vvv.amphetamine = amphetamine;
                        break;
                    case 'meth_amphetamine':
                        var meth_amphetamine = document.getElementById('meth_amphetamine').value;
                        vvv.meth_amphetamine = meth_amphetamine;
                        break;
                    case 'opiat_morfin':
                        var opiat_morfin = document.getElementById('opiat_morfin').value;
                        vvv.opiat_morfin = opiat_morfin;
                        break;
                    case 'benzodiazepin':
                        var benzodiazepin = document.getElementById('benzodiazepin').value;
                        vvv.benzodiazepin = benzodiazepin;
                        break;
                    case 'thc':
                        var thc = document.getElementById('thc').value;
                        vvv.thc = thc;
                        break;
                    case 'opiat_amphetamin_thc':
                        var opiat_morfin = document.getElementById('opiat_morfin1').value;
                        vvv.opiat_morfin = opiat_morfin;
                        var amphetamine = document.getElementById('amphetamine1').value;
                        vvv.amphetamine = amphetamine;
                        var thc = document.getElementById('thc1').value;
                        vvv.thc = thc;
                        break;
                    case 'cocaine':
                        var cocaine = document.getElementById('cocaine').value;
                        vvv.cocaine = cocaine;
                        break;
//feses
                    case 'feses_rutin':
                        var warna_feses = document.getElementById('warna_feses').value;
                        vvv.warna_feses = warna_feses;
                        var bau_feses = document.getElementById('bau_feses').value;
                        vvv.bau_feses = bau_feses;
                        var konsistensi = document.getElementById('konsistensi').value;
                        vvv.konsistensi = konsistensi;
                        var lendir = document.getElementById('lendir').value;
                        vvv.lendir = lendir;
                        var darah = document.getElementById('darah').value;
                        vvv.darah = darah;
                        var ph_feses = document.getElementById('ph_feses').value;
                        vvv.ph_feses = ph_feses;
                        break;
                    case 'feses_lengkap':
                        var warna_feses = document.getElementById('warna_feses').value;
                        vvv.warna_feses = warna_feses;
                        var bau_feses = document.getElementById('bau_feses').value;
                        vvv.bau_feses = bau_feses;
                        var konsistensi = document.getElementById('konsistensi').value;
                        vvv.konsistensi = konsistensi;
                        var lendir = document.getElementById('lendir').value;
                        vvv.lendir = lendir;
                        var darah = document.getElementById('darah').value;
                        vvv.darah = darah;
                        var ph_feses = document.getElementById('ph_feses').value;
                        vvv.ph_feses = ph_feses;
                        var eritrosit = document.getElementById('eritrosit').value;
                        vvv.eritrosit = eritrosit;
                        var lekosit_feses = document.getElementById('lekosit_feses').value;
                        vvv.lekosit_feses = lekosit_feses;
                        var amoeba = document.getElementById('amoeba').value;
                        vvv.amoeba = amoeba;
                        var parasit_telur_cacing = document.getElementById('parasit_telur_cacing').value;
                        vvv.parasit_telur_cacing = parasit_telur_cacing;
                        var sisa_makanan = document.getElementById('sisa_makanan').value;
                        vvv.sisa_makanan = sisa_makanan;
                        var lemak = document.getElementById('lemak').value;
                        vvv.lemak = lemak;
                        var lain_lain_feses = document.getElementById('lain_lain_feses').value;
                        vvv.lain_lain_feses = lain_lain_feses;
                        break;
                    case 'darah_samar':
                        var darah_samar = document.getElementById('darah_samar').value;
                        vvv.darah_samar = darah_samar;
                        break;
//sekret                        
                    case 'pewarnaan_gram_sekret':
                        var pewarnaan_gram_sekret = document.getElementById('pewarnaan_gram_sekret').value;
                        vvv.pewarnaan_gram_sekret = pewarnaan_gram_sekret;
                        break;
                    case 'candida_albican':
                        var candida_albican = document.getElementById('candida_albican').value;
                        vvv.candida_albican = candida_albican;
                        break;
                    case 'jamur_sekret':
                        var jamur_sekret = document.getElementById('jamur_sekret').value;
                        vvv.jamur_sekret = jamur_sekret;
                        break;
                    case 'tricomonas':
                        var tricomonas = document.getElementById('tricomonas').value;
                        vvv.tricomonas = tricomonas;
                        break;
                    case 'koh_10':
                        var koh_10 = document.getElementById('koh_10').value;
                        vvv.koh_10 = koh_10;
                        break;
//sputum
                    case 'pewarnaan_gram_sputum':
                        var pewarnaan_gram_sputum = document.getElementById('pewarnaan_gram_sputum').value;
                        vvv.pewarnaan_gram_sputum = pewarnaan_gram_sputum;
                        break;
                    case 'pewarnaan_bta':
                        var pewarnaan_bta = document.getElementById('pewarnaan_bta').value;
                        vvv.pewarnaan_bta = pewarnaan_bta;
                        break;
                    case 'difteri':
                        var difteri = document.getElementById('difteri').value;
                        vvv.difteri = difteri;
                        break;
                    case 'jamur_sputum':
                        var jamur_sputum = document.getElementById('jamur_sputum').value;
                        vvv.jamur_sputum = jamur_sputum;
                        break;
                    default:
                        break;
                }
            }
        }
        console.log('ini param nya : ' + JSON.stringify(vvv));
        var datjson2 = new Object();
        datjson2.procCode = "500034";
        datjson2.user_id = window.localStorage.getItem('lab_user_id');
        datjson2.book_code = document.getElementById("book_code_mcu").value;
        datjson2.ext = vvv;
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
                    destroyMcu();
                    getListMcu();
                    alert('success');
                    $('.cd-popup-mcu').removeClass('is-visible');
//                    $("#form_add_kwn")[0].reset();
                } else {
                    alert(response.respDesc);
                }
            },
            complete: function () {
                $('#loader').addClass('hidden');
            }
        });
    });
</script>
