<%@page import="com.collectam.myrequest.MyXMLParser"%>
<%@page import="com.collectam.myrequest.ResourceRequest"%>
<%@ page language="java" import="java.sql.*, javax.naming.*, javax.sql.DataSource,java.util.*"  session="true" %>
<%

    String pageName = request.getParameter("hide");
    String userName = (String) session.getAttribute("User");
    String sessionId = (String) session.getId();
    String filepath = (String) session.getAttribute("FilePath");
    System.out.println("sessionid=" + sessionId);

    ResourceRequest rq = new ResourceRequest();
    MyXMLParser xp = new MyXMLParser();
    System.out.println(pageName);
    if (pageName.equalsIgnoreCase("index.jsp")) {

        String _Username = request.getParameter("email");
        String _password = request.getParameter("pass");
        if (!_Username.isEmpty() && !_password.isEmpty()) {
            //This stores the server response (including the web service xmlresponse) in an arraylist
            ArrayList<String> getServiceResponse = rq.restFulPostClientValidate(_Username, _password);

            if (!getServiceResponse.isEmpty() && getServiceResponse.get(0).equalsIgnoreCase("OK")) {

                //This extracts the xml response included in the server response
                String serviceXMLResponse = getServiceResponse.get(4);

                //This stores the NODES of the XML RESPONSE
                ArrayList<String> xmlNodes = xp.Parser(serviceXMLResponse);

                if (xmlNodes.get(1).equalsIgnoreCase("00")) {
                    session.setAttribute("User", _Username);
                    out.println("<script> window.location = 'homepage.jsp'</script>");
                    // out.println("<script> window.location='homePage.jsp'</script>");

                } else {
                    out.println("<script> window.location = 'index.jsp'</script>");

                }

            }

        }
    } else if (pageName.equalsIgnoreCase("register.jsp")) {

        String _firstname = request.getParameter("fname");
        String _lastname = request.getParameter("lname");
        String _phonenumber = request.getParameter("pnum");
        String _email = request.getParameter("email");
        String _password = request.getParameter("pass");

        ArrayList<String> getServiceResponse = rq.restFulPostClientSignUp(_firstname, _lastname, _email, _password);

        if (!getServiceResponse.isEmpty() && getServiceResponse.get(0).equalsIgnoreCase("OK")) {

            //This extracts the xml response included in the server response
            String serviceXMLResponse = getServiceResponse.get(4);

            //This stores the NODES of the XML RESPONSE
            ArrayList<String> xmlNodes = xp.ParserSignUp(serviceXMLResponse);

            if (xmlNodes.get(4).equalsIgnoreCase("00")) {

                out.println("<script>alert ('Welcome'); window.location = 'index.jsp'</script>");

            } else {
                out.println("<script>alert ('Registration Failed!  Please Try Again!'); window.location = 'register.jsp'</script>");

            }

        }

    } else if (pageName.equalsIgnoreCase("messages.jsp")) {

        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility

        if (null == userName) {
            request.setAttribute("Error", "Session has ended.  Please login.");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

        String _recipient = request.getParameter("recipient");
        String _subject = request.getParameter("subject");
        String _messageBody = request.getParameter("messageBody");
        String _sender = (String) session.getAttribute("email");

        ArrayList<String> getServiceResponse = rq.restFulPostClientSendMessage(_recipient, _subject, _messageBody, _sender);

        for (String a : getServiceResponse) {
            System.out.println("a:" + a);
        }

        if (!getServiceResponse.isEmpty() && getServiceResponse.get(0).equalsIgnoreCase("OK")) {

            //This extracts the xml response included in the server response
            String serviceXMLResponse = getServiceResponse.get(4);

            //This stores the NODES of the XML RESPONSE
            ArrayList<String> xmlNodes = xp.ParserSendMessage(serviceXMLResponse);

            if (xmlNodes.get(4).equalsIgnoreCase("00")) {

                out.println("<script>alert ('Message Sent! Response in earnest...'); window.location = 'homepage.jsp'</script>");

            } else {
                out.println("<script>alert ('Sending failed!  Please Try Again!'); window.location = 'message.jsp'</script>");

            }

        }

    } else if (pageName.equalsIgnoreCase("message.jsp")) {
        System.out.println("User:" + userName);
        String oid = userName;
        String rec = request.getParameter("recipient");
        String sub = request.getParameter("subject");
        String mb = request.getParameter("messageBody");

        int status = rq.InsertMessage(oid, rec, sub, mb);

        if (status == 1) {
            out.println("<script>alert ('message sent'); window.location = 'homepage.jsp'</script>");
        } else {
            out.println("<script>alert ('message sent'); window.location = 'message.jsp'</script>");
        }

    } else if (pageName.equalsIgnoreCase("propertyRegister.jsp")) {
        System.out.println("User:" + userName);
        String lid = userName;
        String pt = request.getParameter("ptyp");
        String nu = request.getParameter("nunit");
        String street = request.getParameter("stre");
        String city = request.getParameter("ct");
        String sta = request.getParameter("st");
        String des = request.getParameter("prode");
        String pr = request.getParameter("pric");

        int status = rq.InsertProperty(lid, pt, nu, street, city, sta, des, pr, filepath);
        System.out.println("status=" + status);
        if (status >= 1) {

            out.println("<script>alert ('Successful! Property Submitted'); window.location = 'viewProperties.jsp'</script>");
        } else {
            out.println("<script>alert ('Submitted'); window.location = 'homepage.jsp'</script>");
        }

    } else if (pageName.equalsIgnoreCase("payment.jsp")) {
        System.out.println("User:" + userName);
        String tid = userName;
        String in = request.getParameter("inum");
        String pin = request.getParameter("pid");
        String fn = request.getParameter("fname");
        String pn = request.getParameter("pnum");
        String amt = request.getParameter("amount");
        String lm = request.getParameter("lmail");
        String checkStatus = rq.checkInvoiceStatus(in);
        if (checkStatus.equalsIgnoreCase("CONFIRMED")) {
            int status = rq.InsertPayments(tid, in, pin, fn, pn, amt, lm);
            if (status == 1) {
                out.println("<script>alert ('Payment Confirmed! Your Rent is being Set up'); window.location = 'homepage.jsp'</script>");
                rq.insertTenancy(fn, tid, pn, amt, pin, lm);

            } else {
                out.println("<script>alert ('There was an Issue! Please retry'); window.location = 'payment.jsp'</script>");
            }

        } else if (checkStatus.equalsIgnoreCase("NOT FOUND")) {
            out.println("<script>alert ('Ooops! Invoice details not found'); window.location = 'payment.jsp'</script>");

        } else {
            out.println("<script>alert ('Confirmation Pending! Please try later'); window.location = 'payment.jsp'</script>");
        }

    } else if (pageName.equalsIgnoreCase("refer.jsp")) {
        System.out.println("User:" + userName);
        String tid = userName;
        String rmail = request.getParameter("refemail");
        String rnum = request.getParameter("refnum");
        String date = request.getParameter("date");

        int status = rq.InsertReferral(tid, rmail, rnum, date);
        System.out.println("status=" + status);
        if (status == 1) {

            out.println("<script>alert ('Successful! referral Submitted'); window.location = 'referral.jsp'</script>");
        } else {
            out.println("<script>alert ('There was an Issue! Please retry'); window.location = 'referral.jsp'</script>");
        }

    }

    /*else if (pageName.equalsIgnoreCase("pay.jsp")){
     System.out.println("User:"+userName);
        String tid=userName;
        String pur=request.getParameter("purpose");
        String lname=request.getParameter("lname");
        String anum=request.getParameter("num");
        String bank=request.getParameter("bank");
        String amt=request.getParameter("amount");
        String date=request.getParameter("date");
     
        

   int status=rq.InsertPayment(tid, pur,lname, anum, bank, amt, date);
    System.out.println("status="+status);
   if(status==1){
       
   out.println("<script>alert ('Successful! Paid'); window.location = 'payment.jsp'</script>");
   }else{
   out.println("<script>alert ('There was an Issue! Please retry'); window.location = 'payment.jsp'</script>");
   }
    
    }*/

%>