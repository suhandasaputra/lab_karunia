<html>
    <head>
        <title>kwitansi</title>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                var today = new Date();
                var mnt = today.getMonth() + 1;
                var month;
                switch (mnt) {
                    case 1:
                        month = 'Januari';
                        break;
                    case 2:
                        month = 'Februari';
                        break;
                    case 3:
                        month = 'Maret';

                        break;
                    case 4:
                        month = 'April';

                        break;
                    case 5:
                        month = 'Mei';

                        break;
                    case 6:
                        month = 'Juni';

                        break;
                    case 7:
                        month = 'Juli';

                        break;
                    case 8:
                        month = 'Agustus';

                        break;
                    case 9:
                        month = 'September';

                        break;
                    case 10:
                        month = 'Oktober';

                        break;
                    case 11:
                        month = 'November';

                        break;
                    case 12:
                        month = 'Desember';
                        break;
                    default:
                        break;
                }
                var date = today.getDate() + '-' + month + '-' + today.getFullYear();
//                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
//                var dateTime = date + ' ' + time;
                document.getElementById('tgl').innerHTML = date;
            });
        </script>
        <style>

        </style>
    </head>
    <body style="font-family: Times New Roman">
        <div id="kwitansi_nya" style="width: 21cm; height: 15cm; position: absolute;">
            <div id="title" style="text-align: center; margin-top: 15px; font-size: 27px">
                <label><u>LABORATORIUM KARUNIA</u></label>
            </div>
            <div id="nama_pt" style="margin-left: 30px;text-align: center;font-weight: bold;width: 170px;font-size: 12px;margin-top: -15px;"><label>By : PT PENI MAHAARIA DIGDAYA</label></div>
            <div style="text-align: center;letter-spacing: 1px;"><label style="font-size: 12px">Head Office<br>Gd. Graha Dirgantara Lt. Gf Unit Plaza, Jl.Protokol HalimPerdana Kususma No.8 Jakarta Timur 13610.</label></div>
            <hr style="margin-top: 20px;">

            <div id="no_inv" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                <label>NO.&nbsp;</label>
                <input type="text" id="isi_no_inv" style="border-style: none; border-bottom: 1px solid black; height: 20px;width: 120px">
                <label id="judul_kwitansi" style="font-size: 20px;width: 590px; height: 30px;border-style: none; margin-left: 8px; text-decoration: underline;text-align: center; letter-spacing: 1px;"><b>KWITANSI</b></label>
            </div><br>
            <div id="telah_terima_dari" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                <label>Telah terima dari&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
                <input type="text" id="isi_telah_terima_dari" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 5px;">
            </div>
            <input type="text" id="isi_telah_terima_dari2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
            <div id="uang_sejumlah" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                <label>Uang Sejumlah&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;:</label>
                <input type="text" id="isi_uang_sejumlah" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px; background-color: #bfb4b4">
            </div>
            <div id="untuk_pembayaran" style="display: inline-flex; margin-left: 30px; width: 20cm;">
                <label>Untuk Pembayaran&ensp;&ensp;&ensp;:</label>
                <input type="text" id="isi_untuk_pembayaran" style="border-style: none; border-bottom: 1px solid black; height: 30px; width: 590px; margin-left: 7px;">
            </div>
            <input type="text" id="isi_untuk_pembayaran2" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
            <input type="text" id="isi_untuk_pembayaran3" style="border-style: none; border-bottom: 1px solid black; height: 20px; width: 590px; margin-left: 189px;">
            <br>
            <br>
            <br>
            <label style="left: 615px; position: absolute; margin-right: 20px;">Jakarta, <span id="tgl"></span></label>
            <br>
            <br>
            <br>
            <label style="float: right; margin-right: 86px;">Hormat Kami,</label>
            <br>
            <label style="float: right; margin-right: 20px;"><b>Laboratorium Karunia</b></label>
            <br>
            <div style="margin-left: 30px; height: 30px; width: 200px; border-style: none; border-top: 1px solid black; border-bottom: 1px solid black; font-size: 18px; place-items: center; display: inline-flex;">
                <div style="margin-right: 10px;text-align: center;font-style: italic"><strong>Rp</strong></div>
                <div id="nilai_angka" style="width: -webkit-fill-available;height: -webkit-fill-available;padding-top: 5px;text-align: center; font-weight: 600; font-style: italic; background-color: #bfb4b4">30000</div>
            </div>
            <br><br>
            <div id="ttd_cs" style="float: right; margin-right: 30px; width: 150px; height: 25px; border-left: 1px solid black; border-right: 1px solid black; border-radius: 10px"></div>
            <br>
            <br>
            <div id="ttd_cs_bawah" style="float: right; margin-right: 40px; width: 130px; font-size: 12px; border-top: 1px solid black; text-align: center; margin-top: -10px">Ttd : Customer Service</div>
        </div>
    </body>
</html>