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
 * Action�����������������������
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
			System.out.println("ԭ����"+ imageFileName);
			// ȡ������webӦ�õ������·����ע�ⲻ��jsp��Ŀ��·����
			String realpath = ServletActionContext.getServletContext().getRealPath("/UploadImages");
 			System.out.println("��ʵ·��: " + realpath);

			// �������ļ���
			Date date = new Date(System.currentTimeMillis());
			// ��ȡ�ļ���չ��
			String extensionName = imageFileName.substring(imageFileName.lastIndexOf('.'));
			// ƴ��·��
			System.out.println("��ȡʱ�䣺"+ date.getTime());
			String newFileName = Long.toString(date.getTime()) + Long.toString(new Random(100000).nextLong()) + extensionName;
			System.out.println("������"+ newFileName);
			String path = realpath + "\\" +  newFileName;
			System.out.println("��·����"+path);
			System.out.println(newFileName);
			//�����ļ���������·��
			File savefile = new File(new File(realpath), newFileName);			 
			if (savefile.getParentFile().exists()) {
				try {
					savefile.getParentFile().mkdirs();
					FileUtils.copyFile(image, savefile);
				} catch (IOException e) {
					e.printStackTrace();
				}
				ActionContext.getContext().put("message", "�ļ��ϴ��ɹ�");
			}
			//����ͼƬ���Ự��
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


