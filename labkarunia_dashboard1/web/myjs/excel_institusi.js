let selectedFile;
console.log(window.XLSX);
document.getElementById('input').addEventListener("change", (event) => {
    selectedFile = event.target.files[0];
});


document.getElementById('button').addEventListener("click", () => {
    destroyimportinst();
    if (selectedFile) {
        let fileReader = new FileReader();
        fileReader.readAsBinaryString(selectedFile);
        fileReader.onload = (event) => {
            let data = event.target.result;
            let workbook = XLSX.read(data, {type: "binary"});
            workbook.SheetNames.forEach(sheet => {
                let rowObject = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheet]);
                document.getElementById("jsondata_ins").value = JSON.stringify(rowObject);
                getlistimportinst(rowObject);
            });
            let btn_submit_import_ins = document.getElementById('btn_submit_import_ins');
            btn_submit_import_ins.style.display = 'initial';
        };
    }
});

function destroyimportinst() {
    $('#table_json_ins').dataTable().fnClearTable();
    $('#table_json_ins').dataTable().fnDestroy();
}
function getlistimportinst(wk_data) {
    $('#table_json_ins').DataTable({
        scrollX: true,
        bPaginate: false,
        bFilter: false,
        info: false,
        "data": wk_data,
        "columns": [
            {data: "ins_code"},
            {data: "ins_name"},
            {data: "ins_lab"},
            {data: "ins_pic"},
            {data: "ins_email"},
            {data: "ins_phone"},
            {data: "ins_sales"}
        ]
    });
}