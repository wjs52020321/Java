package com.alibaba.struts2;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Random;


import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.alibaba.service.BLLUsers;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Action动作，控制器，处理请求的
 * 
 * @author wjs
 */
public class UploadImageStruts extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private File image;
	private String imageFileName;
	private String imageContentType;

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String upload(){
		if(image!=null){
			System.out.println("原名："+ imageFileName);
			// 取得整个web应用的物理根路径（注意不是jsp项目根路径）
			String realpath = ServletActionContext.getServletContext().getRealPath("/UploadImages");
 			System.out.println("真实路径: " + realpath);

			// 生成新文件名
			Date date = new Date(System.currentTimeMillis());
			// 获取文件扩展名
			String extensionName = imageFileName.substring(imageFileName.lastIndexOf('.'));
			// 拼接路径
			System.out.println("获取时间："+ date.getTime());
			String newFileName = Long.toString(date.getTime()) + Long.toString(new Random(100000).nextLong()) + extensionName;
			System.out.println("新名："+ newFileName);
			String path = realpath + "\\" +  newFileName;
			System.out.println("新路径："+path);
			System.out.println(newFileName);
			//保存文件流到磁盘路径
			File savefile = new File(new File(realpath), newFileName);			 
			if (savefile.getParentFile().exists()) {
				try {
					savefile.getParentFile().mkdirs();
					FileUtils.copyFile(image, savefile);
				} catch (IOException e) {
					e.printStackTrace();
				}
				ActionContext.getContext().put("message", "文件上传成功");
			}
			//保存图片到会话里
			Map<String, Object> session = ServletActionContext.getContext().getSession();
			session.put("avatar", newFileName);
			
			if(session.get("userid")!=null){
				int userid=Integer.parseInt(session.get("userid").toString());
				BLLUsers bll = new BLLUsers();
			    bll.UpdateImage(userid, newFileName);
			}
		}
		return "success";
	}
}


