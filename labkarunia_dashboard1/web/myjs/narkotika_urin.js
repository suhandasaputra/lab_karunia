/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//amphetamine,meth_amphetamine,opiat_morfin,benzodiazepin,thc,opiat_amphetamin_thc,cocaine
//["amphetamine","meth -  amphetamine","opiat / morfin","benzodiazepin","thc","opiat / amphetamin / thc","cocaine"]
function amphetamine() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('amphetamine');
    var newText1 = document.createTextNode('amphetamine');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "amphetamine");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function meth_amphetamine() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('meth -  amphetamine');
    var newText1 = document.createTextNode('meth -  amphetamine');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "meth_amphetamine");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function opiat_morfin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('opiat / morfin');
    var newText1 = document.createTextNode('opiat / morfin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "opiat_morfin");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function benzodiazepin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('benzodiazepin');
    var newText1 = document.createTextNode('benzodiazepin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "benzodiazepin");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}


function thc() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('thc');
    var newText1 = document.createTextNode('thc');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "thc");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function opiat_amphetamin_thc() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('opiat / amphetamin / thc');
    var newText1 = document.createTextNode('opiat / morfin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "opiat_morfin1");
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
//    var newText = document.createTextNode('opiat / amphetamin / thc');
    var newText1 = document.createTextNode('amphetamine');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "amphetamine1");
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
//    var newText = document.createTextNode('opiat / amphetamin / thc');
    var newText1 = document.createTextNode('thc');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "thc1");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

//    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
function cocaine() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('cocaine');
    var newText1 = document.createTextNode('cocaine');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "text");
    newText2.setAttribute("id", "cocaine");
    var newText3 = document.createTextNode('negatif');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);
}
