package org.apache.jsp.WEB_002dINF.views.location;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mapping_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta name=\"viewport\" content=\"initial-scale=1.0, user-scalable=no\">\r\n");
      out.write("<title>Reverse Geocoding</title>\r\n");
      out.write("<style>\r\n");
      out.write("html, body, #map-canvas {\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("\tmargin: 0px;\r\n");
      out.write("\tpadding: 0px\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#panel {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 5px;\r\n");
      out.write("\tleft: 50%;\r\n");
      out.write("\tmargin-left: -180px;\r\n");
      out.write("\tz-index: 5;\r\n");
      out.write("\tbackground-color: #fff;\r\n");
      out.write("\tpadding: 5px;\r\n");
      out.write("\tborder: 1px solid #999;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\tvar geocoder;\r\n");
      out.write("\tvar map;\r\n");
      out.write("\tvar infowindow = new google.maps.InfoWindow();\r\n");
      out.write("\tvar marker;\r\n");
      out.write("\tfunction initialize() {\r\n");
      out.write("\t\tgeocoder = new google.maps.Geocoder();\r\n");
      out.write("\t\tvar latlng = new google.maps.LatLng(40.730885, -73.997383);\r\n");
      out.write("\t\tvar mapOptions = {\r\n");
      out.write("\t\t\tzoom : 8,\r\n");
      out.write("\t\t\tcenter : latlng,\r\n");
      out.write("\t\t\tmapTypeId : 'roadmap'\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tmap = new google.maps.Map(document.getElementById('map-canvas'),\r\n");
      out.write("\t\t\t\tmapOptions);\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction codeLatLng() {\r\n");
      out.write("\t\tvar input = document.getElementById('latlng').value;\r\n");
      out.write("\t\tvar latlngStr = input.split(',', 2);\r\n");
      out.write("\t\tvar lat = parseFloat(latlngStr[0]);\r\n");
      out.write("\t\tvar lng = parseFloat(latlngStr[1]);\r\n");
      out.write("\t\tvar latlng = new google.maps.LatLng(lat, lng);\r\n");
      out.write("\t\tgeocoder.geocode({\r\n");
      out.write("\t\t\t'latLng' : latlng\r\n");
      out.write("\t\t}, function(results, status) {\r\n");
      out.write("\t\t\tif (status == google.maps.GeocoderStatus.OK) {\r\n");
      out.write("\t\t\t\tif (results[1]) {\r\n");
      out.write("\t\t\t\t\tmap.setZoom(11);\r\n");
      out.write("\t\t\t\t\tmarker = new google.maps.Marker({\r\n");
      out.write("\t\t\t\t\t\tposition : latlng,\r\n");
      out.write("\t\t\t\t\t\tmap : map\r\n");
      out.write("\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\tinfowindow.setContent(results[1].formatted_address);\r\n");
      out.write("\t\t\t\t\tinfowindow.open(map, marker);\r\n");
      out.write("\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\talert('No results found');\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t} else {\r\n");
      out.write("\t\t\t\talert('Geocoder failed due to: ' + status);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t});\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tgoogle.maps.event.addDomListener(window, 'load', initialize);\r\n");
      out.write("</script>\r\n");
      out.write("<style>\r\n");
      out.write("#panel {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 5px;\r\n");
      out.write("\tleft: 50%;\r\n");
      out.write("\tmargin-left: -180px;\r\n");
      out.write("\twidth: 350px;\r\n");
      out.write("\tz-index: 5;\r\n");
      out.write("\tbackground-color: #fff;\r\n");
      out.write("\tpadding: 5px;\r\n");
      out.write("\tborder: 1px solid #999;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#latlng {\r\n");
      out.write("\twidth: 225px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"panel\">\r\n");
      out.write("\t\t<input id=\"latlng\" type=\"text\" value=\"40.714224,-73.961452\"> <input\r\n");
      out.write("\t\t\ttype=\"button\" value=\"Reverse Geocode\" onclick=\"codeLatLng()\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"map-canvas\"></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
