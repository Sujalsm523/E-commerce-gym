/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-02-11 02:54:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addEmp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/91740/Desktop/new%20spring%20-%20Copy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/10_crud/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153365282000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1308849601000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fremove_0026_005fvar_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fremove_0026_005fvar_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fremove_0026_005fvar_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Add Members</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" crossorigin=\"anonymous\">\r\n");
      out.write("    <style>\r\n");
      out.write("        body {\r\n");
      out.write("            background-color: #f8f9fa; /* Light background color */\r\n");
      out.write("            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth transition */\r\n");
      out.write("        }\r\n");
      out.write("        .navbar {\r\n");
      out.write("            background-color: #007bff; /* Light mode navbar color */\r\n");
      out.write("        }\r\n");
      out.write("        .navbar a {\r\n");
      out.write("            color: white; /* Light mode navbar text color */\r\n");
      out.write("        }\r\n");
      out.write("        .card-header {\r\n");
      out.write("            background-color: #007bff; /* Blue color for header */\r\n");
      out.write("            color: white; /* White text */\r\n");
      out.write("        }\r\n");
      out.write("        .success-message {\r\n");
      out.write("            color: green; /* Success message color */\r\n");
      out.write("        }\r\n");
      out.write("        .error-message {\r\n");
      out.write("            color: red; /* Error message color */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Dark Mode Styles */\r\n");
      out.write("        .dark-mode {\r\n");
      out.write("            background-color: black; /* Dark mode background */\r\n");
      out.write("            color: white; /* White text for body */\r\n");
      out.write("        }\r\n");
      out.write("        .dark-mode .navbar {\r\n");
      out.write("            background-color: #000000; /* Black navbar for dark mode */\r\n");
      out.write("        }\r\n");
      out.write("        .dark-mode .navbar a {\r\n");
      out.write("            color: white; /* White text for navbar links in dark mode */\r\n");
      out.write("        }\r\n");
      out.write("        .dark-mode .card-header {\r\n");
      out.write("            background-color: #000000; /* Black header for dark mode */\r\n");
      out.write("            color: white; /* White text for header in dark mode */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode table {\r\n");
      out.write("            background-color: black; /* Black table background in dark mode */\r\n");
      out.write("            color: white; /* White text in table for dark mode */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode th, \r\n");
      out.write("        .dark-mode td {\r\n");
      out.write("            border-color: #444444; /* Darker border for table cells in dark mode */\r\n");
      out.write("            color: white; /* Ensure all text in table cells is white */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode thead th {\r\n");
      out.write("            background-color: #333333; /* Darker header background for thead in dark mode */\r\n");
      out.write("            color: white; /* White text for header cells in dark mode */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        label {\r\n");
      out.write("            color: black; /* Black text for labels in both modes */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode label {\r\n");
      out.write("            color: black; /* Ensure labels are black even in dark mode */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-control {\r\n");
      out.write("            background-color: white; /* Light input fields in light mode */\r\n");
      out.write("            color: black; /* Black text in input fields in light mode */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode .form-control {\r\n");
      out.write("            background-color: #495057; /* Dark input fields */\r\n");
      out.write("            color: black; /* Black text in input fields in dark mode */\r\n");
      out.write("            border: 1px solid #444444; /* Dark border for input fields */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .dark-mode .form-control::placeholder {\r\n");
      out.write("            color: #cccccc; /* Placeholder text color in dark mode */\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"checkDarkMode()\">\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark\">\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\">Gym Management System</a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link active\" aria-current=\"page\" href=\"home\">Home</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">Add Members</a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <button id=\"darkModeToggle\" class=\"btn btn-outline-light\">Dark Mode</button> <!-- Dark mode toggle button -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-6 offset-md-3\">\r\n");
      out.write("            <div class=\"card\">\r\n");
      out.write("                <div class=\"card-header text-center\"> \r\n");
      out.write("                    <h2>Add Employee</h2>\r\n");
      out.write("                    ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                    <form action=\"createEmp\" method=\"post\">\r\n");
      out.write("                        <div class=\"mb-3\">\r\n");
      out.write("                            <label for=\"fullname\">Enter Full Name</label>\r\n");
      out.write("                            <input type=\"text\" id=\"fullname\" name=\"fullname\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"mb-3\">\r\n");
      out.write("                            <label for=\"address\">Enter Address</label>\r\n");
      out.write("                            <input type=\"text\" id=\"address\" name=\"address\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"mb-3\">\r\n");
      out.write("                            <label for=\"email\">Enter Email</label>\r\n");
      out.write("                            <input type=\"text\" id=\"email\" name=\"email\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"mb-3\">\r\n");
      out.write("                            <label for =\"password\">Enter Password</label>\r\n");
      out.write("                            <input type =\"password\"id =\"password\"name =\" password\"class =\"form-control\"> \r\n");
      out.write("                        </div> \r\n");
      out.write("                        \r\n");
      out.write("                        <button type =\"submit\"class =\"btn btn-primary\">Submit</button> \r\n");
      out.write("                    </form> \r\n");
      out.write("                </div> \r\n");
      out.write("            </div> \r\n");
      out.write("        </div> \r\n");
      out.write("    </div> \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Include Bootstrap JS and Popper.js -->\r\n");
      out.write("<script src=https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js crossorigin=anonymous></script> \r\n");
      out.write("<script src=https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js crossorigin=anonymous></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("// Check local storage for dark mode preference\r\n");
      out.write("function checkDarkMode() {\r\n");
      out.write("    if (localStorage.getItem('darkMode') === 'enabled') {\r\n");
      out.write("        document.body.classList.add('dark-mode');\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("// JavaScript for dark mode toggle\r\n");
      out.write("document.getElementById('darkModeToggle').onclick = function() {\r\n");
      out.write("    document.body.classList.toggle('dark-mode');\r\n");
      out.write("    \r\n");
      out.write("    // Save the current state to local storage\r\n");
      out.write("    if (document.body.classList.contains('dark-mode')) {\r\n");
      out.write("        localStorage.setItem('darkMode', 'enabled');\r\n");
      out.write("    } else {\r\n");
      out.write("        localStorage.setItem('darkMode', 'disabled');\r\n");
      out.write("    }\r\n");
      out.write("};\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body> \r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /WEB-INF/views/addEmp.jsp(117,20) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty msg }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                        <h5>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
        out.write("</h5>\r\n");
        out.write("                        ");
        if (_jspx_meth_c_005fremove_005f0(_jspx_th_c_005fif_005f0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                    ");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fremove_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fif_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:remove
    org.apache.taglibs.standard.tag.common.core.RemoveTag _jspx_th_c_005fremove_005f0 = (org.apache.taglibs.standard.tag.common.core.RemoveTag) _005fjspx_005ftagPool_005fc_005fremove_0026_005fvar_005fnobody.get(org.apache.taglibs.standard.tag.common.core.RemoveTag.class);
    _jspx_th_c_005fremove_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fremove_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fif_005f0);
    // /WEB-INF/views/addEmp.jsp(119,24) name = var type = java.lang.String reqTime = false required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fremove_005f0.setVar("msg");
    int _jspx_eval_c_005fremove_005f0 = _jspx_th_c_005fremove_005f0.doStartTag();
    if (_jspx_th_c_005fremove_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fremove_0026_005fvar_005fnobody.reuse(_jspx_th_c_005fremove_005f0);
    return false;
  }
}
