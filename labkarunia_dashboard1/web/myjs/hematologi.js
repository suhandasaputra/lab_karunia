/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function darahlengkap() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('darah lengkap');
    var newText1 = document.createTextNode('hemoglobin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hemoglobin");
    var newText3 = document.createTextNode('11.7 - 15.5  g/dL ( P ),13.2 - 17.3  g/dL ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);


    // Insert a row in the table at row index 0
    var newRow1 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell5 = newRow1.insertCell(0);
    var newCell6 = newRow1.insertCell(1);
    var newCell7 = newRow1.insertCell(2);
    var newCell8 = newRow1.insertCell(3);
    var newCell9 = newRow1.insertCell(4);
    // Append a text node to the cell
//    var newText5 = document.createTextNode('darah lengkap');
    var newText6 = document.createTextNode('hematokrit');
    var newText7 = document.createElement('input');
    newText7.setAttribute("type", "number");
    newText7.setAttribute("id", "hematokrit");
    var newText8 = document.createTextNode('35 - 47 % ( P ),40 - 52 % ( L )');
    var newText9 = document.createElement('input');

//    newCell5.appendChild(newText5);
    newCell6.appendChild(newText6);
    newCell7.appendChild(newText7);
    newCell8.appendChild(newText8);
    newCell9.appendChild(newText9);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('trombosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "trombosit");
    var newText13 = document.createTextNode('150.000 - 400.000 ul');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('leukosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "leukosit");
    var newText13 = document.createTextNode('4.000 - 10.000 ul');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('eritrosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "eritrosit");
    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('mcv');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mcv");
    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('mch');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mch");
    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('mchc');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mchc");
    var newText13 = document.createTextNode('32 - 36 g/dL');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
//                            var newCell12 = newRow2.insertCell(2);
//                            var newCell13 = newRow2.insertCell(3);
//                            var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('hitung jenis leukosit');
//                            var newText12 = document.createElement('input');
//                            newText12.setAttribute("type", "number");
//                            var newText13 = document.createTextNode('');
//                            var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
//                            newCell12.appendChild(newText12);
//                            newCell13.appendChild(newText13);
//                            newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-basofil');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "basofil");
    var newText13 = document.createTextNode('0 - 1 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-eosinofil');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "eosinofil");
    var newText13 = document.createTextNode('1 - 3 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-n. segmen');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "n_segmen");
    var newText13 = document.createTextNode('2 - 6 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-n. batang');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "n_batang");
    var newText13 = document.createTextNode('50 - 70 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-limfosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "limfosit");
    var newText13 = document.createTextNode('20 - 40 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah lengkap');
    var newText11 = document.createTextNode('-monosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "monosit");
    var newText13 = document.createTextNode('2 - 8 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}


function hemoglobin() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('hemoglobin');
    var newText1 = document.createTextNode('hemoglobin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hemoglobin");
    var newText3 = document.createTextNode('11.7 - 15.5  g/dL ( P ),13.2 - 17.3  g/dL ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

}
function hematokrit() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('hematokrit');
    var newText1 = document.createTextNode('hematokrit');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hematokrit");
    var newText3 = document.createTextNode('35 - 47 % ( P ),40 - 52 % ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

}

function trombosit() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('trombosit');
    var newText11 = document.createTextNode('trombosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "trombosit");
    var newText13 = document.createTextNode('150.000 - 400.000 ul');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

}

function leukosit() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('leukosit');
    var newText11 = document.createTextNode('leukosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "leukosit");
    var newText13 = document.createTextNode('4.000 - 10.000 ul');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function eritrosit() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('eritrosit');
    var newText11 = document.createTextNode('eritrosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "eritrosit");
    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function retikulosit() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('retikulosit');
    var newText11 = document.createTextNode('retikulosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "retikulosit");
//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}



function hitung_eosinofil() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('hitung eosinofil');
    var newText11 = document.createTextNode('hitung eosinofil');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "hitung_eosinofil");

//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}


function golongan_darah() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('golongan darah');
    var newText11 = document.createTextNode('golongan darah');

    var array = ["A", "B", "AB", "O"];
    var newText12 = document.createElement("select");
    newText12.setAttribute("id", "golongan_darah");

//Create and append the options
    for (var i = 0; i < array.length; i++) {
        var option = document.createElement("option");
        option.setAttribute("value", array[i]);
        option.text = array[i];
        newText12.appendChild(option);
    }
//    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('golongan darah');
    var newText11 = document.createTextNode('rhesus');
    var newText12 = document.createElement('select');
    newText12.setAttribute("id", "rhesus");


    var array = ["+", "-"];
    for (var i = 0; i < array.length; i++) {
        var option = document.createElement("option");
        option.setAttribute("value", array[i]);
        option.text = array[i];
        newText12.appendChild(option);
    }



//    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

}


function darahrutin() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('darah rutin');
    var newText1 = document.createTextNode('hemoglobin');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "hemoglobin");
    var newText3 = document.createTextNode('11.7 - 15.5  g/dL ( P ),13.2 - 17.3  g/dL ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);


    // Insert a row in the table at row index 0
    var newRow1 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell5 = newRow1.insertCell(0);
    var newCell6 = newRow1.insertCell(1);
    var newCell7 = newRow1.insertCell(2);
    var newCell8 = newRow1.insertCell(3);
    var newCell9 = newRow1.insertCell(4);
    // Append a text node to the cell
//    var newText5 = document.createTextNode('darah rutin');
    var newText6 = document.createTextNode('hematokrit');
    var newText7 = document.createElement('input');
    newText7.setAttribute("type", "number");
    newText7.setAttribute("id", "hematokrit");
    var newText8 = document.createTextNode('35 - 47 % ( P ),40 - 52 % ( L )');
    var newText9 = document.createElement('input');

//    newCell5.appendChild(newText5);
    newCell6.appendChild(newText6);
    newCell7.appendChild(newText7);
    newCell8.appendChild(newText8);
    newCell9.appendChild(newText9);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah rutin');
    var newText11 = document.createTextNode('trombosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "trombosit");
    var newText13 = document.createTextNode('150.000 - 400.000 ul');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('darah rutin');
    var newText11 = document.createTextNode('leukosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "leukosit");
    var newText13 = document.createTextNode('4.000 - 10.000 ul');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

}
function mcv() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('mcv mch mch');
    var newText11 = document.createTextNode('mcv');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mcv");
    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('mcv mch mch');
    var newText11 = document.createTextNode('mch');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mch");
    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('mcv mch mch');
    var newText11 = document.createTextNode('mchc');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "mchc");

    var newText13 = document.createTextNode('32 - 36 g/dL');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function hitung() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-basofil');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "basofil");
    var newText13 = document.createTextNode('0 - 1 %');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-eosinofil');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "eosinofil");
    var newText13 = document.createTextNode('1 - 3 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-n. segmen');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "n_segmen");
    var newText13 = document.createTextNode('2 - 6 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-n. batang');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "n_batang");
    var newText13 = document.createTextNode('50 - 70 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-limfosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "limfosit");
    var newText13 = document.createTextNode('20 - 40 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('hitung jenis leukosit');
    var newText11 = document.createTextNode('-monosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "monosit");
    var newText13 = document.createTextNode('2 - 8 %');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}


function morfologi_darah_tepi() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('morfologi darah tepi');
    var newText11 = document.createTextNode('Eritrosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "eritrosit");
//    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('morfologi darah tepi');
    var newText11 = document.createTextNode('leukosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "leukosit");
//    var newText13 = document.createTextNode('27 - 31 pg');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('morfologi darah tepi');
    var newText11 = document.createTextNode('trombosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "trombosit");
//    var newText13 = document.createTextNode('32 - 36 g/dL');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('morfologi darah tepi');
    var newText11 = document.createTextNode('kesan');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "kesan");
//    var newText13 = document.createTextNode('32 - 36 g/dL');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
//    var newText10 = document.createTextNode('morfologi darah tepi');
    var newText11 = document.createTextNode('saran');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "saran");
//    var newText13 = document.createTextNode('32 - 36 g/dL');
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

}





























function it_ratio() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('it ratio');
    var newText1 = document.createTextNode('it ratio');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "it_ratio");
//    var newText3 = document.createTextNode('11.7 - 15.5  g/dL ( P ),13.2 - 17.3  g/dL ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

}
function serum_iron() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    var newRow = tableRef.insertRow(tableRef.rows.length);
    var newCell = newRow.insertCell(0);
    var newCell1 = newRow.insertCell(1);
    var newCell2 = newRow.insertCell(2);
    var newCell3 = newRow.insertCell(3);
    var newCell4 = newRow.insertCell(4);
    var newText = document.createTextNode('serum iron(si)');
    var newText1 = document.createTextNode('serum iron(si)');
    var newText2 = document.createElement('input');
    newText2.setAttribute("type", "number");
    newText2.setAttribute("id", "serum_iron");
//    var newText3 = document.createTextNode('35 - 47 % ( P ),40 - 52 % ( L )');
    var newText4 = document.createElement('input');

    newCell.appendChild(newText);
    newCell1.appendChild(newText1);
    newCell2.appendChild(newText2);
//    newCell3.appendChild(newText3);
    newCell4.appendChild(newText4);

}

function tibc() {

    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];
    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('tibc');
    var newText11 = document.createTextNode('tibc');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "tibc");
//    var newText13 = document.createTextNode('150.000 - 400.000 ul');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);

}

function feritin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

// Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('feritin');
    var newText11 = document.createTextNode('feritin');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "feritin");
//    var newText13 = document.createTextNode('4.000 - 10.000 ul');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function transferin() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('transferin');
    var newText11 = document.createTextNode('transferin');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "transferin");
