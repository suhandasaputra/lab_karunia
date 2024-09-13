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
public class editkwn {

    private static Logger log = Logger.getLogger(editkwn.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.editkewarganegaraan(
                input.get("kwn_code").toString(), 
                input.get("kwn_name").toString(), 
                input.get("kwn_description").toString(), 
                input.get("kwn_status").toString(), 
                input.get("kwn_updateby").toString());
        return status;
    }
}
