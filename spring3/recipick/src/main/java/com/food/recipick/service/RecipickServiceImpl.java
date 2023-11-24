package com.food.recipick.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.food.recipick.dao.RecipickDAO;
import com.food.recipick.dto.RecipeDTO;

@Service
public class RecipickServiceImpl implements RecipickService{

	@Autowired
	RecipickDAO recipickdao;

	@Override
	public void recipePage1(MultipartHttpServletRequest files, RecipeDTO dto) {
		String uploadFolder = "C:\\Users\\User\\Documents\\FOOD\\spring3\\recipick\\src\\main\\webapp\\resources\\assets\\imgs";
		String oName = "";
		List<String> list = new ArrayList();
		String[] file_name = {"mainpic2","detail_pic2"};
		for(int j = 0 ;j<file_name.length ;j++) {
			List<MultipartFile> l = files.getFiles(file_name[j]);
			for(int i = 0 ;i<l.size() ;i++) {
				MultipartFile file = l.get(i);
			UUID uuid = UUID.randomUUID();
			oName = uuid.toString();
			String name = file.getName();
			Long size = file.getSize();
			System.out.println(oName);
			System.out.println(name);
			System.out.println(size);
			
			File saveFile = new File(uploadFolder + "\\"+oName+".jpg");//
				try {
					file.transferTo(saveFile);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(file_name[j].equals("mainpic2")) {
					dto.setMainpic(oName);
					System.out.println("mainpic2 : "+oName);
					dto.setViewer("0");
				} else {
					list.add(oName);
					System.out.println("detail_pic2 : "+oName);
				}
			}
			
			if(!file_name[j].equals("mainpic2"))
				System.out.println("detail_pic2 : "+ list.get(0));
				dto.setDetail_pic(list);
		}
		recipickdao.recipePage1(dto);
	}

	@Override
	public List bulletin(RecipeDTO dto) {
		
		return recipickdao.bulletin(dto);
	}

	@Override
	public void recipe_img_download(List list, HttpServletResponse response) {


	}

	@Override
	public RecipeDTO sel_rec(RecipeDTO recipeid) {
		RecipeDTO reci_sel = recipickdao.sel_rec(recipeid);
		System.out.println("ttttttt : "+reci_sel);
		return reci_sel;
	}
}
