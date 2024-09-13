/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function hema_edit(good_game, ext, ggwp, myIndex) {
    
    $('#darah_rutin').on('change', function () {
        if (document.getElementById('darah_rutin').checked)
        {
            myArray.push("darah_rutin");
            good_game.value = myArray;
            ext.darah_rutin = 't';
            ggwp.value = JSON.stringify(ext);
            console.log('di ceklis : ' + myArray);
        } else {
            myIndex = myArray.indexOf('darah_rutin');
            myArray.splice(myIndex, 1);
            delete ext.darah_rutin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklist : ' + ext);
        }
    });
    $('#hitung_eosinofil').on('change', function () {
        if (document.getElementById('hitung_eosinofil').checked)
        {
            myArray.push("hitung_eosinofil");
            good_game.value = myArray;
            ext.hitung_eosinofil = 't';
            ggwp.value = JSON.stringify(ext);
            console.log('di ceklis : ' + myArray);
        } else {
            myIndex = myArray.indexOf('hitung_eosinofil');
            myArray.splice(myIndex, 1);
            delete ext.hitung_eosinofil;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklist : ' + ext);
        }
    });
    $('#pewarnaan_sitokimia').on('change', function () {
        if (document.getElementById('pewarnaan_sitokimia').checked)
        {
            myArray.push("pewarnaan_sitokimia");
            good_game.value = myArray;
            ext.pewarnaan_sitokimia = 't';
            ggwp.value = JSON.stringify(ext);
            console.log('di ceklis : ' + myArray);
        } else {
            myIndex = myArray.indexOf('pewarnaan_sitokimia');
            myArray.splice(myIndex, 1);
            delete ext.pewarnaan_sitokimia;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklist : ' + ext);
        }
    });
    $('#cd4').on('change', function () {
        if (document.getElementById('cd4').checked)
        {
            myArray.push("cd4");
            good_game.value = myArray;
            ext.cd4 = 't';
            ggwp.value = JSON.stringify(ext);
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cd4');

            myArray.splice(myIndex, 1);

            delete ext.cd4;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#darah_lengkap').on('change', function () {
        if (document.getElementById('darah_lengkap').checked)
        {
            myArray.push("darah_lengkap");
            ext.darah_lengkap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('darah_lengkap');

            myArray.splice(myIndex, 1);

            delete ext.darah_lengkap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#golongan_darah').on('change', function () {
        if (document.getElementById('golongan_darah').checked)
        {
            myArray.push("golongan_darah");
            ext.golongan_darah = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('golongan_darah');

            myArray.splice(myIndex, 1);

            delete ext.golongan_darah;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#sel_le').on('change', function () {
        if (document.getElementById('sel_le').checked)
        {
            myArray.push("sel_le");
            ext.sel_le = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sel_le');

            myArray.splice(myIndex, 1);

            delete ext.sel_le;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#cd4_cd8').on('change', function () {
        if (document.getElementById('cd4_cd8').checked)
        {
            myArray.push("cd4_cd8");
            ext.cd4_cd8 = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cd4-cd8');

            myArray.splice(myIndex, 1);

            delete ext.cd4_cd8;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hemoglobin').on('change', function () {
        if (document.getElementById('hemoglobin').checked)
        {
            console.log('aaaa  : '+myArray);
            myArray.push("hemoglobin");
            ext.hemoglobin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis myarray : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hemoglobin');
            myArray.splice(myIndex, 1);
            delete ext.hemoglobin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#morfologi_darah_tepi').on('change', function () {
        if (document.getElementById('morfologi_darah_tepi').checked)
        {
            myArray.push("morfologi_darah_tepi");
            ext.morfologi_darah_tepi = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('morfologi_darah_tepi');

            myArray.splice(myIndex, 1);

            delete ext.morfologi_darah_tepi;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#le_reaksi').on('change', function () {
        if (document.getElementById('le_reaksi').checked)
        {
            myArray.push("le_reaksi");
            ext.le_reaksi = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('le_reaksi');

            myArray.splice(myIndex, 1);

            delete ext.le_reaksi;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#coombs_test_direct_indirect').on('change', function () {
        if (document.getElementById('coombs_test_direct_indirect').checked)
        {
            myArray.push("coombs_test_direct_indirect");
            ext.coombs_test_direct_indirect = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('coombs_test_direct_indirect');

            myArray.splice(myIndex, 1);

            delete ext.coombs_test_direct_indirect;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#hematokrit').on('change', function () {
        if (document.getElementById('hematokrit').checked)
        {
            myArray.push("hematokrit");
            ext.hematokrit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hematokrit');

            myArray.splice(myIndex, 1);

            delete ext.hematokrit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#it_ratio').on('change', function () {
        if (document.getElementById('it_ratio').checked)
        {
            myArray.push("it_ratio");
            ext.it_ratio = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('it_ratio');

            myArray.splice(myIndex, 1);

            delete ext.it_ratio;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hb_elektroforesa').on('change', function () {
        if (document.getElementById('hb_elektroforesa').checked)
        {
            myArray.push("hb_elektroforesa");
            ext.hb_elektroforesa = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hb_elektroforesa');

            myArray.splice(myIndex, 1);

            delete ext.hb_elektroforesa;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hb_f').on('change', function () {
        if (document.getElementById('hb_f').checked)
        {
            myArray.push("hb_f");
            ext.hb_f = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hb_f');

            myArray.splice(myIndex, 1);

            delete ext.hb_f;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#trombosit').on('change', function () {
        if (document.getElementById('trombosit').checked)
        {
            myArray.push("trombosit");
            ext.trombosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('trombosit');

            myArray.splice(myIndex, 1);

            delete ext.trombosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#serum_iron').on('change', function () {
        if (document.getElementById('serum_iron').checked)
        {
            myArray.push("serum_iron");
            ext.serum_iron = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('serum_iron');

            myArray.splice(myIndex, 1);

            delete ext.serum_iron;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#g6_pd').on('change', function () {
        if (document.getElementById('g6_pd').checked)
        {
            myArray.push("g6_pd");
            ext.g6_pd = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('g6_pd');

            myArray.splice(myIndex, 1);

            delete ext.g6_pd;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hb_h').on('change', function () {
        if (document.getElementById('hb_h').checked)
        {
            myArray.push("hb_h");
            ext.hb_h = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hb_h');

            myArray.splice(myIndex, 1);

            delete ext.hb_h;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#leukosit').on('change', function () {
        if (document.getElementById('leukosit').checked)
        {
            myArray.push("leukosit");
            ext.leukosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('leukosit');

            myArray.splice(myIndex, 1);

            delete ext.leukosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#tibc').on('change', function () {
        if (document.getElementById('tibc').checked)
        {
            myArray.push("tibc");
            ext.tibc = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('tibc');

            myArray.splice(myIndex, 1);

            delete ext.tibc;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#g6_pd_neonatus').on('change', function () {
        if (document.getElementById('g6_pd_neonatus').checked)
        {
            myArray.push("g6_pd_neonatus");
            ext.g6_pd_neonatus = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('g6_pd_neonatus');

            myArray.splice(myIndex, 1);

            delete ext.g6_pd_neonatus;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hb_a2').on('change', function () {
        if (document.getElementById('hb_a2').checked)
        {
            myArray.push("hb_a2");
            ext.hb_a2 = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hb_a2');

            myArray.splice(myIndex, 1);

            delete ext.hb_a2;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#eritrosit').on('change', function () {
        if (document.getElementById('eritrosit').checked)
        {
            myArray.push("eritrosit");
            ext.eritrosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('eritrosit');

            myArray.splice(myIndex, 1);

            delete ext.eritrosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#feritin').on('change', function () {
        if (document.getElementById('feritin').checked)
        {
            myArray.push("feritin");
            ext.feritin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('feritin');

            myArray.splice(myIndex, 1);

            delete ext.feritin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#nap').on('change', function () {
        if (document.getElementById('nap').checked)
        {
            myArray.push("nap");
            ext.nap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('nap');

            myArray.splice(myIndex, 1);

            delete ext.nap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hams_test').on('change', function () {
        if (document.getElementById('hams_test').checked)
        {
            myArray.push("hams_test");
            ext.hams_test = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hams_test');

            myArray.splice(myIndex, 1);

            delete ext.hams_test;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#mcv_mch_mch').on('change', function () {
        if (document.getElementById('mcv_mch_mch').checked)
        {
            myArray.push("mcv_mch_mch");
            ext.mcv_mch_mch = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('mcv_mch_mch');

            myArray.splice(myIndex, 1);

            delete ext.mcv_mch_mch;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#transferin').on('change', function () {
        if (document.getElementById('transferin').checked)
        {
            myArray.push("transferin");
            ext.transferin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('transferin');

            myArray.splice(myIndex, 1);

            delete ext.transferin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#malaria').on('change', function () {
        if (document.getElementById('malaria').checked)
        {
            myArray.push("malaria");
            ext.malaria = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('malaria');

            myArray.splice(myIndex, 1);

            delete ext.malaria;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#sugar_water_test').on('change', function () {
        if (document.getElementById('sugar_water_test').checked)
        {
            myArray.push("sugar_water_test");
            ext.sugar_water_test = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sugar_water_test');

            myArray.splice(myIndex, 1);

            delete ext.sugar_water_test;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#hitung_jenis_leukosit').on('change', function () {
        if (document.getElementById('hitung_jenis_leukosit').checked)
        {
            myArray.push("hitung_jenis_leukosit");
            ext.hitung_jenis_leukosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hitung_jenis_leukosit');

            myArray.splice(myIndex, 1);

            delete ext.hitung_jenis_leukosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#asam_folat').on('change', function () {
        if (document.getElementById('asam_folat').checked)
        {
            myArray.push("asam_folat");
            ext.asam_folat = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('asam_folat');

            myArray.splice(myIndex, 1);

            delete ext.asam_folat;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#mikrofilaria').on('change', function () {
        if (document.getElementById('mikrofilaria').checked)
        {
            myArray.push("mikrofilaria");
            ext.mikrofilaria = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('mikrofilaria');

            myArray.splice(myIndex, 1);

            delete ext.mikrofilaria;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#sito_genetika').on('change', function () {
        if (document.getElementById('sito_genetika').checked)
        {
            myArray.push("sito_genetika");
            ext.sito_genetika = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sito_genetika');

            myArray.splice(myIndex, 1);

            delete ext.sito_genetika;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#retikulosit').on('change', function () {
        if (document.getElementById('retikulosit').checked)
        {
            myArray.push("retikulosit");
            ext.retikulosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('retikulosit');

            myArray.splice(myIndex, 1);

            delete ext.retikulosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#vitamin_b12').on('change', function () {
        if (document.getElementById('vitamin_b12').checked)
        {
            myArray.push("vitamin_b12");
            ext.vitamin_b12 = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('vitamin_b12');

            myArray.splice(myIndex, 1);

            delete ext.vitamin_b12;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#antibodi_trombosit').on('change', function () {
        if (document.getElementById('antibodi_trombosit').checked)
        {
            myArray.push("antibodi_trombosit");
            ext.antibodi_trombosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('antibodi_trombosit');

            myArray.splice(myIndex, 1);

            delete ext.antibodi_trombosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#kromosom').on('change', function () {
        if (document.getElementById('kromosom').checked)
        {
            myArray.push("kromosom");
            ext.kromosom = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('kromosom');

            myArray.splice(myIndex, 1);

            delete ext.kromosom;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });    
}

function koag_edit(good_game, ext, ggwp) {
    $('#hemostasis_lengkap').on('change', function () {
        if (document.getElementById('hemostasis_lengkap').checked)
        {
            myArray.push("hemostasis_lengkap");
            ext.hemostasis_lengkap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hemostasis_lengkap');

            myArray.splice(myIndex, 1);

            delete ext.hemostasis_lengkap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#aptt').on('change', function () {
        if (document.getElementById('aptt').checked)
        {
            myArray.push("aptt");
            ext.aptt = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('aptt');

            myArray.splice(myIndex, 1);

            delete ext.aptt;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#agregasi_trobosit').on('change', function () {
        if (document.getElementById('agregasi_trobosit').checked)
        {
            myArray.push("agregasi_trobosit");
            ext.agregasi_trobosit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('agregasi_trobosit');

            myArray.splice(myIndex, 1);

            delete ext.agregasi_trobosit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#protein_c').on('change', function () {
        if (document.getElementById('protein_c').checked)
        {
            myArray.push("protein_c");
            ext.protein_c = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('protein_c');

            myArray.splice(myIndex, 1);

            delete ext.protein_c;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });




    $('#faktor_ix').on('change', function () {
        if (document.getElementById('faktor_ix').checked)
        {
            myArray.push("faktor_ix");
            ext.faktor_ix = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('faktor_ix');

            myArray.splice(myIndex, 1);

            delete ext.faktor_ix;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#masa_pendarahan').on('change', function () {
        if (document.getElementById('masa_pendarahan').checked)
        {
            myArray.push("masa_pendarahan");
            ext.masa_pendarahan = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('masa_pendarahan');

            myArray.splice(myIndex, 1);

            delete ext.masa_pendarahan;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#fibrinogen').on('change', function () {
        if (document.getElementById('fibrinogen').checked)
        {
            myArray.push("fibrinogen");
            ext.fibrinogen = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('fibrinogen');

            myArray.splice(myIndex, 1);

            delete ext.fibrinogen;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_trombin_iii').on('change', function () {
        if (document.getElementById('anti_trombin_iii').checked)
        {
            myArray.push("anti_trombin_iii");
            ext.anti_trombin_iii = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_trombin_iii');

            myArray.splice(myIndex, 1);

            delete ext.anti_trombin_iii;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });


    $('#protein_s').on('change', function () {
        if (document.getElementById('protein_s').checked)
        {
            myArray.push("protein_s");
            ext.protein_s = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('protein_s');

            myArray.splice(myIndex, 1);

            delete ext.protein_s;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#masa_pembekuan').on('change', function () {
        if (document.getElementById('masa_pembekuan').checked)
        {
            myArray.push("masa_pembekuan");
            ext.masa_pembekuan = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('masa_pembekuan');

            myArray.splice(myIndex, 1);

            delete ext.masa_pembekuan;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#masa_trombin').on('change', function () {
        if (document.getElementById('masa_trombin').checked)
        {
            myArray.push("masa_trombin");
            ext.masa_trombin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('masa_trombin');

            myArray.splice(myIndex, 1);

            delete ext.masa_trombin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#percobaan_pembendungan').on('change', function () {
        if (document.getElementById('percobaan_pembendungan').checked)
        {
            myArray.push("percobaan_pembendungan");
            ext.percobaan_pembendungan = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('percobaan_pembendungan');

            myArray.splice(myIndex, 1);

            delete ext.percobaan_pembendungan;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#viskositas_darah_plasma').on('change', function () {
        if (document.getElementById('viskositas_darah_plasma').checked)
        {
            myArray.push("viskositas_darah_plasma");
            ext.viskositas_darah_plasma = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('viskositas_darah_plasma');

            myArray.splice(myIndex, 1);

            delete ext.viskositas_darah_plasma;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#masa_protrombin').on('change', function () {
        if (document.getElementById('masa_protrombin').checked)
        {
            myArray.push("masa_protrombin");
            ext.masa_protrombin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('masa_protrombin');

            myArray.splice(myIndex, 1);

            delete ext.masa_protrombin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#d_dimer').on('change', function () {
        if (document.getElementById('d_dimer').checked)
        {
            myArray.push("d_dimer");
            ext.d_dimer = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('d_dimer');

            myArray.splice(myIndex, 1);

            delete ext.d_dimer;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#inr').on('change', function () {
        if (document.getElementById('inr').checked)
        {
            myArray.push("inr");
            ext.inr = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('inr');

            myArray.splice(myIndex, 1);

            delete ext.inr;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });


    $('#faktor_viii').on('change', function () {
        if (document.getElementById('faktor_viii').checked)
        {
            myArray.push("faktor_viii");
            ext.faktor_viii = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('faktor_viii');

            myArray.splice(myIndex, 1);

            delete ext.faktor_viii;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    
}

function kimia_edit(good_game, ext, ggwp) {
    $('#albumin').on('change', function () {
        if (document.getElementById('albumin').checked)
        {
            myArray.push("albumin");
            ext.albumin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('albumin');

            myArray.splice(myIndex, 1);

            delete ext.albumin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#total_protein').on('change', function () {
        if (document.getElementById('total_protein').checked)
        {
            myArray.push("total_protein");
            ext.total_protein = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('total_protein');

            myArray.splice(myIndex, 1);

            delete ext.total_protein;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#total_protein_albumin_globulin').on('change', function () {
        if (document.getElementById('total_protein_albumin_globulin').checked)
        {
            myArray.push("total_protein_albumin_globulin");
            ext.total_protein_albumin_globulin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('total_protein_albumin_globulin');

            myArray.splice(myIndex, 1);

            delete ext.total_protein_albumin_globulin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#protein_elektroforesa').on('change', function () {
        if (document.getElementById('protein_elektroforesa').checked)
        {
            myArray.push("protein_elektroforesa");
            ext.protein_elektroforesa = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('protein_elektroforesa');

            myArray.splice(myIndex, 1);

            delete ext.protein_elektroforesa;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#bilirubin_direct').on('change', function () {
        if (document.getElementById('bilirubin_direct').checked)
        {
            myArray.push("bilirubin_direct");
            ext.bilirubin_direct = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('bilirubin_direct');

            myArray.splice(myIndex, 1);

            delete ext.bilirubin_direct;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#bilirubin_indirect_direct_total').on('change', function () {
        if (document.getElementById('bilirubin_indirect_direct_total').checked)
        {
            myArray.push("bilirubin_indirect_direct_total");
            ext.bilirubin_indirect_direct_total = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('bilirubin_indirect_direct_total');

            myArray.splice(myIndex, 1);

            delete ext.bilirubin_indirect_direct_total;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#bilirubin_neonatus').on('change', function () {
        if (document.getElementById('bilirubin_neonatus').checked)
        {
            myArray.push("bilirubin_neonatus");
            ext.bilirubin_neonatus = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('bilirubin_neonatus');

            myArray.splice(myIndex, 1);

            delete ext.bilirubin_neonatus;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#sgot').on('change', function () {
        if (document.getElementById('sgot').checked)
        {
            myArray.push("sgot");
            ext.sgot = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sgot');

            myArray.splice(myIndex, 1);

            delete ext.sgot;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#sgpt').on('change', function () {
        if (document.getElementById('sgpt').checked)
        {
            myArray.push("sgpt");
            ext.sgpt = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sgpt');

            myArray.splice(myIndex, 1);

            delete ext.sgpt;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#gamma_gt').on('change', function () {
        if (document.getElementById('gamma_gt').checked)
        {
            myArray.push("gamma_gt");
            ext.gamma_gt = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('gamma_gt');

            myArray.splice(myIndex, 1);

            delete ext.gamma_gt;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#cholinesterase').on('change', function () {
        if (document.getElementById('cholinesterase').checked)
        {
            myArray.push("cholinesterase");
            ext.cholinesterase = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cholinesterase');

            myArray.splice(myIndex, 1);

            delete ext.cholinesterase;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#alkali_phosphatase').on('change', function () {
        if (document.getElementById('alkali_phosphatase').checked)
        {
            myArray.push("alkali_phosphatase");
            ext.alkali_phosphatase = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('alkali_phosphatase');

            myArray.splice(myIndex, 1);

            delete ext.alkali_phosphatase;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#lap').on('change', function () {
        if (document.getElementById('lap').checked)
        {
            myArray.push("lap");
            ext.lap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('lap');

            myArray.splice(myIndex, 1);

            delete ext.lap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#amilase').on('change', function () {
        if (document.getElementById('amilase').checked)
        {
            myArray.push("amilase");
            ext.amilase = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('amilase');

            myArray.splice(myIndex, 1);

            delete ext.amilase;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#lipase').on('change', function () {
        if (document.getElementById('lipase').checked)
        {
            myArray.push("lipase");
            ext.lipase = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('lipase');

            myArray.splice(myIndex, 1);

            delete ext.lipase;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#cholesterol_total').on('change', function () {
        if (document.getElementById('cholesterol_total').checked)
        {
            myArray.push("cholesterol_total");
            ext.cholesterol_total = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cholesterol_total');

            myArray.splice(myIndex, 1);

            delete ext.cholesterol_total;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ldl_cholesterol').on('change', function () {
        if (document.getElementById('ldl_cholesterol').checked)
        {
            myArray.push("ldl_cholesterol");
            ext.ldl_cholesterol = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ldl_cholesterol');

            myArray.splice(myIndex, 1);

            delete ext.ldl_cholesterol;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#hdl_cholesterol').on('change', function () {
        if (document.getElementById('hdl_cholesterol').checked)
        {
            myArray.push("hdl_cholesterol");
            ext.hdl_cholesterol = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hdl_cholesterol');

            myArray.splice(myIndex, 1);

            delete ext.hdl_cholesterol;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#trigliserida').on('change', function () {
        if (document.getElementById('trigliserida').checked)
        {
            myArray.push("trigliserida");
            ext.trigliserida = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('trigliserida');

            myArray.splice(myIndex, 1);

            delete ext.trigliserida;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#total_lipid').on('change', function () {
        if (document.getElementById('total_lipid').checked)
        {
            myArray.push("total_lipid");
            ext.total_lipid = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('total_lipid');

            myArray.splice(myIndex, 1);

            delete ext.total_lipid;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ratio_chol_t_hdl').on('change', function () {
        if (document.getElementById('ratio_chol_t_hdl').checked)
        {
            myArray.push("ratio_chol_t_hdl");
            ext.ratio_chol_t_hdl = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ratio_chol_t_hdl');

            myArray.splice(myIndex, 1);

            delete ext.ratio_chol_t_hdl;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#vldl').on('change', function () {
        if (document.getElementById('vldl').checked)
        {
            myArray.push("vldl");
            ext.vldl = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('vldl');

            myArray.splice(myIndex, 1);

            delete ext.vldl;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ck').on('change', function () {
        if (document.getElementById('ck').checked)
        {
            myArray.push("ck");
            ext.ck = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ck');

            myArray.splice(myIndex, 1);

            delete ext.ck;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ckmb').on('change', function () {
        if (document.getElementById('ckmb').checked)
        {
            myArray.push("ckmb");
            ext.ckmb = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ckmb');

            myArray.splice(myIndex, 1);

            delete ext.ckmb;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ldh').on('change', function () {
        if (document.getElementById('ldh').checked)
        {
            myArray.push("ldh");
            ext.ldh = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ldh');

            myArray.splice(myIndex, 1);

            delete ext.ldh;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#alfa_hbdh').on('change', function () {
        if (document.getElementById('alfa_hbdh').checked)
        {
            myArray.push("alfa_hbdh");
            ext.alfa_hbdh = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('alfa_hbdh');

            myArray.splice(myIndex, 1);

            delete ext.alfa_hbdh;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#troponin_t_kuantitatif').on('change', function () {
        if (document.getElementById('troponin_t_kuantitatif').checked)
        {
            myArray.push("troponin_t_kuantitatif");
            ext.troponin_t_kuantitatif = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('troponin_t_kuantitatif');

            myArray.splice(myIndex, 1);

            delete ext.troponin_t_kuantitatif;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#troponin_t_kualitatif').on('change', function () {
        if (document.getElementById('troponin_t_kualitatif').checked)
        {
            myArray.push("troponin_t_kualitatif");
            ext.troponin_t_kualitatif = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('troponin_t_kualitatif');

            myArray.splice(myIndex, 1);

            delete ext.troponin_t_kualitatif;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#nt_pro_bnp').on('change', function () {
        if (document.getElementById('nt_pro_bnp').checked)
        {
            myArray.push("nt_pro_bnp");
            ext.nt_pro_bnp = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('nt_pro_bnp');

            myArray.splice(myIndex, 1);

            delete ext.nt_pro_bnp;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#ureum').on('change', function () {
        if (document.getElementById('ureum').checked)
        {
            myArray.push("ureum");
            ext.ureum = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ureum');

            myArray.splice(myIndex, 1);

            delete ext.ureum;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#creatinin').on('change', function () {
        if (document.getElementById('creatinin').checked)
        {
            myArray.push("creatinin");
            ext.creatinin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('creatinin');

            myArray.splice(myIndex, 1);

            delete ext.creatinin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#creatinin_clearance_test').on('change', function () {
        if (document.getElementById('creatinin_clearance_test').checked)
        {
            myArray.push("creatinin_clearance_test");
            ext.creatinin_clearance_test = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('creatinin_clearance_test');

            myArray.splice(myIndex, 1);

            delete ext.creatinin_clearance_test;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#ureum_clearance_test').on('change', function () {
        if (document.getElementById('ureum_clearance_test').checked)
        {
            myArray.push("ureum_clearance_test");
            ext.ureum_clearance_test = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('ureum_clearance_test');

            myArray.splice(myIndex, 1);

            delete ext.ureum_clearance_test;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#asam_urat').on('change', function () {
        if (document.getElementById('asam_urat').checked)
        {
            myArray.push("asam_urat");
            ext.asam_urat = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('asam_urat');

            myArray.splice(myIndex, 1);

            delete ext.asam_urat;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#cystatin_c').on('change', function () {
        if (document.getElementById('cystatin_c').checked)
        {
            myArray.push("cystatin_c");
            ext.cystatin_c = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cystatin_c');

            myArray.splice(myIndex, 1);

            delete ext.cystatin_c;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#bun').on('change', function () {
        if (document.getElementById('bun').checked)
        {
            myArray.push("bun");
            ext.bun = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('bun');

            myArray.splice(myIndex, 1);

            delete ext.bun;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#e_gfr').on('change', function () {
        if (document.getElementById('e_gfr').checked)
        {
            myArray.push("e_gfr");
            ext.e_gfr = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('e_gfr');

            myArray.splice(myIndex, 1);

            delete ext.e_gfr;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#calcium').on('change', function () {
        if (document.getElementById('calcium').checked)
        {
            myArray.push("calcium");
            ext.calcium = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('calcium');

            myArray.splice(myIndex, 1);

            delete ext.calcium;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#phospor_anorganik').on('change', function () {
        if (document.getElementById('phospor_anorganik').checked)
        {
            myArray.push("phospor_anorganik");
            ext.phospor_anorganik = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('phospor_anorganik');

            myArray.splice(myIndex, 1);

            delete ext.phospor_anorganik;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#magnesium').on('change', function () {
        if (document.getElementById('magnesium').checked)
        {
            myArray.push("magnesium");
            ext.magnesium = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('magnesium');

            myArray.splice(myIndex, 1);

            delete ext.magnesium;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#paket_elektrolit').on('change', function () {
        if (document.getElementById('paket_elektrolit').checked)
        {
            myArray.push("paket_elektrolit");
            ext.paket_elektrolit = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('paket_elektrolit');

            myArray.splice(myIndex, 1);

            delete ext.paket_elektrolit;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#plumbum_serum').on('change', function () {
        if (document.getElementById('plumbum_serum').checked)
        {
            myArray.push("plumbum_serum");
            ext.plumbum_serum = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('plumbum_serum');

            myArray.splice(myIndex, 1);

            delete ext.plumbum_serum;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#osmolalitas_darah').on('change', function () {
        if (document.getElementById('osmolalitas_darah').checked)
        {
            myArray.push("osmolalitas_darah");
            ext.osmolalitas_darah = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('osmolalitas_darah');

            myArray.splice(myIndex, 1);

            delete ext.osmolalitas_darah;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#calcium_ion').on('change', function () {
        if (document.getElementById('calcium_ion').checked)
        {
            myArray.push("calcium_ion");
            ext.calcium_ion = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('calcium_ion');

            myArray.splice(myIndex, 1);

            delete ext.calcium_ion;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#gula_darah_puasa').on('change', function () {
        if (document.getElementById('gula_darah_puasa').checked)
        {
            myArray.push("gula_darah_puasa");
            ext.gula_darah_puasa = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('gula_darah_puasa');

            myArray.splice(myIndex, 1);

            delete ext.gula_darah_puasa;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#gula_darah_2_jam_pp').on('change', function () {
        if (document.getElementById('gula_darah_2_jam_pp').checked)
        {
            myArray.push("gula_darah_2_jam_pp");
            ext.gula_darah_2_jam_pp = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('gula_darah_2_jam_pp');

            myArray.splice(myIndex, 1);

            delete ext.gula_darah_2_jam_pp;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#glukosa_sewaktu').on('change', function () {
        if (document.getElementById('glukosa_sewaktu').checked)
        {
            myArray.push("glukosa_sewaktu");
            ext.glukosa_sewaktu = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('glukosa_sewaktu');

            myArray.splice(myIndex, 1);

            delete ext.glukosa_sewaktu;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#kurva_harian').on('change', function () {
        if (document.getElementById('kurva_harian').checked)
        {
            myArray.push("kurva_harian");
            ext.kurva_harian = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('kurva_harian');

            myArray.splice(myIndex, 1);

            delete ext.kurva_harian;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#gtt').on('change', function () {
        if (document.getElementById('gtt').checked)
        {
            myArray.push("gtt");
            ext.gtt = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('gtt');

            myArray.splice(myIndex, 1);

            delete ext.gtt;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hba1c').on('change', function () {
        if (document.getElementById('hba1c').checked)
        {
            myArray.push("hba1c");
            ext.hba1c = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hba1c');

            myArray.splice(myIndex, 1);

            delete ext.hba1c;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#keton_darah').on('change', function () {
        if (document.getElementById('keton_darah').checked)
        {
            myArray.push("keton_darah");
            ext.keton_darah = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('keton_darah');

            myArray.splice(myIndex, 1);

            delete ext.keton_darah;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#fruktosamin').on('change', function () {
        if (document.getElementById('fruktosamin').checked)
        {
            myArray.push("fruktosamin");
            ext.fruktosamin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('fruktosamin');

            myArray.splice(myIndex, 1);

            delete ext.fruktosamin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#c_peptide').on('change', function () {
        if (document.getElementById('c_peptide').checked)
        {
            myArray.push("c_peptide");
            ext.c_peptide = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('c_peptide');

            myArray.splice(myIndex, 1);

            delete ext.c_peptide;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#insulin').on('change', function () {
        if (document.getElementById('insulin').checked)
        {
            myArray.push("insulin");
            ext.insulin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('insulin');

            myArray.splice(myIndex, 1);

            delete ext.insulin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#analisa_gas_darah').on('change', function () {
        if (document.getElementById('analisa_gas_darah').checked)
        {
            myArray.push("analisa_gas_darah");
            ext.analisa_gas_darah = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('analisa_gas_darah');

            myArray.splice(myIndex, 1);

            delete ext.analisa_gas_darah;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#asam_laktat').on('change', function () {
        if (document.getElementById('asam_laktat').checked)
        {
            myArray.push("asam_laktat");
            ext.asam_laktat = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('asam_laktat');

            myArray.splice(myIndex, 1);

            delete ext.asam_laktat;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    
}

function sero_edit(good_game, ext, ggwp) {
    $('#anti_dengue_igg_igm').on('change', function () {
        if (document.getElementById('anti_dengue_igg_igm').checked)
        {
            myArray.push("anti_dengue_igg_igm");
            ext.anti_dengue_igg_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_dengue_igg_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_dengue_igg_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#dengue_ns1_antigen').on('change', function () {
        if (document.getElementById('dengue_ns1_antigen').checked)
        {
            myArray.push("dengue_ns1_antigen");
            ext.dengue_ns1_antigen = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('dengue_ns1_antigen');

            myArray.splice(myIndex, 1);

            delete ext.dengue_ns1_antigen;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#widal').on('change', function () {
        if (document.getElementById('widal').checked)
        {
            myArray.push("widal");
            ext.widal = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('widal');

            myArray.splice(myIndex, 1);

            delete ext.widal;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_salmonella_igm').on('change', function () {
        if (document.getElementById('anti_salmonella_igm').checked)
        {
            myArray.push("anti_salmonella_igm");
            ext.anti_salmonella_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_salmonella_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_salmonella_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#crp').on('change', function () {
        if (document.getElementById('crp').checked)
        {
            myArray.push("crp");
            ext.crp = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('crp');

            myArray.splice(myIndex, 1);

            delete ext.crp;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#asto').on('change', function () {
        if (document.getElementById('asto').checked)
        {
            myArray.push("asto");
            ext.asto = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('asto');

            myArray.splice(myIndex, 1);

            delete ext.asto;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#rheumatoid_faktor').on('change', function () {
        if (document.getElementById('rheumatoid_faktor').checked)
        {
            myArray.push("rheumatoid_faktor");
            ext.rheumatoid_faktor = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('rheumatoid_faktor');

            myArray.splice(myIndex, 1);

            delete ext.rheumatoid_faktor;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });

    $('#vdrl').on('change', function () {
        if (document.getElementById('vdrl').checked)
        {
            myArray.push("vdrl");
            ext.vdrl = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('vdrl');

            myArray.splice(myIndex, 1);

            delete ext.vdrl;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#tpha').on('change', function () {
        if (document.getElementById('tpha').checked)
        {
            myArray.push("tpha");
            ext.tpha = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('tpha');

            myArray.splice(myIndex, 1);

            delete ext.tpha;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#serologi_amoeba').on('change', function () {
        if (document.getElementById('serologi_amoeba').checked)
        {
            myArray.push("serologi_amoeba");
            ext.serologi_amoeba = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('serologi_amoeba');

            myArray.splice(myIndex, 1);

            delete ext.serologi_amoeba;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_leptospira_igg').on('change', function () {
        if (document.getElementById('anti_leptospira_igg').checked)
        {
            myArray.push("anti_leptospira_igg");
            ext.anti_leptospira_igg = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_leptospira_igg');

            myArray.splice(myIndex, 1);

            delete ext.anti_leptospira_igg;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_leptospira_igm').on('change', function () {
        if (document.getElementById('anti_leptospira_igm').checked)
        {
            myArray.push("anti_leptospira_igm");
            ext.anti_leptospira_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_leptospira_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_leptospira_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_mycoplasma_igg_igm').on('change', function () {
        if (document.getElementById('anti_mycoplasma_igg_igm').checked)
        {
            myArray.push("anti_mycoplasma_igg_igm");
            ext.anti_mycoplasma_igg_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_mycoplasma_igg_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_mycoplasma_igg_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_ebv_ea_iga').on('change', function () {
        if (document.getElementById('anti_ebv_ea_iga').checked)
        {
            myArray.push("anti_ebv_ea_iga");
            ext.anti_ebv_ea_iga = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_ebv_ea_iga');

            myArray.splice(myIndex, 1);

            delete ext.anti_ebv_ea_iga;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });


    $('#anti_ebv_ea_igg').on('change', function () {
        if (document.getElementById('anti_ebv_ea_igg').checked)
        {
            myArray.push("anti_ebv_ea_igg");
            ext.anti_ebv_ea_igg = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_ebv_ea_igg');

            myArray.splice(myIndex, 1);

            delete ext.anti_ebv_ea_igg;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_ebv_ea_igm').on('change', function () {
        if (document.getElementById('anti_ebv_ea_igm').checked)
        {
            myArray.push("anti_ebv_ea_igm");
            ext.anti_ebv_ea_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_ebv_ea_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_ebv_ea_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_tb_igg').on('change', function () {
        if (document.getElementById('anti_tb_igg').checked)
        {
            myArray.push("anti_tb_igg");
            ext.anti_tb_igg = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_tb_igg');

            myArray.splice(myIndex, 1);

            delete ext.anti_tb_igg;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#serologi_jamur').on('change', function () {
        if (document.getElementById('serologi_jamur').checked)
        {
            myArray.push("serologi_jamur");
            ext.serologi_jamur = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('serologi_jamur');

            myArray.splice(myIndex, 1);

            delete ext.serologi_jamur;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#serologi_jamur_lengkap').on('change', function () {
        if (document.getElementById('serologi_jamur_lengkap').checked)
        {
            myArray.push("serologi_jamur_lengkap");
            ext.serologi_jamur_lengkap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('serologi_jamur_lengkap');

            myArray.splice(myIndex, 1);

            delete ext.serologi_jamur_lengkap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
}

function hepa_edit(good_game, ext, ggwp) {
    $('#hbsag').on('change', function () {
        if (document.getElementById('hbsag').checked)
        {
            myArray.push("hbsag");
            ext.hbsag = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hbsag');

            myArray.splice(myIndex, 1);

            delete ext.hbsag;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hbs').on('change', function () {
        if (document.getElementById('anti_hbs').checked)
        {
            myArray.push("anti_hbs");
            ext.anti_hbs = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hbs');

            myArray.splice(myIndex, 1);

            delete ext.anti_hbs;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hbeag').on('change', function () {
        if (document.getElementById('hbeag').checked)
        {
            myArray.push("hbeag");
            ext.hbeag = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hbeag');

            myArray.splice(myIndex, 1);

            delete ext.hbeag;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hbe').on('change', function () {
        if (document.getElementById('anti_hbe').checked)
        {
            myArray.push("anti_hbe");
            ext.anti_hbe = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hbe');

            myArray.splice(myIndex, 1);

            delete ext.anti_hbe;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hbc_total').on('change', function () {
        if (document.getElementById('anti_hbc_total').checked)
        {
            myArray.push("anti_hbc_total");
            ext.anti_hbc_total = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hbc_total');

            myArray.splice(myIndex, 1);

            delete ext.anti_hbc_total;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hbc_igm').on('change', function () {
        if (document.getElementById('anti_hbc_igm').checked)
        {
            myArray.push("anti_hbc_igm");
            ext.anti_hbc_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hbc_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_hbc_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#hbv_dna').on('change', function () {
        if (document.getElementById('hbv_dna').checked)
        {
            myArray.push("hbv_dna");
            ext.hbv_dna = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('hbv_dna');

            myArray.splice(myIndex, 1);

            delete ext.hbv_dna;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });






    $('#anti_hav_igm').on('change', function () {
        if (document.getElementById('anti_hav_igm').checked)
        {
            myArray.push("anti_hav_igm");
            ext.anti_hav_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hav_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_hav_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hav_total').on('change', function () {
        if (document.getElementById('anti_hav_total').checked)
        {
            myArray.push("anti_hav_total");
            ext.anti_hav_total = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hav_total');

            myArray.splice(myIndex, 1);

            delete ext.anti_hav_total;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hcv_total').on('change', function () {
        if (document.getElementById('anti_hcv_total').checked)
        {
            myArray.push("anti_hcv_total");
            ext.anti_hcv_total = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hcv_total');

            myArray.splice(myIndex, 1);

            delete ext.anti_hcv_total;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hcv_igm').on('change', function () {
        if (document.getElementById('anti_hcv_igm').checked)
        {
            myArray.push("anti_hcv_igm");
            ext.anti_hcv_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hcv_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_hcv_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hdv').on('change', function () {
        if (document.getElementById('anti_hdv').checked)
        {
            myArray.push("anti_hdv");
            ext.anti_hdv = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hdv');

            myArray.splice(myIndex, 1);

            delete ext.anti_hdv;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hev_igg').on('change', function () {
        if (document.getElementById('anti_hev_igg').checked)
        {
            myArray.push("anti_hev_igg");
            ext.anti_hev_igg = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hev_igg');

            myArray.splice(myIndex, 1);

            delete ext.anti_hev_igg;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#anti_hev_igm').on('change', function () {
        if (document.getElementById('anti_hev_igm').checked)
        {
            myArray.push("anti_hev_igm");
            ext.anti_hev_igm = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('anti_hev_igm');

            myArray.splice(myIndex, 1);

            delete ext.anti_hev_igm;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
}

function urin_edit(good_game, ext, ggwp) {
    $('#urin_lengkap').on('change', function () {
        if (document.getElementById('urin_lengkap').checked)
        {
            myArray.push("urin_lengkap");
            ext.urin_lengkap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('urin_lengkap');

            myArray.splice(myIndex, 1);

            delete ext.urin_lengkap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#urin_rutin_').on('change', function () {
        if (document.getElementById('urin_rutin_').checked)
        {
            myArray.push("urin_rutin_");
            ext.urin_rutin_ = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('urin_rutin_');

            myArray.splice(myIndex, 1);

            delete ext.urin_rutin_;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#sedimen_urine').on('change', function () {
        if (document.getElementById('sedimen_urine').checked)
        {
            myArray.push("sedimen_urine");
            ext.sedimen_urine = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('sedimen_urine');

            myArray.splice(myIndex, 1);

            delete ext.sedimen_urine;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#test_kehamilan').on('change', function () {
        if (document.getElementById('test_kehamilan').checked)
        {
            myArray.push("test_kehamilan");
            ext.test_kehamilan = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('test_kehamilan');

            myArray.splice(myIndex, 1);

            delete ext.test_kehamilan;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
}

function nark_edit(good_game, ext, ggwp) {
    $('#amphetamine').on('change', function () {
        if (document.getElementById('amphetamine').checked)
        {
            myArray.push("amphetamine");
            ext.amphetamine = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('amphetamine');

            myArray.splice(myIndex, 1);

            delete ext.amphetamine;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#meth_amphetamine').on('change', function () {
        if (document.getElementById('meth_amphetamine').checked)
        {
            myArray.push("meth_amphetamine");
            ext.meth_amphetamine = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('meth_amphetamine');

            myArray.splice(myIndex, 1);

            delete ext.meth_amphetamine;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#opiat_morfin').on('change', function () {
        if (document.getElementById('opiat_morfin').checked)
        {
            myArray.push("opiat_morfin");
            ext.opiat_morfin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('opiat_morfin');

            myArray.splice(myIndex, 1);

            delete ext.opiat_morfin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#benzodiazepin').on('change', function () {
        if (document.getElementById('benzodiazepin').checked)
        {
            myArray.push("benzodiazepin");
            ext.benzodiazepin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('benzodiazepin');

            myArray.splice(myIndex, 1);

            delete ext.benzodiazepin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#thc').on('change', function () {
        if (document.getElementById('thc').checked)
        {
            myArray.push("thc");
            ext.thc = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('thc');

            myArray.splice(myIndex, 1);

            delete ext.thc;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#opiat_amphetamin_thc').on('change', function () {
        if (document.getElementById('opiat_amphetamin_thc').checked)
        {
            myArray.push("opiat_amphetamin_thc");
            ext.opiat_amphetamin_thc = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('opiat_amphetamin_thc');

            myArray.splice(myIndex, 1);

            delete ext.opiat_amphetamin_thc;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#cocaine').on('change', function () {
        if (document.getElementById('cocaine').checked)
        {
            myArray.push("cocaine");
            ext.cocaine = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('cocaine');

            myArray.splice(myIndex, 1);

            delete ext.cocaine;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
}

function faec_edit(good_game, ext, ggwp) {
    $('#feses_lengkap').on('change', function () {
        if (document.getElementById('feses_lengkap').checked)
        {
            myArray.push("feses_lengkap");
            ext.feses_lengkap = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('feses_lengkap');

            myArray.splice(myIndex, 1);

            delete ext.feses_lengkap;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#feses_rutin').on('change', function () {
        if (document.getElementById('feses_rutin').checked)
        {
            myArray.push("feses_rutin");
            ext.feses_rutin = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('feses_rutin');

            myArray.splice(myIndex, 1);

            delete ext.feses_rutin;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#darah_samar').on('change', function () {
        if (document.getElementById('darah_samar').checked)
        {
            myArray.push("darah_samar");
            ext.darah_samar = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('darah_samar');

            myArray.splice(myIndex, 1);

            delete ext.darah_samar;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });    
}

function sekr_edit(good_game, ext, ggwp) {
    $('#pewarnaan_gram_sekret').on('change', function () {
        if (document.getElementById('pewarnaan_gram_sekret').checked)
        {
            myArray.push("pewarnaan_gram_sekret");
            ext.pewarnaan_gram_sekret = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('pewarnaan_gram_sekret');

            myArray.splice(myIndex, 1);

            delete ext.pewarnaan_gram_sekret;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#candida_albican').on('change', function () {
        if (document.getElementById('candida_albican').checked)
        {
            myArray.push("candida_albican");
            ext.candida_albican = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('candida_albican');

            myArray.splice(myIndex, 1);

            delete ext.candida_albican;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#jamur_sekret').on('change', function () {
        if (document.getElementById('jamur_sekret').checked)
        {
            myArray.push("jamur_sekret");
            ext.jamur_sekret = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('jamur_sekret');

            myArray.splice(myIndex, 1);

            delete ext.jamur_sekret;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#tricomonas').on('change', function () {
        if (document.getElementById('tricomonas').checked)
        {
            myArray.push("tricomonas");
            ext.tricomonas = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('tricomonas');

            myArray.splice(myIndex, 1);

            delete ext.tricomonas;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#koh_10').on('change', function () {
        if (document.getElementById('koh_10').checked)
        {
            myArray.push("koh_10");
            ext.koh_10 = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('koh_10');

            myArray.splice(myIndex, 1);

            delete ext.koh_10;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
}

function sput_edit(good_game, ext, ggwp) {
    $('#pewarnaan_gram_sputum').on('change', function () {
        if (document.getElementById('pewarnaan_gram_sputum').checked)
        {
            myArray.push("pewarnaan_gram_sputum");
            ext.pewarnaan_gram_sputum = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('pewarnaan_gram_sputum');

            myArray.splice(myIndex, 1);

            delete ext.pewarnaan_gram_sputum;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#pewarnaan_bta').on('change', function () {
        if (document.getElementById('pewarnaan_bta').checked)
        {
            myArray.push("pewarnaan_bta");
            ext.pewarnaan_bta = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('pewarnaan_bta');

            myArray.splice(myIndex, 1);

            delete ext.pewarnaan_bta;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#difteri').on('change', function () {
        if (document.getElementById('difteri').checked)
        {
            myArray.push("difteri");
            ext.difteri = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('difteri');

            myArray.splice(myIndex, 1);

            delete ext.difteri;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    $('#jamur_sputum').on('change', function () {
        if (document.getElementById('jamur_sputum').checked)
        {
            myArray.push("jamur_sputum");
            ext.jamur_sputum = 't';
            ggwp.value = JSON.stringify(ext);
            good_game.value = myArray;
            console.log('di ceklis : ' + myArray);
        } else {
            var myIndex = myArray.indexOf('jamur_sputum');

            myArray.splice(myIndex, 1);

            delete ext.jamur_sputum;
            good_game.value = myArray;
            ggwp.value = JSON.stringify(ext);
            console.log('di unceklis : ' + myArray);
        }
    });
    
}