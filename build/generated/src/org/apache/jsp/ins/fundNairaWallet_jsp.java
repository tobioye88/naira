package org.apache.jsp.ins;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class fundNairaWallet_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "ins/header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<section class=\"py-5\"></section>\n");
      out.write("<section>\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-md-6 col-lg-8 d-flex align-items-center\">\n");
      out.write("\t\t\t\t<h2 class=\"display-1 w-100 text-secondary\"></h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-6 col-lg-4\">\n");
      out.write("\t\t\t\t<div class=\"\">\n");
      out.write("\t\t\t\t\t<div class=\"bg-white text-center p-3 mb-2\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"text-secondary m-0\">Transfer Funds</h2>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"bg-white p-3\">\n");
      out.write("\t\t\t\t\t\t<form action=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label>What Bank?</label>\n");
      out.write("\t\t\t\t\t\t\t\t<select class=\"form-control\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>Select Bank</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>GTB Bank</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>Access Bank</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>Diamond Bank</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>Zenit Bank</option>\n");
      out.write("\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label>To Whom?</label>\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"accountNumber\">\n");
      out.write("\t\t\t\t\t\t\t\t<small class=\"text-muted\">10 digit Account Number</small>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label>How Much?</label>\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"number\" name=\"amount\">\n");
      out.write("\t\t\t\t\t\t\t\t<small class=\"text-muted\">e.g 10,000.00, 10000.00, 10000</small>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<label>Who gets the receipt?</label>\n");
      out.write("\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"tel\" name=\"receipt\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"form-group\">\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary btn-block\">Next</button>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</section>\n");
      out.write("\n");
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
