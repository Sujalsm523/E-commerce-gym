/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-02-03 11:39:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class diet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Personalized Nutrition Strategy</title>\r\n");
      out.write("    \r\n");
      out.write("    <!-- Performance Optimization -->\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preload\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" as=\"style\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- Google Fonts -->\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- Font Awesome for Icons -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- Animate.css -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css\">\r\n");
      out.write("    \r\n");
      out.write("    <style>\r\n");
      out.write("        :root {\r\n");
      out.write("            --primary-color: #2c3e50;\r\n");
      out.write("            --secondary-color: #3498db;\r\n");
      out.write("            --accent-color: #2ecc71;\r\n");
      out.write("            --background-color: #ecf0f1;\r\n");
      out.write("            --text-color: #34495e;\r\n");
      out.write("            --transition-speed: 0.3s;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        * {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            box-sizing: border-box;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        body {\r\n");
      out.write("            font-family: 'Poppins', sans-serif;\r\n");
      out.write("            background: linear-gradient(135deg, var(--background-color) 0%, #ffffff 100%);\r\n");
      out.write("            color: var(--text-color);\r\n");
      out.write("            line-height: 1.6;\r\n");
      out.write("            min-height: 100vh;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            flex-direction: column;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nutrition-container {\r\n");
      out.write("            max-width: 1200px;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            margin: 50px auto;\r\n");
      out.write("            padding: 40px;\r\n");
      out.write("            background: white;\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            box-shadow: 0 20px 50px rgba(0,0,0,0.1);\r\n");
      out.write("            perspective: 1000px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nutrition-header {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            margin-bottom: 40px;\r\n");
      out.write("            position: relative;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nutrition-header h1 {\r\n");
      out.write("            color: var(--accent-color);\r\n");
      out.write("            font-size: 2.5rem;\r\n");
      out.write("            font-weight: 600;\r\n");
      out.write("            position: relative;\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nutrition-header h1::after {\r\n");
      out.write("            content: '';\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            bottom: -10px;\r\n");
      out.write("            left: 0;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            height: 4px;\r\n");
      out.write("            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));\r\n");
      out.write("            transform: scaleX(0);\r\n");
      out.write("            transition: transform 0.5s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .nutrition-header:hover h1::after {\r\n");
      out.write("            transform: scaleX(1);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-back {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 0;\r\n");
      out.write("            top: 50%;\r\n");
      out.write("            transform: translateY(-50%);\r\n");
      out.write("            background: rgba(0,0,0,0.05);\r\n");
      out.write("            color: var(--text-color);\r\n");
      out.write("            padding: 10px 15px;\r\n");
      out.write("            border-radius: 8px;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            transition: all 0.3s ease;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("            gap: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-back:hover {\r\n");
      out.write("            background: rgba(0,0,0,0.1);\r\n");
      out.write("            transform: translateY(-50%) translateX(-5px);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-strategy-grid {\r\n");
      out.write("            display: grid;\r\n");
      out.write("            grid-template-columns: repeat(3, 1fr);\r\n");
      out.write("            gap: 30px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card {\r\n");
      out.write("            background: white;\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            padding: 30px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            transition: all var(--transition-speed) ease;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("            border: 2px solid transparent;\r\n");
      out.write("            position: relative;\r\n");
      out.write("            overflow: hidden;\r\n");
      out.write("            transform-style: preserve-3d;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card::before {\r\n");
      out.write("            content: '';\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            top: 0;\r\n");
      out.write("            left: -100%;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            height: 4px;\r\n");
      out.write("            background: linear-gradient(to right, transparent, var(--accent-color));\r\n");
      out.write("            transition: all 0.5s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card:hover::before {\r\n");
      out.write("            left: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card:hover {\r\n");
      out.write("            transform: translateY(-15px) rotateX(5deg);\r\n");
      out.write("            border-color: var(--accent-color);\r\n");
      out.write("            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.2);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card-icon {\r\n");
      out.write("            font-size: 60px;\r\n");
      out.write("            color: var(--secondary-color);\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("            transition: transform 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card:hover .diet-card-icon {\r\n");
      out.write("            transform: scale(1.1) rotate(360deg);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card-title {\r\n");
      out.write("            font-size: 20px;\r\n");
      out.write("            font-weight: 600;\r\n");
      out.write("            margin-bottom: 15px;\r\n");
      out.write("            color: var(--text-color);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .diet-card-description {\r\n");
      out.write("            color: #6c757d;\r\n");
      out.write("            font-size: 14px;\r\n");
      out.write("            line-height: 1.6;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        @media (max-width: 768px) {\r\n");
      out.write("            .diet-strategy-grid {\r\n");
      out.write("                grid-template-columns: 1fr;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- Rest of the existing code remains unchanged -->\r\n");
      out.write("     <div class=\"nutrition-container animate__animated animate__fadeIn\">\r\n");
      out.write("        <div class=\"nutrition-header\">\r\n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/myProfile\" class=\"btn-back\">\r\n");
      out.write("    <i class=\"fas fa-arrow-left\"></i> Back to Profile\r\n");
      out.write("</a>\r\n");
      out.write("            \r\n");
      out.write("            <h1>Personalized Nutrition Plan</h1>\r\n");
      out.write("            <p>Select your ideal diet strategy</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"diet-strategy-grid\">\r\n");
      out.write("            <!-- Weight Loss Card -->\r\n");
      out.write("            <div class=\"diet-card\" data-type=\"weightLoss\">\r\n");
      out.write("                <div class=\"diet-card-icon\">\r\n");
      out.write("                    <i class=\"fas fa-weight\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"diet-card-title\">Weight Loss</div>\r\n");
      out.write("                <div class=\"diet-card-description\">\r\n");
      out.write("                    Optimize metabolism, create calorie deficit, and achieve sustainable fat loss through strategic nutrition and lifestyle modifications.\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Muscle Gain Card -->\r\n");
      out.write("            <div class=\"diet-card\" data-type=\"muscleGain\">\r\n");
      out.write("                <div class=\"diet-card-icon\">\r\n");
      out.write("                    <i class=\"fas fa-dumbbell\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"diet-card-title\">Muscle Gain</div>\r\n");
      out.write("                <div class=\"diet-card-description\">\r\n");
      out.write("                    Strategic nutrition for muscle hypertrophy, strength development, and optimal protein synthesis with targeted meal planning.\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Balanced Diet Card -->\r\n");
      out.write("            <div class=\"diet-card\" data-type=\"balancedDiet\">\r\n");
      out.write("                <div class=\"diet-card-icon\">\r\n");
      out.write("                    <i class=\"fas fa-balance-scale\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"diet-card-title\">Balanced Diet</div>\r\n");
      out.write("                <div class=\"diet-card-description\">\r\n");
      out.write("                    Comprehensive nutrition plan focusing on whole foods, balanced macronutrients, and overall wellness for sustained health.\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("   <script>\r\n");
      out.write("    document.addEventListener('DOMContentLoaded', () => {\r\n");
      out.write("        const dietCards = document.querySelectorAll('.diet-card');\r\n");
      out.write("\r\n");
      out.write("        dietCards.forEach(card => {\r\n");
      out.write("            card.addEventListener('click', () => {\r\n");
      out.write("                const dietType = card.getAttribute('data-type');\r\n");
      out.write("                const form = document.createElement('form');\r\n");
      out.write("                form.method = 'POST';\r\n");
      out.write("                \r\n");
      out.write("                switch(dietType) {\r\n");
      out.write("                    case 'weightLoss':\r\n");
      out.write("                        form.action = 'dietplan';\r\n");
      out.write("                        break;\r\n");
      out.write("                    case 'muscleGain':\r\n");
      out.write("                        form.action = 'Amuscle';\r\n");
      out.write("                        break;\r\n");
      out.write("                    case 'balancedDiet':\r\n");
      out.write("                        form.action = 'Mybalancediet';\r\n");
      out.write("                        break;\r\n");
      out.write("                    default:\r\n");
      out.write("                        form.action = 'default.jsp';\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                const input = document.createElement('input');\r\n");
      out.write("                input.type = 'hidden';\r\n");
      out.write("                input.name = 'dietType';\r\n");
      out.write("                input.value = dietType;\r\n");
      out.write("                \r\n");
      out.write("                form.appendChild(input);\r\n");
      out.write("                document.body.appendChild(form);\r\n");
      out.write("                form.submit();\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("</script>\r\n");
      out.write("   \r\n");
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
}
