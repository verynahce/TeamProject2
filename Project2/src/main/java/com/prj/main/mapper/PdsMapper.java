package com.prj.main.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.main.vo.ImagefileVo;
import com.prj.main.vo.PortfolioVo;

@Mapper
public interface PdsMapper {

	void setFileWriter(HashMap<String, Object> map);

	void setimageWriter(ImagefileVo idPhoto);

	ImagefileVo getImagefile(int image_idx);

	List<PortfolioVo> getPortfolio(int resume_idx);

	PortfolioVo getPortfolioinfo(int portfolio_idx);

	void deleteImagefile(int image_idx);

	void deleteportfolivo(int portfolio_idx);

	void deleteportresume(int resume_idx);


	
}
