/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-06-24 11:47:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class showPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/plugins/font-awesome/css/font-awesome.css\">\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/css/jquery.dataTables.css\">\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/css/bootstrap-responsive.css\">\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/css/bootstrap.css\">\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/css/buttons.dataTables.min.css\">\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/css/editor.dataTables.min.css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/jquery.dataTables.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/dataTables.buttons.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/dataTables.editor.min.js\"></script>\r\n");
      out.write("<script type='text/javascript' src='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/views/admin/js/myDataTable.js'></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".right{\r\n");
      out.write("\tfloat:right;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class='row-fluid'>\r\n");
      out.write("          <div class='span12 box bordered-box orange-border' style='margin-bottom:0;'>\r\n");
      out.write("              <div class='box-content box-no-padding'>\r\n");
      out.write("                  <div class='responsive-table'>\r\n");
      out.write("                      <div class='scrollable-area'>\r\n");
      out.write("                      \t<form class=\"form-inline form-horizontal\">\r\n");
      out.write("                              <div class=\"form-group text-center\" style=\"padding-top:20px\">\r\n");
      out.write("                                  <label for=\"search\">关键字</label>\r\n");
      out.write("                                  <input type=\"text\" class=\"form-control\" id=\"search\" name=\"search\">\r\n");
      out.write("                                  <button type=\"button\" class=\"btn btn-primary\" id=\"searchBtn\">查询</button>\r\n");
      out.write("                              </div>   \r\n");
      out.write("                          </form>\r\n");
      out.write("                          <table id=\"myDatatable\" class='table table-bordered table-striped' style='margin-bottom:0;'>\r\n");
      out.write("                              <thead>\r\n");
      out.write("                                  <tr>\r\n");
      out.write("                                      <th><input type=\"checkbox\" id=\"checkAll\" name=\"checkAll\" class='group-checkable' /></th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          ID\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          用户名\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          用户头像\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          联系电话\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          邮箱\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          创建时间\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          状态\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                      <th>\r\n");
      out.write("                                          操作\r\n");
      out.write("                                      </th>\r\n");
      out.write("                                  </tr>\r\n");
      out.write("                              </thead>\r\n");
      out.write("                              <tbody>\r\n");
      out.write("                                       \r\n");
      out.write("                              </tbody>\r\n");
      out.write("                          </table>\r\n");
      out.write("                      </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("              </div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"modal fade\" id=\"editorWindow\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("                <h4 class=\"modal-title\" id=\"myModalLabel\">编辑用户</h4>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-body\">\r\n");
      out.write("            \t<div class=\"form-horizontal\">\r\n");
      out.write("            \t\t<div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"uid\" class=\"col-sm-2 control-label\">ID：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"uid\" type=\"text\" readonly=\"readonly\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t                <br>\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"uname\" class=\"col-sm-2 control-label\">用户名：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"uname\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\t\t\t\t<br>          \t\t\t\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"uicon\" class=\"col-sm-2 control-label\">用户头像：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                  \t<input class=\"form-control\" id=\"upload\" type=\"file\" accept=\"image/gif,image/jpeg,image/jpg,image/png,image/svg\" style=\"display:none\">\r\n");
      out.write("\t                  \t<img src=\"#\" id=\"uicon\" width=\"100px\" height=\"80px\" style=\"cursor:pointer\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t                <br>\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"telephone\" class=\"col-sm-2 control-label\">联系电话：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"telephone\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"email\" class=\"col-sm-2 control-label\">邮箱：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"email\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t                <br>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"create_time\" class=\"col-sm-2 control-label\">创建时间：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"create_time\" type=\"text\" readonly=\"readonly\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t                <br>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"enable\" class=\"col-sm-2 control-label\">状态：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"enable\" type=\"text\" readonly=\"readonly\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-footer\">\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">取消</button>\r\n");
      out.write("                <button id=\"update\" type=\"button\" class=\"btn btn-primary\">更新</button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"modal fade\" id=\"addWindow\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <div class=\"modal-header\">\r\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("                <h4 class=\"modal-title\" id=\"myModalLabel\">添加用户</h4>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-body\">\r\n");
      out.write("            \t<div class=\"form-horizontal\">\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"uname\" class=\"col-sm-2 control-label\">用户名：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"uname\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\t\t\t\t<br>          \t\t\t\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"uicon\" class=\"col-sm-2 control-label\">用户头像：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                  \t<input class=\"form-control\" id=\"upload\" type=\"file\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t                <br>\r\n");
      out.write("\t                <div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"telephone\" class=\"col-sm-2 control-label\">联系电话：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"telephone\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t                  <label for=\"email\" class=\"col-sm-2 control-label\">邮箱：</label>\r\n");
      out.write("\t                  <div class=\"col-sm-10\">\r\n");
      out.write("\t                    <input class=\"form-control\" id=\"email\" type=\"text\">\r\n");
      out.write("\t                  </div>\r\n");
      out.write("\t                </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-footer\">\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">取消</button>\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-primary\">添加</button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
