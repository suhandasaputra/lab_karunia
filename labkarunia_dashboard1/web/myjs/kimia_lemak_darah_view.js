/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function cholesterol_total(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('cholesterol total');
    var newText1 = document.createTextNode('cholesterol total');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "cholesterol_total");
    newText2.value = mantap.cholesterol_total;

    var newText3 = document.createTextNode('< 200 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function ldl_cholesterol(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('ldl cholesterol');
    var newText1 = document.createTextNode('ldl cholesterol');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "ldl_cholesterol");
    newText2.value = mantap.ldl_cholesterol;

    var newText3 = document.createTextNode('< 100 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function hdl_cholesterol(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('hdl cholesterol');
    var newText1 = document.createTextNode('hdl cholesterol');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hdl_cholesterol");
    newText2.value = mantap.hdl_cholesterol;

    var newText3 = document.createTextNode('L: 35 - 55 mg/dl P: 45 – 65 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function trigliserida(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('trigliserida');
    var newText1 = document.createTextNode('trigliserida');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "trigliserida");
    newText2.value = mantap.trigliserida;

    var newText3 = document.createTextNode('< 150 mg/dl');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function total_lipid(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('total lipid');
    var newText1 = document.createTextNode('total lipid');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "total_lipid");
    newText2.value = mantap.total_lipid;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function ratio_chol_t_hdl(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('ratio chol t/hdl');
    var newText1 = document.createTextNode('ratio chol t/hdl');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "ratio_chol_t_hdl");
    newText2.value = mantap.ratio_chol_t_hdl;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function vldl(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('vldl');
    var newText1 = document.createTextNode('vldl');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "vldl");
    newText2.value = mantap.vldl;

    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
