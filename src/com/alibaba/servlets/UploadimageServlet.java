package com.alibaba.servlets;

import java.util.Date;
import java.util.List;
import java.util.Random;
import java.io.IOException;
import java.io.File;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.alibaba.service.BLLUsers;



/**
 * Servlet implementation class UploadimageServlet
 */
@WebServlet("/UploadimageServlet")
public class UploadimageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadimageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 生产html页面 显示图片
		// 返回请求的服务器地址		
//		response.setCharacterEncoding("UTF-8");
//		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		response.getWriter().write("<html>");
//		
//		response.getWriter().write("<head>");
//		response.getWriter().write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
//		response.getWriter().write("<title>");
//		response.getWriter().write("</title>");		
//		response.getWriter().write("</head>");
//		
//		response.getWriter().write("<body>");
//		response.getWriter().write("<h1>王八蛋老板黄鹤和小姨子跑了，现价统统9.8</h1>");
//		response.getWriter().write("<img src='UploadImages/"+request.getSession().getAttribute("avatar")+"' style=border:/>");
//        response.getWriter().write("</body>");
//				
//		response.getWriter().write("</html>");
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//客户端提交数据 ，服务器 保存图片
		 request.setCharacterEncoding("UTF-8");
		 //判断服务器收到的请求包含文件数据
	      if(ServletFileUpload.isMultipartContent(request)){
	            try {
	            	// 解析原始HTTP请求  提取所有的上传文件项目
	                List<FileItem> multiparts = new ServletFileUpload(
	                                         new DiskFileItemFactory()).parseRequest(request);
	              //遍历集合，逐个判断，保存文件
	                for(FileItem item : multiparts){
	                    if(!item.isFormField()){
	                    	//获取文件名
	                        String name = new File(item.getName()).getName();
	                        //取得整个web应用的物理根路径（注意不是jsp项目根路径）
	                        String root = request.getSession().getServletContext().getRealPath("/");
	                        //设置上传文件的保存路径（绝对路径/物理路径）
	                        String savePath = root + "UploadImages/";
	                        //生产新文件名
	                        Date date=new Date(System.currentTimeMillis());
	                        //获取文件扩展名
	                        String extensionName=name.substring(name.lastIndexOf('.'));
	                        //拼接路径
	                        String newFileName=date.getTime()+new Random(10000).nextLong()+extensionName;
	                        String path = savePath +newFileName;
	                        System.out.println(path);
	                        System.out.println(newFileName);
	                        //写入文件流到磁盘上
	                        item.write( new File(path));
	                        //保存图片到会话里
	                        request.getSession().setAttribute("avatar", newFileName);
	                        //当用户登录后调用三层 更新数据库头像图片信息imageURL跟新到数据中
	                        if(request.getSession().getAttribute("userid")!=null){
	                        int userid=Integer.parseInt( request.getSession().getAttribute("userid").toString());
	                        BLLUsers bll=new BLLUsers();
	                        bll.UpdateImage(userid, newFileName);
	                        }
	                    }
	                }
	           
	               //File uploaded successfully
	               request.setAttribute("message", "上传成功");
	            } catch (Exception ex) {
	               request.setAttribute("message", "上传失败" + ex);
	            }          
	         
	        }else{
	            request.setAttribute("message",
	                                 "只处理上传请求");
	        }

		//调用doget拼接了HTML界面
		//doGet(request, response);
	      //跳转自己
	      response.sendRedirect(request.getContextPath()+"/UploadImage.jsp");
	}

}
