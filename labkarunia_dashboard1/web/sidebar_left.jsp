<%-- 
    Document   : sidebar_left
    Created on : Jan 03, 2020, 4:38:43 PM
    Author     : suhanda
--%>

<style>
    .nav-link:hover{
        background-color: #3dceb7;
    }
    .isi{
        display: none;
    }
    .active {
        display: block;
    }
    ul, #isi {
        list-style-type: none;
    }

    .isi_1{
        display: none;
    }
    .active {
        display: block;
    }

    ul, #isi_1 {
        list-style-type: none;
    }

    .isi_mst{
        display: none;
    }
    .active {
        display: block;
    }

    ul, #isi_mst {
        list-style-type: none;
    }

    .isi_act{
        display: none;
    }
    .active {
        display: block;
    }

    ul, #isi_act {
        list-style-type: none;
    }

    .isi_rslt{
        display: none;
    }
    .active {
        display: block;
    }

    ul, #isi_rslt {
        list-style-type: none;
    }


    .inv_1 {
        border-radius: 5px;
        padding: 5px;
    }
    .inv_1:hover {
        background-color: rgba(255,255,255,.1);
    }
    .atg_1 {
        border-radius: 5px;
        padding: 5px;
    }
    .atg_1:hover {
        background-color: rgba(255,255,255,.1);
    }

    .mst_1 {
        border-radius: 5px;
        padding: 5px;
    }
    .mst_1:hover {
        background-color: rgba(255,255,255,.1);
    }
    .act_1 {
        border-radius: 5px;
        padding: 5px;
    }
    .act_1:hover {
        background-color: rgba(255,255,255,.1);
    }
    .rslt_1 {
        border-radius: 5px;
        padding: 5px;
    }
    .rslt_1:hover {
        background-color: rgba(255,255,255,.1);
    }
    li.active {
        background-color: #3dceb7;
    }
    .sidebar-dark-primary .nav-sidebar>.nav-item>.nav-link.active, .sidebar-light-primary .nav-sidebar>.nav-item>.nav-link.active {
        background-color: #3dceb7;
    }
    .dropdown-toggle:after {
        margin-top: 10px;
        float:right;
    }

</style>
<script>
    $(document).ready(function ($) {
        switch (userlevel) {
            case '1':
                break;
            case '2':
                document.getElementById('bar_user').remove();
                document.getElementById('li_sal').remove();
                break;
            case '3':
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                document.getElementById('li_lab').remove();
                document.getElementById('li_ins').remove();
                document.getElementById('li_jas').remove();
                document.getElementById('li_mjas').remove();
                document.getElementById('li_tuj').remove();
                document.getElementById('li_rea').remove();
                document.getElementById('li_bay').remove();
                document.getElementById('li_sal').remove();
                document.getElementById('li_draf').remove();
                document.getElementById('li_reg').remove();
                break;
            case '4':
                document.getElementById('bar_master').remove();
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                document.getElementById('bar_report').remove();
                break;
            case '5':
                document.getElementById('bar_master').remove();
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                document.getElementById('bar_report').remove();
                document.getElementById('li_pla').remove();

                break;
            case '6':
                document.getElementById('bar_master').remove();
                document.getElementById('bar_result').remove();
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                document.getElementById('bar_report').remove();
                document.getElementById('li_draf').remove();
                document.getElementById('li_pla').remove();
                break;
            case '7':
                document.getElementById('li_lab').remove();
                document.getElementById('li_tuj').remove();
                document.getElementById('li_wni').remove();
                document.getElementById('li_rea').remove();
                document.getElementById('li_bay').remove();
                document.getElementById('li_sal').remove();

                document.getElementById('bar_activity').remove();
                document.getElementById('bar_result').remove();
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                break;
            case '8':
//                menu
                document.getElementById('bar_master').remove();
                document.getElementById('bar_result').remove();
                document.getElementById('bar_news').remove();
                document.getElementById('bar_user').remove();
                document.getElementById('bar_report').remove();
                document.getElementById('li_draf').remove();
                document.getElementById('li_pla').remove();

                break;
            default:
                break;
        }
    });

