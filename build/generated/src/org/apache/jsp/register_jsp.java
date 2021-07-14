package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Team[06]-ROMS</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-reboot.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/newstyle.css\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\n");
      out.write("                       \n");
      out.write("                            <form class=\"login100-form validate-form\" action=\"register\" method=\"post\">\n");
      out.write("                                   <span class=\"login100-form-title2 \">\n");
      out.write("\t\t\t\t\t\tBurger Station\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("                                   \n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title p-b-34\">\n");
      out.write("\t\t\t\t\t\tAccount Register\n");
      out.write("                                        </span>\n");
      out.write("                                    <div class=\"col-sm-10\" style=\"padding-top:30px\">\n");
      out.write("       \n");
      out.write("                                        <label for=\"ex2\">Username</label>\n");
      out.write("                                        <input class=\"form-control\" style=\"border-color: maroon\" id=\"username\" \n");
      out.write("                                               type=\"text\" placeholder=\"Enter Username\" name=\"name\" required>\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"col-sm-10\">\n");
      out.write("       \n");
      out.write("                                        <label for=\"ex2\">Password</label>\n");
      out.write("                                        <input class=\"form-control\" style=\"border-color: maroon\" id=\"pass\" \n");
      out.write("                                               placeholder=\"Enter Password\" type=\"password\" name=\"password\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"col-sm-10\">\n");
      out.write("       \n");
      out.write("                                        <label for=\"ex2\">Contact Number</label>\n");
      out.write("                                        <input class=\"form-control\" style=\"border-color: maroon;\" id=\"hp\" \n");
      out.write("                                               placeholder=\"Enter Your Contact Number\" type=\"text\" name=\"hp\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"col-sm-10\">\n");
      out.write("       \n");
      out.write("                                        <label for=\"ex2\">Email</label>\n");
      out.write("                                        <input class=\"form-control\" style=\"border-color: maroon\" id=\"email\" \n");
      out.write("                                               placeholder=\"Enter Your Email\" type=\"email\" name=\"email\" required>\n");
      out.write("                                    </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\" style=\"padding-top: 30px\">\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\" type=\"submit\" value=\"submit\">\n");
      out.write("\t\t\t\t\t\t\tSign Up\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"center\" style=\"padding-left:80px\">\n");
      out.write("\t\t\t\t\t\t<a href=\"login.jsp\" class=\"txt3\">\n");
      out.write("\t\t\t\t\t\t\t<br>|| Back to Login ||\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                    \n");
      out.write("\t\t\t\t</form>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"login100-more\" style=\"background-image: url('img/burger.jpg')\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
