/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-02-11 02:54:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Admin Login</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("        :root {\r\n");
      out.write("            --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);\r\n");
      out.write("            --secondary-gradient: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);\r\n");
      out.write("            --background-gradient: linear-gradient(-45deg, #3494E6, #2C3E50, #4CA1AF, #1A2980);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        body {\r\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\r\n");
      out.write("            background: var(--background-gradient);\r\n");
      out.write("            background-size: 400% 400%;\r\n");
      out.write("            animation: gradientBG 15s ease infinite;\r\n");
      out.write("            min-height: 100vh;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("            justify-content: center;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            overflow-x: hidden;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        @keyframes gradientBG {\r\n");
      out.write("            0% { background-position: 0% 50%; }\r\n");
      out.write("            50% { background-position: 100% 50%; }\r\n");
      out.write("            100% { background-position: 0% 50%; }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .login-container {\r\n");
      out.write("            background: rgba(255, 255, 255, 0.1);\r\n");
      out.write("            backdrop-filter: blur(15px);\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);\r\n");
      out.write("            width: 500px;\r\n");
      out.write("            padding: 40px;\r\n");
      out.write("            animation: fadeInScale 0.8s ease-out;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        @keyframes fadeInScale {\r\n");
      out.write("            0% {\r\n");
      out.write("                opacity: 0;\r\n");
      out.write("                transform: scale(0.8);\r\n");
      out.write("            }\r\n");
      out.write("            100% {\r\n");
      out.write("                opacity: 1;\r\n");
      out.write("                transform: scale(1);\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-control {\r\n");
      out.write("            background: rgba(255,255,255,0.2);\r\n");
      out.write("            border: none;\r\n");
      out.write("            color: white;\r\n");
      out.write("            transition: all 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-control:focus {\r\n");
      out.write("            background: rgba(255,255,255,0.3);\r\n");
      out.write("            box-shadow: 0 0 10px rgba(0,0,0,0.2);\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-control::placeholder {\r\n");
      out.write("            color: rgba(255,255,255,0.7);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-login {\r\n");
      out.write("            background: var(--primary-gradient);\r\n");
      out.write("            border: none;\r\n");
      out.write("            transition: all 0.3s ease;\r\n");
      out.write("            position: relative;\r\n");
      out.write("            overflow: hidden;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-login:hover {\r\n");
      out.write("            transform: scale(1.05);\r\n");
      out.write("            box-shadow: 0 10px 20px rgba(0,0,0,0.3);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-login::before {\r\n");
      out.write("            content: '';\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            top: 0;\r\n");
      out.write("            left: -100%;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            height: 100%;\r\n");
      out.write("            background: linear-gradient(120deg, transparent, rgba(255,255,255,0.3), transparent);\r\n");
      out.write("            transition: all 0.5s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-login:hover::before {\r\n");
      out.write("            left: 100%;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-label {\r\n");
      out.write("            color: white;\r\n");
      out.write("            font-weight: 500;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .card-header {\r\n");
      out.write("            background: rgba(0,0,0,0.2);\r\n");
      out.write("            color: white;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .card-header h2 {\r\n");
      out.write("            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-group {\r\n");
      out.write("            animation: fadeIn 0.5s ease forwards;\r\n");
      out.write("            opacity: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-group:nth-child(1) { animation-delay: 0.1s; }\r\n");
      out.write("        .form-group:nth-child(2) { animation-delay: 0.2s; }\r\n");
      out.write("\r\n");
      out.write("        @keyframes fadeIn {\r\n");
      out.write("            from { opacity: 0; transform: translateY(20px); }\r\n");
      out.write("            to { opacity: 1; transform: translateY(0); }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-back {\r\n");
      out.write("            background: var(--secondary-gradient);\r\n");
      out.write("            color: white;\r\n");
      out.write("            margin-top: 15px;\r\n");
      out.write("            transition: all 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-back:hover {\r\n");
      out.write("            transform: scale(1.05);\r\n");
      out.write("            box-shadow: 0 5px 15px rgba(0,0,0,0.2);\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"login-container\">\r\n");
      out.write("        <div class=\"card-header\">\r\n");
      out.write("            <h2>Admin Login</h2>\r\n");
      out.write("            ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <form action=\"adminlogin\" method=\"post\">\r\n");
      out.write("            <div class=\"form-group mb-3\">\r\n");
      out.write("                <label class=\"form-label\">Username</label>\r\n");
      out.write("                <input type=\"text\" name=\"username\" class=\"form-control\" placeholder=\"Enter admin username\" required>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group mb-4\">\r\n");
      out.write("                <label class=\"form-label\">Password</label>\r\n");
      out.write("                <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Enter admin password\" required>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-login w-100 text-white\">\r\n");
      out.write("                Login\r\n");
      out.write("            </button>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("            <a href=\"start\" class=\"btn btn-back\">\r\n");
      out.write("                <i class=\"bi bi-arrow-left me-2\"></i>Back\r\n");
      out.write("            </a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
    // /WEB-INF/views/admin.jsp(148,12) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty msg}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                <div class=\"alert alert-danger mt-3\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
        out.write("</div>\r\n");
        out.write("            ");
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
}
