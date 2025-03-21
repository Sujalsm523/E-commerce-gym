/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.98
 * Generated at: 2025-02-03 11:39:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class flex_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>Flexibility Training Program</title>\r\n");
      out.write("    \r\n");
      out.write("    <!-- Performance Optimization -->\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preload\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" as=\"style\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- Google Fonts -->\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    \r\n");
      out.write("    <!-- Font Awesome -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\r\n");
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
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-container {\r\n");
      out.write("            max-width: 1200px;\r\n");
      out.write("            margin: 40px auto;\r\n");
      out.write("            padding: 30px;\r\n");
      out.write("            background: white;\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            box-shadow: 0 20px 50px rgba(0,0,0,0.1);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-header {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            margin-bottom: 30px;\r\n");
      out.write("            position: relative;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-header h1 {\r\n");
      out.write("            color: var(--accent-color);\r\n");
      out.write("            font-size: 2.5rem;\r\n");
      out.write("            font-weight: 600;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-days {\r\n");
      out.write("            display: grid;\r\n");
      out.write("            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));\r\n");
      out.write("            gap: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-day {\r\n");
      out.write("            background: #f9f9f9;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            box-shadow: 0 10px 30px rgba(0,0,0,0.1);\r\n");
      out.write("            transition: transform 0.3s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-day:hover {\r\n");
      out.write("            transform: translateY(-10px);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .workout-day h2 {\r\n");
      out.write("            color: var(--secondary-color);\r\n");
      out.write("            margin-bottom: 15px;\r\n");
      out.write("            border-bottom: 2px solid var(--accent-color);\r\n");
      out.write("            padding-bottom: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .exercise-list {\r\n");
      out.write("            list-style-type: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .exercise-list li {\r\n");
      out.write("            display: flex;\r\n");
      out.write("            justify-content: space-between;\r\n");
      out.write("            margin-bottom: 10px;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            background: white;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("            box-shadow: 0 4px 6px rgba(0,0,0,0.05);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .exercise-name {\r\n");
      out.write("            font-weight: 500;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .exercise-details {\r\n");
      out.write("            color: #6c757d;\r\n");
      out.write("            font-size: 0.8rem;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .guidelines {\r\n");
      out.write("            margin-top: 30px;\r\n");
      out.write("            background: #f1f8ff;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .guidelines h3 {\r\n");
      out.write("            color: var(--secondary-color);\r\n");
      out.write("            margin-bottom: 15px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        @media (max-width: 768px) {\r\n");
      out.write("            .workout-days {\r\n");
      out.write("                grid-template-columns: 1fr;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"workout-container\">\r\n");
      out.write("        <div class=\"workout-header\">\r\n");
      out.write("            <h1>Flexibility Training Program</h1>\r\n");
      out.write("            <p>6-Day Mobility and Stretching Routine</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"workout-days\">\r\n");
      out.write("            <!-- Day 1: Full Body Flexibility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 1: Full Body Mobility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Dynamic Warm-Up</span>\r\n");
      out.write("                        <span class=\"exercise-details\">15 min</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Standing Forward Fold</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Lunging Hip Flexor Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec each side</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Shoulder Mobility Drill</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 15 reps</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Day 2: Lower Body Flexibility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 2: Lower Body Flexibility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Hamstring Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 45 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Pigeon Pose</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec each side</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Calf Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec each leg</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Deep Squat Hold</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 45 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Day 3: Upper Body Mobility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 3: Upper Body Mobility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Chest Opener Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Triceps Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec each arm</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Shoulder Dislocates</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 12 reps</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Wall Angels</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 10 reps</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Day 4: Spine and Core Flexibility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 4: Spine and Core Mobility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Cat-Cow Stretch</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 10 reps</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Cobra Pose</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Seated Spinal Twist</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec each side</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Child's Pose</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 45 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Day 5: Dynamic Flexibility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 5: Dynamic Flexibility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Leg Swings</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 15 each leg</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Arm Circles</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 15 each direction</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Walking Lunges</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 20 steps</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Torso Rotations</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 15 each side</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Day 6: Advanced Flexibility -->\r\n");
      out.write("            <div class=\"workout-day\">\r\n");
      out.write("                <h2>Day 6: Advanced Mobility</h2>\r\n");
      out.write("                <ul class=\"exercise-list\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Advanced Yoga Flow</span>\r\n");
      out.write("                        <span class=\"exercise-details\">45 min</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Split Progression</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Bridge Pose</span>\r\n");
      out.write("                        <span class=\"exercise-details\">3 x 30 sec</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <span class=\"exercise-name\">Advanced Stretching</span>\r\n");
      out.write("                        <span class=\"exercise-details\">20 min</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"guidelines\">\r\n");
      out.write("            <h3>Flexibility Training Guidelines</h3>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li>Always warm up before stretching</li>\r\n");
      out.write("                <li>Never stretch to the point of pain</li>\r\n");
      out.write("                <li>Breathe deeply and consistently</li>\r\n");
      out.write("                <li>Hold stretches for 20-30 seconds</li>\r\n");
      out.write("                <li>Stay hydrated</li>\r\n");
      out.write("                <li>Be consistent with your practice</li>\r\n");
      out.write("                <li>Listen to your body</li>\r\n");
      out.write("                <li>Progress gradually</li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
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
