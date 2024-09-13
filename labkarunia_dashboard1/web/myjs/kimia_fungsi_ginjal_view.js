/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function ureum(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('ureum');
    var newText1 = document.createTextNode('ureum');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "ureum");
    newText2.value = mantap.ureum;

    var newText3 = document.createTextNode('13 ˗ 43 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function creatinin(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('creatinin');
    var newText1 = document.createTextNode('creatinin');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "creatinin");
    newText2.value = mantap.creatinin;

    var newText3 = document.createTextNode('L 0.6 ˗ 1.2 mg/dl P 0.5 ˗ 1.0 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function creatinin_clearance_test(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('creatinin clearance test ( cct )');
    var newText1 = document.createTextNode('creatinin clearance test ( cct )');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "creatinin_clearance_test");
    newText2.value = mantap.creatinin_clearance_test;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function ureum_clearance_test(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('ureum clearance test ( uct )');
    var newText1 = document.createTextNode('ureum clearance test ( uct )');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "ureum_clearance_test");
    newText2.value = mantap.ureum_clearance_test;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}

function asam_urat(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('asam urat');
    var newText1 = document.createTextNode('asam urat');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "asam_urat");
    newText2.value = mantap.asam_urat;

    var newText3 = document.createTextNode('1.5 ˗ 7.0 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function cystatin_c(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('cystatin - c');
    var newText1 = document.createTextNode('cystatin - c');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "cystatin_c");
    newText2.value = mantap.cystatin_c;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function bun(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('bun');
    var newText1 = document.createTextNode('bun');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "bun");
    newText2.value = mantap.bun;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function e_gfr(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('e gfr');
    var newText1 = document.createTextNode('e gfr');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "e_gfr");
    newText2.value = mantap.e_gfr;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}