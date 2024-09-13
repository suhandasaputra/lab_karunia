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
public class addlab {

    private static Logger log = Logger.getLogger(addlab.class);

    public HashMap process(HashMap input) throws UnsupportedEncodingException {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.addlab(input.get("add_lab_name").toString(),input.get("add_lab_address").toString(),input.get("add_lab_doctor").toString(),input.get("add_lab_manager").toString(),input.get("add_lab_desc").toString(),input.get("user_id").toString());
        return status;
    }
}
