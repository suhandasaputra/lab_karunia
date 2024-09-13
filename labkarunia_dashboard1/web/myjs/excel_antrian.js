let selectedFile;
console.log(window.XLSX);
document.getElementById('input').addEventListener("change", (event) => {
    selectedFile = event.target.files[0];
});


document.getElementById('button').addEventListener("click", () => {
    destroyimportant();
    if (selectedFile) {
        let fileReader = new FileReader();
        fileReader.readAsBinaryString(selectedFile);
        fileReader.onload = (event) => {
            let data = event.target.result;
            let workbook = XLSX.read(data, {type: "binary"});
            workbook.SheetNames.forEach(sheet => {
                let rowObject = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheet]);
                document.getElementById("jsondata_antrian").value = JSON.stringify(rowObject);
                getlistimportant(rowObject);
            });
            let btn_submit_import_antrian = document.getElementById('btn_submit_import_antrian');
            btn_submit_import_antrian.style.display = 'initial';
        };
    }
});

function destroyimportant() {
    $('#table_json_antrian').dataTable().fnClearTable();
    $('#table_json_antrian').dataTable().fnDestroy();
}
function getlistimportant(wk_data) {
    $('#table_json_antrian').DataTable({
        scrollX: true,
        bPaginate: false,
        bFilter: false,
        info: false,
        "data": wk_data,
        "columns": [

            {data: "idcard_number"},
            {data: "passport_number"},
            {data: "name"},
            {data: "gender"},
            {data: "birth_date"},
            {data: "citizenship"},
            {data: "address"},
            {data: "email"},
            {data: "phonenumber"},
            {data: "idcard_img64"},
            {data: "passport_img64"},
            {data: "self_img64"},
            {data: "ins_code"},
            {data: "tc_code"},
            {data: "jp_code"},
            {data: "djp_code"},
            {data: "tp_code"},
            {data: "product_name"},
            {data: "queue_date"},
            {data: "queue_hour"}

        ]
    });
}