</script>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
        <img src="image/account.png" alt="Lab Karunia Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light" style="color: white">LAB KARUNIA</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true">
                <li class="nav-item has-treeview" onclick="li_db()">
                    <a href="db" class="nav-link" id="li_db">
                        <i class="nav-icon fas fa-chart-bar"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="border-top my-3"></li>

                <li class="nav-item has-treeview mst" id="bar_master">
                    <a href="#" class="nav-link dropdown-toggle" id="li_mst">
                        <i class="nav-icon fas fa-database"></i>
                        <p>Master</p>
                    </a>

                    <ul class="isi_mst">
                        <li class="mst_1" onclick="li_lab()" id="li_lab"><a href="lab" style="display: inline-flex; width: -webkit-fill-available">Lab</a></li>
                        <li class="mst_1" onclick="li_ins()" id="li_ins"><a href="ins" style="display: inline-flex; width: -webkit-fill-available">Institusi</a></li>
                        <li class="mst_1" onclick="li_jas()" id="li_jas"><a href="jas" style="display: inline-flex; width: -webkit-fill-available">Jasa Pelayanan</a></li>
                        <li class="mst_1" onclick="li_mjas()" id="li_mjas"><a href="mjas" style="display: inline-flex; width: -webkit-fill-available">Mapping Jasa</a></li>
                        <li class="mst_1" onclick="li_tuj()" id="li_tuj"><a href="tuj" style="display: inline-flex; width: -webkit-fill-available">Tujuan Cek</a></li>
                        <li class="mst_1" onclick="li_wni()" id="li_wni"><a href="wni" style="display: inline-flex; width: -webkit-fill-available">Kewarganegaraan</a></li>
                        <li class="mst_1" onclick="li_rea()" id="li_rea"><a href="prodrea" style="display: inline-flex; width: -webkit-fill-available">Produk Reagent</a></li>
                        <li class="mst_1" onclick="li_bay()" id="li_bay"><a href="bay" style="display: inline-flex; width: -webkit-fill-available">Tipe Pembayaran</a></li>
                        <li class="mst_1" onclick="li_sal()" id="li_sal"><a href="sal" style="display: inline-flex; width: -webkit-fill-available">Sales</a></li>
                    </ul>
                </li>

                <li class="nav-item has-treeview act" id="bar_activity">
                    <a href="#" class="nav-link dropdown-toggle" id="li_act">
                        <i class="nav-icon fas fa-hiking"></i>
                        <p>Activity</p>
                    </a>
                    <ul class="isi_act">
                        <li class="act_1" onclick="li_draf()" id="li_draf"><a href="draf" style="display: inline-flex">Draft Pasien</a></li>
                        <li class="act_1" onclick="li_reg()" id="li_reg"><a href="reg" style="display: inline-flex">List Pasien</a></li>
                        <li class="act_1" onclick="li_res()" id="li_res"><a href="res" style="display: inline-flex">List Reservasi</a></li>
                        <li class="act_1" onclick="li_ant()" id="li_ant"><a href="ant" style="display: inline-flex">List Antrian</a></li>
                        <li class="act_1" onclick="li_pla()" id="li_pla"><a href="pla" style="display: inline-flex">Sample Plating</a></li>
                    </ul>
                </li>


                <li class="nav-item has-treeview rslt" id="bar_result">
                    <a href="#" class="nav-link dropdown-toggle" id="li_rslt">
                        <i class="nav-icon fas fa-poll"></i>
                        <p>Result</p>
                    </a>
                    <ul class="isi_rslt">
                        <li class="rslt_1" onclick="li_met_ins()" id="li_met_ins"><a href="met_ins" style="display: inline-flex">Metode Instan</a></li>
                        <li class="rslt_1" onclick="li_met_mes()" id="li_met_mes"><a href="met_mes" style="display: inline-flex">Metode Mesin</a></li>
                        <li class="rslt_1" onclick="li_met_mcu()" id="li_met_mcu"><a href="met_mcu" style="display: inline-flex">MCU</a></li>
                        <li class="rslt_1" onclick="li_em_has()" id="li_em_has"><a href="em_has" style="display: inline-flex">Email Hasil</a></li>
                    </ul>
                </li>
                <li class="border-top my-3"></li>
                <li class="nav-item has-treeview" onclick="li_news()" id="bar_news">
                    <a href="news" class="nav-link" id="li_news">
                        <i class="nav-icon fas fa-newspaper"></i>
                        <p>News</p>
                    </a>
                </li>
                <li class="nav-item has-treeview" onclick="li_acc()" id="bar_account">
                    <a href="acc" class="nav-link" id="li_acc">
                        <i class="nav-icon fas fa-user"></i>
                        <p>Account</p>
                    </a>
                </li>
                <li class="nav-item has-treeview" onclick="li_usr()" id="bar_user">
                    <a href="usr" class="nav-link"  id="li_usr">
                        <i class="nav-icon fas fa-users"></i>
                        <p>User</p>
                    </a>
                </li>
                <li class="nav-item has-treeview" onclick="li_rpt()" id="bar_report">
                    <a href="rpt" class="nav-link" id="li_rpt">
                        <i class="nav-icon fas fa-file"></i>
                        <p>Report</p>
                    </a>
                </li>
            </ul>
            <script>
                var toggler = document.getElementsByClassName("inv");
                var i;
                for (i = 0; i < toggler.length; i++) {
                    toggler[i].addEventListener("click", function () {
                        this.parentElement.querySelector(".isi").classList.toggle("active");
                    });
                }
                var toggler1 = document.getElementsByClassName("atg");
                var i;
                for (i = 0; i < toggler1.length; i++) {
                    toggler1[i].addEventListener("click", function () {
                        this.parentElement.querySelector(".isi_1").classList.toggle("active");
                    });
                }

                var toggler2 = document.getElementsByClassName("mst");
                var i;
                for (i = 0; i < toggler2.length; i++) {
                    toggler2[i].addEventListener("click", function () {
                        this.parentElement.querySelector(".isi_mst").classList.toggle("active");
                    });
                }

                var toggler3 = document.getElementsByClassName("act");
                var i;
                for (i = 0; i < toggler3.length; i++) {
                    toggler3[i].addEventListener("click", function () {
                        this.parentElement.querySelector(".isi_act").classList.toggle("active");
                    });
                }

                var toggler4 = document.getElementsByClassName("rslt");
                var i;
                for (i = 0; i < toggler4.length; i++) {
                    toggler4[i].addEventListener("click", function () {
                        this.parentElement.querySelector(".isi_rslt").classList.toggle("active");
                    });
                }

                function li_db() {
                    window.localStorage.setItem('side', 'db');
                }
                ;
                function li_news() {
                    window.localStorage.setItem('side', 'news');
                }
                ;
                function li_acc() {
                    window.localStorage.setItem('side', 'acc');
                }
                ;
                function li_bus() {
                    window.localStorage.setItem('side', 'bus');
                }
                ;
                function li_usr() {
                    window.localStorage.setItem('side', 'usr');
                }
                ;
                function li_pd() {
                    window.localStorage.setItem('side', 'pd');
                }
                ;

                function li_dis() {
                    window.localStorage.setItem('side', 'dis');
                }
                ;
                function li_cus() {
                    window.localStorage.setItem('side', 'cus');
                }
                ;
                function li_rpt() {
                    window.localStorage.setItem('side', 'rpt');
                }
                ;




                function li_sum() {
                    window.localStorage.setItem('side', 'sum');
                }
                ;
                function li_sup() {
                    window.localStorage.setItem('side', 'sup');
                }
                ;
                function li_po() {
                    window.localStorage.setItem('side', 'po');
                }
                ;





                function li_exp() {
                    window.localStorage.setItem('side', 'exp');
                }
                ;
                function li_inc() {
                    window.localStorage.setItem('side', 'inc');
                }
                ;
                function li_jur() {
                    window.localStorage.setItem('side', 'jur');
                }
                ;



                function li_lab() {
                    window.localStorage.setItem('side', 'lab');
                }
                ;
                function li_ins() {
                    window.localStorage.setItem('side', 'ins');
                }
                ;
                function li_jas() {
                    window.localStorage.setItem('side', 'jas');
                }
                ;
                function li_mjas() {
                    window.localStorage.setItem('side', 'mjas');
                }
                ;
                function li_tuj() {
                    window.localStorage.setItem('side', 'tuj');
                }
                ;
                function li_wni() {
                    window.localStorage.setItem('side', 'wni');
                }
                ;
                function li_rea() {
                    window.localStorage.setItem('side', 'rea');
                }
                ;
                function li_bay() {
                    window.localStorage.setItem('side', 'bay');
                }
                ;
                function li_sal() {
                    window.localStorage.setItem('side', 'sal');
                }
                ;




                function li_draf() {
                    window.localStorage.setItem('side', 'draf');
                }
                ;
                function li_reg() {
                    window.localStorage.setItem('side', 'reg');
                }
                ;
                function li_res() {
                    window.localStorage.setItem('side', 'res');
                }
                ;
                function li_ant() {
                    window.localStorage.setItem('side', 'ant');
                }
                ;
                function li_pla() {
                    window.localStorage.setItem('side', 'pla');
                }
                ;
