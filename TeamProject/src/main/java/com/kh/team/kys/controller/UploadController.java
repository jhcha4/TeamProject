package com.kh.team.kys.controller;

import java.io.File;
import java.io.FileInputStream;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.kh.team.Util.FileuploadUtil;

@RestController
@RequestMapping("/upload")
public class UploadController {
	
	@Resource
	private String uploadPath;
	
	@RequestMapping(value = "/imgFile", method = RequestMethod.POST)
	public String imgFile(MultipartFile file) throws Exception{
		System.out.println("file:"+file);
		
		String oFileName = file.getOriginalFilename();
		
		long size  = file.getSize();
		
		System.out.println("oFileName: "+oFileName);
		System.out.println("size : " +size);
		System.out.println("uploadpath : " + uploadPath );
		
		String dirPath = FileuploadUtil.uploadFile(uploadPath, oFileName, file.getBytes());
		
		System.out.println("dirPath:" + dirPath);
		
		return dirPath.replace("\\", "/");
	}
	@RequestMapping(value = "/displayFile",method = RequestMethod.GET)
	public byte[] displayFile(String fileName) throws Exception{
		System.out.println("Controller/fileName:"+fileName);
		String filePath = uploadPath + File.separator+fileName;
		String rFilePath = filePath.replace("/", "\\");
		FileInputStream fis = new FileInputStream(rFilePath);
		byte[] bytes = IOUtils.toByteArray(fis);
		fis.close();
		return bytes;
	}
	@RequestMapping(value = "/deleteFile", method =RequestMethod.GET)
	public String deleteFile(String filename) throws Exception{
		String front = filename.substring(0,filename.indexOf("/")+1);
		String rear = filename.substring(filename.lastIndexOf("/")+1);
		String smServerPath = uploadPath + File.separator +front +"sm_"+ rear;
		
		String serverPath = uploadPath + File.separator + filename;
		File f1 = new File(serverPath);
		File f2 = new File(smServerPath);
		f1.delete();
		f2.delete();
		return "success";
	}
}
