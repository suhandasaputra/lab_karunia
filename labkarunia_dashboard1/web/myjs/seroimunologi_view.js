/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




function anti_dengue_igg_igm(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti dengue ig g / ig m');
    var newText1 = document.createTextNode('anti dengue ig g');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_dengue_igg");
    newText2.value = mantap.anti_dengue_igg;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('anti dengue ig g / ig m');
    var newText1 = document.createTextNode('anti dengue ig m');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_dengue_igm");
    newText2.value = mantap.anti_dengue_igm;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function dengue_ns1_antigen(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('dengue ns1 antigen');
    var newText1 = document.createTextNode('dengue ns1 antigen');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "dengue_ns1_antigen");
    newText2.value = mantap.dengue_ns1_antigen;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function widal(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Thypi O');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_thypi_o");
    newText2.value = mantap.salmonella_thypi_o;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi AO');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_ao");
    newText2.value = mantap.salmonella_parathypi_ao;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi BO');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_bo");
    newText2.value = mantap.salmonella_parathypi_bo;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);


    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi CO');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_co");
    newText2.value = mantap.salmonella_parathypi_co;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Thypi H');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_thypi_h");
    newText2.value = mantap.salmonella_thypi_h;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi AH');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_ah");
    newText2.value = mantap.salmonella_parathypi_ah;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi BH');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_bh");
    newText2.value = mantap.salmonella_parathypi_bh;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('widal');
    var newText1 = document.createTextNode('Salmonella Parathypi CH');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "salmonella_parathypi_ch");
    newText2.value = mantap.salmonella_parathypi_ch;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}




function anti_salmonella_igm(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti salmonella igm ( tubex )');
    var newText1 = document.createTextNode('anti salmonella igm ( tubex )');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_salmonella_igm");
    newText2.value = mantap.anti_salmonella_igm;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function crp(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('crp');
    var newText1 = document.createTextNode('crp');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "crp");
    newText2.value = mantap.crp;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function asto(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('asto');
    var newText1 = document.createTextNode('asto');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "asto");
    newText2.value = mantap.asto;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function rheumatoid_faktor(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('rheumatoid faktor ( rf )');
    var newText1 = document.createTextNode('rheumatoid faktor ( rf )');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "rheumatoid_faktor");
    newText2.value = mantap.rheumatoid_faktor;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function serologi_amoeba(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('serologi amoeba');
    var newText1 = document.createTextNode('serologi amoeba');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "serologi_amoeba");
    newText2.value = mantap.serologi_amoeba;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}

function vdrl(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('vdrl');
    var newText1 = document.createTextNode('vdrl');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "vdrl");
    newText2.value = mantap.vdrl;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function tpha(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('tpha');
    var newText1 = document.createTextNode('tpha');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "tpha");
    newText2.value = mantap.tpha;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_leptospira_igg(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti leptospira ig g');
    var newText1 = document.createTextNode('anti leptospira ig g');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_leptospira_igg");
    newText2.value = mantap.anti_leptospira_igg;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_leptospira_igm(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti leptospira ig m');
    var newText1 = document.createTextNode('anti leptospira ig m');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_leptospira_igm");
    newText2.value = mantap.anti_leptospira_igm;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_mycoplasma_igg_igm(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti mycoplasma ig g / ig m');
    var newText1 = document.createTextNode('anti mycoplasma ig g');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_mycoplasma_igg");
    newText2.value = mantap.anti_mycoplasma_igg;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
//    var newText = document.createTextNode('anti mycoplasma ig g / ig m');
    var newText1 = document.createTextNode('anti mycoplasma ig m');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_mycoplasma_igm");
    newText2.value = mantap.anti_mycoplasma_igm;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_ebv_ea_iga(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti ebv ea ig a');
    var newText1 = document.createTextNode('anti ebv ea ig a');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_ebv_ea_iga");
    newText2.value = mantap.anti_ebv_ea_iga;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}

function anti_ebv_ea_igg(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti ebv ea ig g');
    var newText1 = document.createTextNode('anti ebv ea ig g');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_ebv_ea_igg");
    newText2.value = mantap.anti_ebv_ea_igg;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_ebv_ea_igm(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti ebv ea ig m');
    var newText1 = document.createTextNode('anti ebv ea ig m');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_ebv_ea_igm");
    newText2.value = mantap.anti_ebv_ea_igm;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function anti_tb_igg(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti tb ig g');
    var newText1 = document.createTextNode('anti tb ig g');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "anti_tb_igg");
    newText2.value = mantap.anti_tb_igg;
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}


function serologi_jamur(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('serologi jamur');
    var newText1 = document.createTextNode('serologi jamur');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "serologi_jamur");
    newText2.value = mantap.serologi_jamur;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function serologi_jamur_lengkap(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('serologi jamur lengkap');
    var newText1 = document.createTextNode('serologi jamur lengkap');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "serologi_jamur_lengkap");
    newText2.value = mantap.serologi_jamur_lengkap;
//    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}