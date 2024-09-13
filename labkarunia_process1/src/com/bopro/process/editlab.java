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
public class editlab {

    private static Logger log = Logger.getLogger(editlab.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();
        
        
        HashMap status = dp.editlab(
                input.get("code").toString(), 
                input.get("name").toString(), 
                input.get("address").toString(), 
                input.get("doctor").toString(), 
                input.get("manager").toString(),
                input.get("description").toString(), 
                input.get("status").toString(),
                input.get("user").toString());
        return status;
    }
}
