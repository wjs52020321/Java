package com.alibaba.tools;

public class HtmlPagingHelper {
	  public static String CreatePagingHtml(int index, int pageCount)
      {
          StringBuffer sb = new StringBuffer();
          sb.append("<div style=\"text-align:center;\">");
          sb.append("总共 <font color = \"red\"> " + pageCount + " </font> 页");

          sb.append("<div style = \"text-align:center;\">");
          sb.append("<ul class=\"pagination\">");
          sb.append(" <li><a title=\"首页\" href=\"?index=1\">首页</a></li>");
          if (pageCount > 5 && index > 3 && index < pageCount - 1)
          {
              sb.append(" <li><a title=\"" + (index - 2) + "\" href=\"?index=" + (index - 2) + "\">" + (index - 2) + "</a></li>");
              sb.append(" <li><a title=\"" + (index - 1) + "\" href=\"?index=" + (index - 1) + "\">" + (index - 1) + "</a></li>");
              sb.append(" <li class=\"active\"><a title=\"" + index + "\" href=\"?index=" + index + "\" >" + index + "</a></li>");
              sb.append(" <li><a title=\"" + (index + 1) + "\" href=\"?index=" + (index + 1) + "\">" + (index + 1) + "</a></li>");
              sb.append(" <li><a title=\"" + (index + 2) + "\" href=\"?index=" + (index + 2) + "\">" + (index + 2) + "</a></li>");
          }
          if (pageCount > 5 && index == pageCount - 1)
          {
              sb.append(" <li><a title=\"" + (index - 3) + "\" href=\"?index=" + (index - 3) + "\">" + (index - 3) + "</a></li>");
              sb.append(" <li><a title=\"" + (index - 2) + "\" href=\"?index=" + (index - 2) + "\">" + (index - 2) + "</a></li>");
              sb.append(" <li ><a title=\"" + (index - 1) + "\" href=\"?index=" + (index - 1) + "\">" + (index - 1) + "</a></li>");
              sb.append(" <li class=\"active\"><a title=\"" + index + "\" href=\"?index=" + index + "\">" + index + "</a></li>");
              sb.append(" <li><a title=\"" + (index + 1) + "\" href=\"?index=" + (index + 1) + "\">" + (index + 1) + "</a></li>");
          }
          if (pageCount > 5 && index == pageCount)
          {
              sb.append(" <li><a title=\"" + (index - 4) + "\" href=\"?index=" + (index - 4) + "\">" + (index - 4) + "</a></li>");
              sb.append(" <li><a title=\"" + (index - 3) + "\" href=\"?index=" + (index - 3) + "\">" + (index - 3) + "</a></li>");
              sb.append(" <li><a title=\"" + (index - 2) + "\" href=\"?index=" + (index - 2) + "\">" + (index - 2) + "</a></li>");
              sb.append(" <li><a title=\"" + (index - 1) + "\" href=\"?index=" + (index - 1) + "\">" + (index - 1) + "</a></li>");
              sb.append(" <li class=\"active\"><a title=\"" + index + "\" href=\"?index=" + index + "\">" + index + "</a></li>");
          }
          if (pageCount > 5 && index <= 3)
          {
              for (int j = 1; j <= 5; j++)
              {
                  if (j == index)
                  {
                      sb.append(" <li class=\"active\"><a title=\"" + index + "\" href=\"?index=" + index + "\">" + index + "</a></li>");
                  }
                  else
                  {
                      sb.append(" <li><a title=\"" + j + "\" href=\"?index=" + j + "\" >" + j + "</a></li>");
                  }
              }
          }
          if (pageCount <= 5)//如果总页数小于5，根本不显示"上一页"与"下一页"
          {
              for (int j = 1; j <= pageCount; j++)
              {
                  if (j == index)
                  {
                      sb.append(" <li class=\"active\"><a title=\"" + index + "\" href=\"?index=" + index + "\" >" + index + "</a></li>");

                  }
                  else
                  {
                      //sb.append(" <li><a href=\"?index=1\">1</a></li>");
                      sb.append(" <li><a title=\"" + j + "\" href=\"?index=" + j + "\" >" + j + "</a></li>");
                  }
              }
          }
          sb.append(" <li><a title=\"尾页\" href=\"?index=" + pageCount + "\">尾页</a></li>");
          sb.append("</ul>");
          sb.append("</div>");
          sb.append("</div>");
          return sb.toString();
      }
  }

