/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boserverpos.servlet;

import com.bo.function.impl.MessageProcessImpl;
import com.bopro.process.LoginBackend;
import com.bo.function.MessageProcess;
import com.bo.parameter.FieldParameter;
import com.bo.parameter.FieldParameterMatapos;
import com.bo.parameter.RuleNameParameter;
import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import com.bo.parameter.ProcessingCode;
import com.bopro.process.addcustomer;
import com.bopro.process.addexpense;
import com.bopro.process.addoutlet;
import com.bopro.process.addsupplier;
import com.bopro.process.adduser;
import com.bopro.process.changestatusavailable;
import com.bopro.process.changestatusreceive;
import com.bopro.process.changestatususer;
import com.bopro.process.deletecategory;
import com.bopro.process.deletecustomer;
import com.bopro.process.deleteitem;
import com.bopro.process.deleteoutlet;
import com.bopro.process.deletesupplier;
import com.bopro.process.deleteuser;
import com.bopro.process.detailreport;
import com.bopro.process.detailtrx;
import com.bopro.process.editbiodata;
import com.bopro.process.editbrand;
import com.bopro.process.editcategory;
import com.bopro.process.editcustomer;
import com.bopro.process.editemail;
import com.bopro.process.edititem;
import com.bopro.process.editoutlet;
import com.bopro.process.editpassword;
import com.bopro.process.editphonenumber;
import com.bopro.process.editsupplier;
import com.bopro.process.edituser;
import com.bopro.process.expenselist;
import com.bopro.process.get_brand_sales;
import com.bopro.process.get_outlet_sales;
import com.bopro.process.getaccountdetail;
import com.bopro.process.getlistcategory;
import com.bopro.process.getlistcustomer;
import com.bopro.process.getlistmerchant;
import com.bopro.process.getlistsupplier;
import com.bopro.process.getlistuser;
import com.bopro.process.getlog;
import com.bopro.process.getoptionbrand;
import com.bopro.process.getoptionbusiness;
import com.bopro.process.getoptioncategory;
import com.bopro.process.getoptionoutlet;
import com.bopro.process.getoptionsupplier;
import com.bopro.process.getoutlet;
import com.bopro.process.getsummaryinventory;
import com.bopro.process.grap;
import com.bopro.process.grapbrand;
import com.bopro.process.incomelist;
import com.bopro.process.itemreport;
import com.bopro.process.jurnallist;
import com.bopro.process.signupowner;
import com.bopro.process.summaryreport;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 *
 * author MATAJARI MITRA SOLUSI
 */
