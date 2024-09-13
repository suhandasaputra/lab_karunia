/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bopro.process;

import com.bopro.database.BackendDBProcess;
import com.bo.parameter.FieldParameterMatapos;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.apache.log4j.Logger;

/**
 *
 * @author suhanda
 */
public class addsalesman {

    private static Logger log = Logger.getLogger(addsalesman.class);

    public HashMap process(HashMap input) throws UnsupportedEncodingException {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.addsalesman(
                input.get("sales_code").toString(), 
                input.get("sales_name").toString(), 
                input.get("sales_channel").toString(), 
                input.get("sales_phone").toString(), 
//                input.get("sales_status").toString(),
                input.get("user").toString());
        return status;
    }
}
