<html>
    <head>
        <title>tes</title>
        <script type="text/javascript">
            function addRows() {
                var table = document.getElementById('emptbl');
                var rowCount = table.rows.length;
                var cellCount = table.rows[0].cells.length;
                var row = table.insertRow(rowCount);
                for (var i = 0; i <= cellCount; i++) {
                    var cell = 'cell' + i;
                    cell = row.insertCell(i);
                    var copycel = document.getElementById('col' + i).innerHTML;
                    cell.innerHTML = copycel;
                    if (i == 3) {
                        var radioinput = document.getElementById('col3').getElementsByTagName('input');
                        for (var j = 0; j <= radioinput.length; j++) {
                            if (radioinput[j].type == 'radio') {
                                var rownum = rowCount;
                                radioinput[j].name = 'gender[' + rownum + ']';
                            }
                        }
                    }
                }
            }
            function deleteRows() {
                var table = document.getElementById('emptbl');
                var rowCount = table.rows.length;
                if (rowCount > '2') {
                    var row = table.deleteRow(rowCount - 1);
                    rowCount--;
                } else {
                    alert('There should be atleast one row');
                }
            }
        </script>
    </head>
    <body>
        <form action="#" method="post">    
            <table id="emptbl">
                <tr>
                    <th>nama karyawan</th>
                    <th>telepon</th>
                    <th>jabatan</th> 
                    <th>jenis kelamin</th> 
                </tr> 
                <tr> 
                    <td id="col0"><input type="text" name="empname[]" value="" /></td> 
                    <td id="col1"><input type="text" name="phone[]" value="" /></td> 
                    <td id="col2"> 
                        <select name="department[]" id="dept"> 
                            <option value="0">pilih jabatan</option> 
                            <option value="1">Sales</option>
                            <option value="2">IT</option>
                            <option value="3">Operasional</option>
                        </select> 
                    </td> 
                    <td id="col3"> 
                        <input type="radio" name="gender[0]" value="male" />Male 
                        <input type="radio" name="gender[1]" value="female" />Female 
                    </td> 
                </tr>  
            </table> 
            <table> 
                <tr> 
                    <td><input type="button" value="Tambah" onclick="addRows()" /></td> 
                    <td><input type="button" value="Hapus" onclick="deleteRows()" /></td> 
                    <td><input type="submit" value="Submit" /></td> 
                </tr>  
            </table> 
        </form> 
    </body> 
</html>