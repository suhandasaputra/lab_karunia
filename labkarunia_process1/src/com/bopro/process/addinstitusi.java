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
public class addinstitusi {

    private static Logger log = Logger.getLogger(addinstitusi.class);

    public HashMap process(HashMap input) throws UnsupportedEncodingException {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.addinstitusi(
                input.get("ins_code").toString(), 
                input.get("ins_name").toString(), 
                input.get("ins_lab").toString(), 
                input.get("ins_pic").toString(), 
                input.get("ins_email").toString(),
                input.get("ins_phone").toString(), 
                input.get("ins_sales").toString(), 
                input.get("ins_description").toString(), 
                input.get("send_result_to_email").toString(),
                input.get("ins_createby").toString(), 
                input.get("ins_fix_email_pada_link_checkup").toString());
        return status;
    }
}
