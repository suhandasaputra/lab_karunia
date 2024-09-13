/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bopro.process;

import com.bopro.database.BackendDBProcess;
import com.bo.parameter.FieldParameterMatapos;
import java.util.HashMap;
import org.apache.log4j.Logger;

/**
 *
 * @author suhanda
 */
public class editsalesman {

    private static Logger log = Logger.getLogger(editsalesman.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();

        HashMap status = dp.editsalesman(
                input.get("edit_sales_code").toString(),
                input.get("edit_sales_name").toString(),
                input.get("edit_sales_phone").toString(),
                input.get("edit_sales_channel").toString(),
                input.get("edit_sales_status").toString(),
                input.get("user").toString());
        return status;
    }
}
