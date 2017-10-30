package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"errorPage.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ins/header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<section style=\"background-image: url(assets/imgs/2.jpg); background-repeat: no-repeat; background-size: cover; background-position: center;\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("    \t<div class=\"py-5\"></div>\n");
      out.write("    \t<div class=\"row\">\n");
      out.write("    \t\t<div class=\"col-12 d-flex\">\n");
      out.write("    \t\t\t<div class=\"bg-dark py-3 px-2 hidden-md-down\" style=\"width: 300px; min-width:300px; height: 550px; border-radius: 20px;margin-bottom: -120px\">\n");
      out.write("    \t\t\t\t<div class=\"bg-light p-1 w-25 mx-auto\" style=\"border-radius: 5px; margin-bottom: 5px;\"></div>\n");
      out.write("                    <div class=\"bg-white w-100\" style=\"border-radius: 20px; height: calc(100% - 20px); background-image: url(assets/imgs/naira_mobile.png); background-size: 100%\"></div>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t\t<div class=\"w-auto pl-lg-5 p-lg-3 align-self-center\">\n");
      out.write("\t    \t\t\t<h2 class=\"display-3 text-white text-shadow font2\">Use <span class=\"text-secondary-light\">naira.com</span><br>enjoy unbeatable services</h2>\n");
      out.write("\t    \t\t\t<div class=\"border border-primary mb-3 w-25\"></div>\n");
      out.write("\t    \t\t\t<a href=\"payBills.jsp\" class=\"mb-2 btn btn-lg btn-outline-light\">Pay Bills</a>\n");
      out.write("\t    \t\t\t<a href=\"airtimePurchase.jsp\" class=\"mb-2 btn btn-lg btn-outline-light\">Purchase Airtime</a>\n");
      out.write("\t    \t\t\t<a href=\"fundTransfer.jsp\" class=\"mb-2 btn btn-lg btn-secondary\">Transfer Funds</a>\n");
      out.write("\t    \t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t</div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- <section>\n");
      out.write("\t<div class=\"container py-5\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-md-8 d-flex \">\n");
      out.write("\t\t\t\t<div class=\"text-right align-self-center\">\n");
      out.write("\t\t\t\t\t<h3 class=\"display-3 text-muted\">Student Loan</h3>\n");
      out.write("\t\t\t\t\t<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro officia a numquam eaque libero eveniet esse est aliquam neque, sapiente obcaecati sunt, tempora id quibusdam illo, doloribus nulla maiores iure.</p>\n");
      out.write("\t\t\t\t\t<button class=\"btn btn-primary\">Student Loan</button>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-4\">\n");
      out.write("\t\t\t\t<div class=\"border border-primary p-3\">\n");
      out.write("\t\t\t\t\t<img class=\"img-fluid\" src=\"assets/imgs/backpack.png\" alt=\"\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</section> -->\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ins/footer.jsp", out, false);
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