public class BackendProcess extends HttpServlet {

//    Messagein msgin = new Messagein();
//    private Tempmsg tempmsg = new Tempmsg();
    private MessageProcess mp = new MessageProcessImpl();
    private static Logger log = Logger.getLogger(BackendProcess.class);

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BufferedReader in = new BufferedReader(new InputStreamReader(request.getInputStream()));
        HashMap input = new HashMap();
        String inputString = "";
        String line = "";
        try {
            while ((line = in.readLine()) != null) {
                inputString += line;
            }
            input = mp.decryptMessage(inputString);
            log.info("\n" + "request Backend process message : { (UserLogin)" + input.get(FieldParameter.userlogin)
                    + " | (ProcessingCode)" + input.get(FieldParameter.procCode) + " } \n");
            if (ProcessingCode.loginbackend.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new LoginBackend().process(input);
//HashMap aa = new LoginBackend();
            } else if (ProcessingCode.signupowner.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new signupowner().process(input);
            } else if (ProcessingCode.getlistcategory.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlistcategory().process(input);
//            } else if (ProcessingCode.addcategory.equals(input.get(FieldParameterMatapos.proccode).toString())) {
//                input = new addcategory().process(input);
            } else if (ProcessingCode.changestatusreceive.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new changestatusreceive().process(input);
            } else if (ProcessingCode.changestatusavailable.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new changestatusavailable().process(input);
            } else if (ProcessingCode.getoptioncategory.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoptioncategory().process(input);
//            } else if (ProcessingCode.additem.equals(input.get(FieldParameterMatapos.proccode).toString())) {
//                input = new additem().process(input);
            } else if (ProcessingCode.getoptionoutlet.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoptionoutlet().process(input);
            } else if (ProcessingCode.detailreport.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new detailreport().process(input);
            } else if (ProcessingCode.detailtrx.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new detailtrx().process(input);
            } else if (ProcessingCode.itemreport.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new itemreport().process(input);
            } else if (ProcessingCode.edit_biodata.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editbiodata().process(input);
            } else if (ProcessingCode.edit_email.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editemail().process(input);
            } else if (ProcessingCode.edit_phonenumber.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editphonenumber().process(input);
            } else if (ProcessingCode.edit_password.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editpassword().process(input);
            } else if (ProcessingCode.add_outlet.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new addoutlet().process(input);
            } else if (ProcessingCode.edit_outlet.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editoutlet().process(input);
            } else if (ProcessingCode.getlistuser.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlistuser().process(input);
            } else if (ProcessingCode.changestatususer.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new changestatususer().process(input);
            } else if (ProcessingCode.adduser.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new adduser().process(input);
            } else if (ProcessingCode.edit_user.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new edituser().process(input);
            } else if (ProcessingCode.delete_user.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deleteuser().process(input);
            } else if (ProcessingCode.getlistcustomer.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlistcustomer().process(input);
            } else if (ProcessingCode.addcustomer.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new addcustomer().process(input);
            } else if (ProcessingCode.edit_customer.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editcustomer().process(input);
            } else if (ProcessingCode.delete_customer.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deletecustomer().process(input);
            } else if (ProcessingCode.get_log.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlog().process(input);
            } else if (ProcessingCode.getlistoutletsales.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new get_outlet_sales().process(input);
            } else if (ProcessingCode.summaryreport.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new summaryreport().process(input);
            } else if (ProcessingCode.grap.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new grap().process(input);
            } else if (ProcessingCode.edit_category.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editcategory().process(input);
            } else if (ProcessingCode.delete_category.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deletecategory().process(input);
            } else if (ProcessingCode.edit_item.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new edititem().process(input);
            } else if (ProcessingCode.delete_item.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deleteitem().process(input);
            } else if (ProcessingCode.getaccount.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getaccountdetail().process(input);
            } else if (ProcessingCode.editbrand.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editbrand().process(input);
            } else if (ProcessingCode.getsummaryinventory.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getsummaryinventory().process(input);
            } else if (ProcessingCode.getoptionsupplier.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoptionsupplier().process(input);
            } else if (ProcessingCode.getlistsupplier.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlistsupplier().process(input);
            } else if (ProcessingCode.addsupplier.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new addsupplier().process(input);
            } else if (ProcessingCode.editsupplier.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new editsupplier().process(input);
            } else if (ProcessingCode.deletesupplier.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deletesupplier().process(input);
            } else if (ProcessingCode.deleteoutlet.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new deleteoutlet().process(input);
            } else if (ProcessingCode.getoutlet.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoutlet().process(input);
            } else if (ProcessingCode.getoptionbusiness.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoptionbusiness().process(input);
            } else if (ProcessingCode.getlistmerchant.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getlistmerchant().process(input);
            } else if (ProcessingCode.getlistbrandsales.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new get_brand_sales().process(input);
            } else if (ProcessingCode.getoptionbrand.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new getoptionbrand().process(input);
            } else if (ProcessingCode.brand_grap.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new grapbrand().process(input);
            }else if (ProcessingCode.income_list.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new incomelist().process(input);
            }else if (ProcessingCode.expense_list.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new expenselist().process(input);
            }else if (ProcessingCode.add_expense.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new addexpense().process(input);
            }else if (ProcessingCode.jurnal_list.equals(input.get(FieldParameterMatapos.proccode).toString())) {
                input = new jurnallist().process(input);
            }
            log.info("\n" + "response FROM Backend process message TO Web : " + input + "\n");
        } catch (Exception e) {
            e.printStackTrace();
            input.put(RuleNameParameter.resp_code, "0030");
            input.put(RuleNameParameter.resp_desc, "Error message request");
        }
        log.info("\n" + "response Backend process message : { (UserLogin)" + input.get(FieldParameter.userlogin)
                + " | (ProcessingCode)" + input.get(FieldParameter.procCode)
                + " | (RespCode)" + input.get(RuleNameParameter.resp_code) + " } \n");
        response.getOutputStream().write(mp.encryptMessage(input).getBytes());
        response.getOutputStream().flush();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
