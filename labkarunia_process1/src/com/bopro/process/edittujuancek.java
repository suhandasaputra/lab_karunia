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
public class edittujuancek {

    private static Logger log = Logger.getLogger(edittujuancek.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.edittujuancek(
                input.get("tc_code").toString(), 
                input.get("tc_name").toString(), 
                input.get("tc_description").toString(), 
                input.get("tc_penerbangan").toString(), 
                input.get("tc_status").toString(), 
                input.get("tc_updateby").toString());
        return status;
    }
}
