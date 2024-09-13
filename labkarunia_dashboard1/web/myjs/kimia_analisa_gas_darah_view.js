/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function analisa_gas_darah(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('analisa_gas_darah');
    var newText1 = document.createTextNode('analisa_gas_darah');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "analisa_gas_darah");
    newText2.value = mantap.analisa_gas_darah;
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
function asam_laktat(mantap) {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('asam_laktat');
    var newText1 = document.createTextNode('asam_laktat');
    var newText2 = document.createElement('input');newText2.setAttribute("disabled", "disabled");
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "asam_laktat");
    newText2.value = mantap.asam_laktat;
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell4.appendChild(newText4);
}
