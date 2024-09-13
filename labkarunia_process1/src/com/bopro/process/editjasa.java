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
public class editjasa {

    private static Logger log = Logger.getLogger(editjasa.class);

    public HashMap process(HashMap input) {
        BackendDBProcess dp = new BackendDBProcess();
        HashMap status = dp.editjasa(
                input.get("jp_kode").toString(), 
                input.get("jp_name").toString(), 
                input.get("jp_kode_produk_vaksinku").toString(), 
                input.get("jp_metode_instan").toString(), 
                input.get("jp_status").toString(), 
                input.get("jp_updateby").toString());
        return status;
    }
}
