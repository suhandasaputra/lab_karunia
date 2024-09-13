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
public class addkwn {

    private static Logger log = Logger.getLogger(addkwn.class);

    public HashMap process(HashMap input) throws UnsupportedEncodingException {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.addkewarganegaraan(
                input.get("kwn_code").toString(), 
                input.get("kwn_name").toString(), 
                input.get("kwn_description").toString(), 
                input.get("kwn_createby").toString()
        );
        return status;
    }
}
