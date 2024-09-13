/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function gula_darah_puasa() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('gula darah puasa');
    var newText1 = document.createTextNode('gula darah puasa');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "gula_darah_puasa");
    var newText3 = document.createTextNode('70 - 110 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function gula_darah_2_jam_pp() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('gula darah 2 jam pp');
    var newText1 = document.createTextNode('gula darah 2 jam pp');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "gula_darah_2_jam_pp");
    var newText3 = document.createTextNode('< 140 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}


function glukosa_sewaktu() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('glukosa sewaktu');
    var newText1 = document.createTextNode('glukosa sewaktu');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "glukosa_sewaktu");
    var newText3 = document.createTextNode('< 200 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function kurva_harian() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('kurva harian');
    var newText1 = document.createTextNode('kurva harian');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "kurva_harian");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
    
}
function gtt() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('gtt');
    var newText1 = document.createTextNode('gtt');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "gtt");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function hba1c() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('hba1c');
    var newText1 = document.createTextNode('hba1c');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hba1c");
    var newText3 = document.createTextNode('< 6.5 %');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function keton_darah() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('keton darah');
    var newText1 = document.createTextNode('keton darah');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "keton_darah");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}

function fruktosamin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('fruktosamin');
    var newText1 = document.createTextNode('fruktosamin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "fruktosamin");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function c_peptide() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('c. peptide');
    var newText1 = document.createTextNode('c. peptide');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "c_peptide");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function insulin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('insulin');
    var newText1 = document.createTextNode('insulin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "insulin");
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}