//                function li_resu() {
//                    window.localStorage.setItem('side', 'resu');
//                }
//                ;


                function li_met_ins() {
                    window.localStorage.setItem('side', 'met_ins');
                }
                ;
                function li_met_mes() {
                    window.localStorage.setItem('side', 'met_mes');
                }
                ;
                function li_met_mcu() {
                    window.localStorage.setItem('side', 'met_mcu');
                }
                ;
                function li_em_has() {
                    window.localStorage.setItem('side', 'em_has');
                }
                ;



                var side = window.localStorage.getItem('side');
                switch (side) {
                    case 'db':
                        document.getElementById("li_db").classList.add("active");
                        break;
                    case 'mst':
                        document.getElementById("li_mst").classList.add("active");
                        break;
                    case 'news':
                        document.getElementById("li_news").classList.add("active");
                        break;
                    case 'acc':
                        document.getElementById("li_acc").classList.add("active");
                        break;
                    case 'bus':
                        document.getElementById("li_bus").classList.add("active");
                        break;
                    case 'usr':
                        document.getElementById("li_usr").classList.add("active");
                        break;
                    case 'pd':
                        document.getElementById("li_pd").classList.add("active");
                        break;
                    case 'dis':
                        document.getElementById("li_dis").classList.add("active");
                        break;
                    case 'cus':
                        document.getElementById("li_cus").classList.add("active");
                        break;
//                    case 'exp':
//                        document.getElementById("li_exp").classList.add("active");
//                        break;
//                    case 'db':
//                        document.getElementById("li_db").classList.add("active");
//                        break;
                    case 'rpt':
                        document.getElementById("li_rpt").classList.add("active");
                        break;

                    case 'sum':
                        document.querySelector(".isi").classList.toggle("active");
                        document.getElementById("li_inv").classList.toggle("active");
                        document.getElementById("li_sum").classList.toggle("active");
                        break;
                    case 'sup':
                        document.querySelector(".isi").classList.toggle("active");
                        document.getElementById("li_inv").classList.toggle("active");
                        document.getElementById("li_sup").classList.toggle("active");
                        break;
                    case 'po':
                        document.querySelector(".isi").classList.toggle("active");
                        document.getElementById("li_inv").classList.toggle("active");
                        document.getElementById("li_po").classList.toggle("active");
                        break;





                    case 'exp':
                        document.querySelector(".isi_1").classList.toggle("active");
                        document.getElementById("li_atg").classList.toggle("active");
                        document.getElementById("li_exp").classList.toggle("active");
                        break;
                    case 'inc':
                        document.querySelector(".isi_1").classList.toggle("active");
                        document.getElementById("li_atg").classList.toggle("active");
                        document.getElementById("li_inc").classList.toggle("active");
                        break;
                    case 'jur':
                        document.querySelector(".isi_1").classList.toggle("active");
                        document.getElementById("li_atg").classList.toggle("active");
                        document.getElementById("li_jur").classList.toggle("active");
                        break;






                    case 'lab':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_lab").classList.toggle("active");
                        break;
                    case 'ins':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_ins").classList.toggle("active");
                        break;
                    case 'jas':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_jas").classList.toggle("active");
                        break;

                    case 'mjas':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_mjas").classList.toggle("active");
                        break;

                    case 'tuj':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_tuj").classList.toggle("active");
                        break;
                    case 'wni':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_wni").classList.toggle("active");
                        break;
                    case 'rea':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_rea").classList.toggle("active");
                        break;
                    case 'bay':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_bay").classList.toggle("active");
                        break;
                    case 'sal':
                        document.querySelector(".isi_mst").classList.toggle("active");
                        document.getElementById("li_mst").classList.toggle("active");
                        document.getElementById("li_sal").classList.toggle("active");
                        break;



                    case 'draf':
                        document.querySelector(".isi_act").classList.toggle("active");
                        document.getElementById("li_act").classList.toggle("active");
                        document.getElementById("li_draf").classList.toggle("active");
                        break;
                    case 'reg':
                        document.querySelector(".isi_act").classList.toggle("active");
                        document.getElementById("li_act").classList.toggle("active");
                        document.getElementById("li_reg").classList.toggle("active");
                        break;
                    case 'res':
                        document.querySelector(".isi_act").classList.toggle("active");
                        document.getElementById("li_act").classList.toggle("active");
                        document.getElementById("li_res").classList.toggle("active");
                        break;
                    case 'ant':
                        document.querySelector(".isi_act").classList.toggle("active");
                        document.getElementById("li_act").classList.toggle("active");
                        document.getElementById("li_ant").classList.toggle("active");
                        break;
                    case 'pla':
                        document.querySelector(".isi_act").classList.toggle("active");
                        document.getElementById("li_act").classList.toggle("active");
                        document.getElementById("li_pla").classList.toggle("active");
                        break;
//                    case 'resu':
//                        document.querySelector(".isi_act").classList.toggle("active");
//                        document.getElementById("li_act").classList.toggle("active");
//                        document.getElementById("li_resu").classList.toggle("active");
//                        break;



                    case 'met_ins':
                        document.querySelector(".isi_rslt").classList.toggle("active");
                        document.getElementById("li_rslt").classList.toggle("active");
                        document.getElementById("li_met_ins").classList.toggle("active");
                        break;
                    case 'met_mes':
                        document.querySelector(".isi_rslt").classList.toggle("active");
                        document.getElementById("li_rslt").classList.toggle("active");
                        document.getElementById("li_met_mes").classList.toggle("active");
                        break;
                    case 'met_mcu':
                        document.querySelector(".isi_rslt").classList.toggle("active");
                        document.getElementById("li_rslt").classList.toggle("active");
                        document.getElementById("li_met_mcu").classList.toggle("active");
                        break;
                    case 'em_has':
                        document.querySelector(".isi_rslt").classList.toggle("active");
                        document.getElementById("li_rslt").classList.toggle("active");
                        document.getElementById("li_em_has").classList.toggle("active");
                        break;
                }
            </script>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>