//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function asam_folat() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('asam folat');
    var newText11 = document.createTextNode('asam folat');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "asam_folat");
//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}

function vitamin_b12() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('vitamin B12');
    var newText11 = document.createTextNode('vitamin B12');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "vitamin_b12");
//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}



function pewarnaan_sitokimia() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('pewarnaan sitokimia');
    var newText11 = document.createTextNode('pewarnaan sitokimia');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "number");
    newText12.setAttribute("id", "pewarnaan_sitokimia");
//    var newText13 = document.createTextNode('4.0 - 5.5 Juta/ul ( P ),4.5 - 5.5 Juta/ul ( L )');
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}


function sel_le() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    // Insert a row in the table at row index 0
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    // Insert a cell in the row at index 0
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    // Append a text node to the cell
    var newText10 = document.createTextNode('sel le');
    var newText11 = document.createTextNode('sel le');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "sel_le");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
//    newCell13.appendChild(newText13);
    newCell14.appendChild(newText14);
}


function le_reaksi() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('le reaksi');
    var newText11 = document.createTextNode('le reaksi');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "le_reaksi");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function hb_elektroforesa() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('hb elektroforesa');
    var newText11 = document.createTextNode('hb elektroforesa');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "hb_elektroforesa");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function g6_pd() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('g6 pd');
    var newText11 = document.createTextNode('g6 pd');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "g6_pd");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function g6_pd_neonatus() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('g6 pd neonatus');
    var newText11 = document.createTextNode('g6 pd neonatus');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "g6_pd_neonatus");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function nap() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('nap');
    var newText11 = document.createTextNode('nap');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "nap");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function mikrofilaria() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('mikrofilaria');
    var newText11 = document.createTextNode('mikrofilaria');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "mikrofilaria");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function malaria() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('malaria');
    var newText11 = document.createTextNode('malaria');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "malaria");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function antibodi_trombosit() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('antibodi trombosit');
    var newText11 = document.createTextNode('antibodi trombosit');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "antibodi_trombosit");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function cd4() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('cd4');
    var newText11 = document.createTextNode('cd4');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "cd4");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function cd4_cd8() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('cd4 - cd8');
    var newText11 = document.createTextNode('cd4 - cd8');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "cd4_cd8");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function coombs_test_direct_indirect() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('coombs test direct indirect');
    var newText11 = document.createTextNode('direct');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "coombs_direct");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
    
    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
