package com.prj.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.prj.companys.vo.CompanyVo;
import com.prj.companys.vo.PostWriteVo;
import com.prj.main.vo.ImagefileVo;
import com.prj.main.vo.PortfolioVo;
import com.prj.users.vo.ResumeVo;
import com.prj.users.vo.UserVo;

public interface PdsService {

	void serWrite(HashMap<String, Object> map, MultipartFile[] uploadfiles);

	void setimageWrite(HashMap<String, Object> map, MultipartFile uploadimage);

	ImagefileVo getImagefile(int image_idx);

	List<PortfolioVo> getPortfolio(int resume_idx);

	PortfolioVo getportfolifo(int portfolio_idx);

	void updateimage(MultipartFile uploadimage, int image_idx, HashMap<String, Object> map, ResumeVo resumeVo);

	void deleteportfolivo(int portfolio_idx);

	void deletefile(int resume_idx);

	void deleteImage(int image_idx);

	void updateimagePost(MultipartFile uploadimage, int image_idx, HashMap<String, Object> map, PostWriteVo vo);

	void updateimageUser(MultipartFile uploadimage, int image_idx, HashMap<String, Object> map, UserVo uservo);

	void updateimageCompany(MultipartFile uploadimage, int image_idx, HashMap<String, Object> map, CompanyVo companyVo);







}
