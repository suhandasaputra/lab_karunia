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
public class edittipem {

    private static Logger log = Logger.getLogger(edittipem.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.edittipem(
                input.get("tp_code").toString(), 
                input.get("tp_name").toString(), 
                input.get("tp_description").toString(), 
                input.get("tp_status").toString(), 
                input.get("tp_updateby").toString());
        return status;
    }
}