//    var newText10 = document.createTextNode('coombs test direct indirect');
    var newText11 = document.createTextNode('indirect');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "coombs_indirect");
    var newText14 = document.createElement('input');

//    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}






function hb_f() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('hb f ( alkali denaturasi )');
    var newText11 = document.createTextNode('hb f ( alkali denaturasi )');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "hb_f");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}



function hb_h() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('hb h');
    var newText11 = document.createTextNode('hb h');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "hb_h");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function hb_a2() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('hb a2');
    var newText11 = document.createTextNode('hb a2');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "hb_a2");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function hams_test() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('hams test');
    var newText11 = document.createTextNode('hams test');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "hams_test");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function sugar_water_test() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('sugar water test');
    var newText11 = document.createTextNode('sugar water test');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "sugar_water_test");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}
function sito_genetika() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('sito genetika');
    var newText11 = document.createTextNode('sito genetika');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "sito_genetika");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}

function kromosom() {
    var tableRef = document.getElementById('table_nya').getElementsByTagName('tbody')[0];

    var newRow2 = tableRef.insertRow(tableRef.rows.length);
    var newCell10 = newRow2.insertCell(0);
    var newCell11 = newRow2.insertCell(1);
    var newCell12 = newRow2.insertCell(2);
    var newCell13 = newRow2.insertCell(3);
    var newCell14 = newRow2.insertCell(4);
    var newText10 = document.createTextNode('kromosom');
    var newText11 = document.createTextNode('kromosom');
    var newText12 = document.createElement('input');
    newText12.setAttribute("type", "text");
    newText12.setAttribute("id", "kromosom");
    var newText14 = document.createElement('input');

    newCell10.appendChild(newText10);
    newCell11.appendChild(newText11);
    newCell12.appendChild(newText12);
    newCell14.appendChild(newText14);
}