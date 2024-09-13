/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function hemostasis_lengkap() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('hemostasis lengkap');
    var newText1 = document.createTextNode('pt');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "pt");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);


    var newRow1 = tableRef.insertRow(tableRef.rows.length);
    var newCell5 = newRow1.insertCell(0);
    var newCell6 = newRow1.insertCell(1);
    var newCell7 = newRow1.insertCell(2);
    var newCell8 = newRow1.insertCell(3);
    var newCell9 = newRow1.insertCell(4);
//    var newText5 = document.createTextNode('hemostasis lengkap');
    var newText6 = document.createTextNode('aptt');
    var newText7 = document.createElement('input');
    newText7.setAttribute("type", "number");
    newText7.setAttribute("id", "aptt");
    var newText9 = document.createElement('input');

//    newCell5.appendChild(newText5);
    newCell6.appendChild(newText6);
    newCell7.appendChild(newText7);
    newCell9.appendChild(newText9);

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
//    var newText10 = document.createTextNode('hemostasis lengkap');
    var newText11 = document.createTextNode('inr');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "inr");
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function masa_pendarahan() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('masa pendarahan');
    var newText1 = document.createTextNode('masa pendarahan');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "masa_pendarahan");
    var newText3 = document.createTextNode('1-3 Menit');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}

function masa_pembekuan() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('masa pembekuan');
    var newText1 = document.createTextNode('masa pembekuan');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "masa_pembekuan");
    var newText3 = document.createTextNode('3-5 Menit');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}

function masa_protrombin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('masa protrombin');
    var newText1 = document.createTextNode('masa protrombin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "masa_protrombin");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function aptt() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('aptt');
    var newText1 = document.createTextNode('aptt');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "aptt");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function fibrinogen() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('fibrinogen');
    var newText1 = document.createTextNode('fibrinogen');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "fibrinogen");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function masa_trombin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('masa trombin ( tt )');
    var newText1 = document.createTextNode('masa trombin ( tt )');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "masa_trombin");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function d_dimer() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('d - dimer ( kuantitatif )');
    var newText1 = document.createTextNode('d - dimer ( kuantitatif )');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "d_dimer");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function agregasi_trobosit() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('agregasi trobosit');
    var newText1 = document.createTextNode('agregasi trobosit');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "agregasi_trobosit");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function anti_trombin_iii() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('anti trombin iii');
    var newText1 = document.createTextNode('anti trombin iii');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "anti_trombin_iii");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function percobaan_pembendungan() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('percobaan pembendungan');
    var newText1 = document.createTextNode('percobaan pembendungan');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "percobaan_pembendungan");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function inr() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('inr');
    var newText1 = document.createTextNode('inr');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "inr");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function protein_c() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('protein c');
    var newText1 = document.createTextNode('protein c');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "protein_c");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function viskositas_darah_plasma() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('viskositas darah / plasma');
    var newText1 = document.createTextNode('viskositas darah / plasma');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "viskositas_darah_plasma");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function protein_s() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('protein_s');
    var newText1 = document.createTextNode('protein_s');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "protein_s");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function faktor_viii() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('faktor viii');
    var newText1 = document.createTextNode('faktor viii');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "faktor_viii");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function faktor_ix() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('faktor ix');
    var newText1 = document.createTextNode('faktor ix');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "faktor_ix");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
