package com.prj.companys.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.prj.companys.mapper.CompanyMapper;
import com.prj.companys.vo.ComApplyVo;
import com.prj.companys.vo.CompanyVo;
import com.prj.companys.vo.PostSkillVo;
import com.prj.companys.vo.PostWriteVo;
import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.ClarificationVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.ImagefileVo;
import com.prj.main.vo.PostCountVo;
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.PostVo;
import com.prj.main.vo.SkillVo;
import com.prj.service.PdsService;
import com.prj.users.vo.EduVo;
import com.prj.users.vo.ScoreVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("login")
@RequestMapping("/Company/Mypage")
public class MypageController {
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@Autowired
	private MainMapper mainMapper;
	
	@Autowired
	private PdsService pdsService;
	
	@RequestMapping("/Home/View")
	public ModelAndView homeview(HttpServletRequest request, HttpServletResponse responese) {
		
		HttpSession session = request.getSession();
		CompanyVo login = (CompanyVo) session.getAttribute("login");
		
		int  Company_idx = login.getCompany_idx();
		int  countP= companyMapper.countP(Company_idx);
		int  countB= companyMapper.countB(Company_idx);
		int  countA= companyMapper.countA(Company_idx);
		CompanyVo vo = companyMapper.getCompany(login);		
		ScoreVo score = companyMapper.getReviewScore(Company_idx);
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("companyVo" , vo);
		mv.addObject("CountP", countP);
		mv.addObject("CountB", countB);
		mv.addObject("CountA", countA);
		mv.addObject("score", score.getScore());
		mv.setViewName("/company/mypage/home/view");
		return mv;
		
		
	}
	
	@RequestMapping("/Home/UpdateForm")
	public ModelAndView homeupdateForm(CompanyVo companyVo) {

	CompanyVo vo = companyMapper.getCompany(companyVo);
	System.out.println(vo);
	
	int company_idx = companyVo.getCompany_idx();
	ModelAndView mv = new ModelAndView();
	mv.addObject("companyVo", vo);
	mv.setViewName("company/mypage/home/update");
	return mv;
	}
	
	@RequestMapping("/Home/Update")
	public ModelAndView homeupdate(CompanyVo companyVo) {
		
	companyMapper.updateCompany(companyVo);
	System.out.println(companyVo);
	
	int company_idx = companyVo.getCompany_idx();
	ModelAndView mv = new ModelAndView();
	mv.setViewName("redirect:/Company/Mypage/Home/View");
	return mv;
	}
	
	@RequestMapping("/Post/List")

	public ModelAndView postList(PostVo postVo, ComApplyVo comApplyVo) {
	
	List <PostVo> postList = companyMapper.getPostList(postVo);
	
	ModelAndView mv = new ModelAndView();
	mv.addObject("comApplyVo", comApplyVo);
	mv.addObject("postList", postList);
	mv.setViewName("company/mypage/post/list");
	return mv;
	}
	
	@RequestMapping("/Post/View")
	public ModelAndView postView(@RequestParam (value = "post_idx") String postIdx) {
	PostListVo vo = mainMapper.getPost(postIdx);
	ScoreVo score = companyMapper.getReviewScore(vo.getCompany_idx());

    //공고수 , 인사담당자톡
	PostCountVo pcvo = mainMapper.getPostCount(postIdx);
	ClarificationVo cfvo = mainMapper.getClarification(Integer.parseInt(postIdx));
	//이미지 정보
	ImagefileVo ifvo = pdsService.getImagefile(vo.getImage_idx());
	String imagePath = "";
	if(ifvo==null) {
		 imagePath = "0";
	}else {
		imagePath = ifvo.getImage_path().replace("\\", "/");
	}
		
	ModelAndView mv = new ModelAndView();
	mv.addObject("vo",vo);
	mv.addObject("score",score.getScore());
	mv.addObject("pcount",pcvo);
	mv.addObject("cfvo",cfvo);
	mv.addObject("imagePath",imagePath);
	mv.setViewName("company/mypage/post/view");
	return mv;
	}
	
	@RequestMapping("/Post/WriteForm")
	public ModelAndView postWriteForm(CompanyVo	companyVo, PostWriteVo postWriteVo) {
		
	CompanyVo vo = companyMapper.getCompany(companyVo);
	
	ModelAndView mv = new ModelAndView();
	List<DutyVo> dutyList = companyMapper.getDuty();
	List<EmpVo> empList = companyMapper.getEmp();
	List<CareerVo> careerList = companyMapper.getCareer();
	List<EduVo> eduList = companyMapper.getEdu();
	List<CityVo> cityList = companyMapper.getCity();
	List<SkillVo> skillList = companyMapper.getSkill();
		
	mv.addObject("dutyList" , dutyList);
	mv.addObject("empList" , empList);
	mv.addObject("careerList", careerList);
	mv.addObject("eduList", eduList);
	mv.addObject("cityList", cityList);
	mv.addObject("companyVo", vo);
	mv.addObject("skillList", skillList);
	mv.setViewName("company/mypage/post/write");
	return mv;
	}
	
	
	@RequestMapping("/Post/Write")
	public ModelAndView postWrite(PostWriteVo postWriteVo,
			                      @RequestParam(value="upimage",required = false) MultipartFile uploadimage,
			                      ClarificationVo carificationVo) {
	
	HashMap<String, Object> map = new HashMap<>();	
	String type ="POST";
	map.put("type", type );
	pdsService.setimageWrite(map, uploadimage);
	companyMapper.insertPost(postWriteVo);
	mainMapper.inserCarification(carificationVo);
	if (postWriteVo.getSkill_name() != null) {
        companyMapper.insertPostSkill(postWriteVo);
    }	

	
	ModelAndView mv = new ModelAndView();
	mv.setViewName("redirect:/Company/Mypage/Post/List?company_idx=" + postWriteVo.getCompany_idx());
	return mv;
	}
	
	
	
	@RequestMapping("/Post/UpdateForm")
	public ModelAndView postUpdateForm(@RequestParam (value = "post_idx") String postIdx) {
	
	PostListVo vo = mainMapper.getPost(postIdx);
	ScoreVo score = companyMapper.getReviewScore(vo.getCompany_idx());

	//이미지 정보
	ImagefileVo ifvo = pdsService.getImagefile(vo.getImage_idx());
	String imagePath = "";
	if(ifvo==null) {
		 imagePath = "0";
	}else {
		imagePath = ifvo.getImage_path().replace("\\", "/");
	}	
	//인담자 톡
	ClarificationVo cvo = mainMapper.getClarification(Integer.parseInt(postIdx));
	
	ModelAndView mv = new ModelAndView();
	List<DutyVo> dutyList = companyMapper.getDuty();
	List<EmpVo> empList = companyMapper.getEmp();
	List<CareerVo> careerList = companyMapper.getCareer();
	List<EduVo> eduList = companyMapper.getEdu();
	List<CityVo> cityList = companyMapper.getCity();
	List<SkillVo> skillList = companyMapper.getSkill();
	
	
	// 날짜 input date 형식에 변환하는 코딩
	String dateString = vo.getPost_ddate();
	String[] parts = dateString.split("년|월|일");
	String formattedDate = String.format("%04d-%02d-%02d", 
	    Integer.parseInt(parts[0].trim()), 
	    Integer.parseInt(parts[1].trim()), 
	    Integer.parseInt(parts[2].trim()));
	
	
	mv.addObject("dutyList" , dutyList);
	mv.addObject("empList" , empList);
	mv.addObject("careerList", careerList);
	mv.addObject("eduList", eduList);
	mv.addObject("cityList", cityList);
	
	mv.addObject("vo", vo);
	mv.addObject("post_ddate", formattedDate);
	mv.addObject("score", score.getScore());
	mv.addObject("imagePath",imagePath);
	mv.addObject("cvo",cvo);
	mv.addObject("ifvo",ifvo);
	mv.addObject("skillList", skillList);
	mv.setViewName("company/mypage/post/update");
	return mv;
	
	}
	
	@RequestMapping("/Post/Update")
	public ModelAndView postUpdate(PostWriteVo vo,
			                      @RequestParam(value="upimage",required = false) MultipartFile uploadimage,
			                      ClarificationVo clarificationVo) {
		
	HashMap<String, Object> map = new HashMap<>();		
    //이미지 업데이트	
	if(uploadimage != null && !uploadimage.isEmpty()) {	
		String type ="POST";
        map.put("type", type );	
		pdsService.updateimagePost(uploadimage,vo.getImage_idx(),map,vo);
	 }else {
		//이력서 정보 업데이트
	  companyMapper.updatePost(vo);		 		 
	 }
	
	//인담자 톡 업데이트	
	ClarificationVo cfvo = mainMapper.getClarification(vo.getPost_idx());
	if(clarificationVo.getCloth() != null) {
	if(cfvo != null)	{
	mainMapper.updateClarification(clarificationVo);	
		
	}else {
		String age = clarificationVo.getAge();
		String cloth = clarificationVo.getCloth();
		String mc = clarificationVo.getMeeting_count();
		String mm = clarificationVo.getMeeting_num();
		String prek = clarificationVo.getPrek();
		String pect = clarificationVo.getPrek_etc();
		String pto = clarificationVo.getPto();
		String setc = clarificationVo.getSituation_etc();
		
		
	mainMapper.insertCarPost(cloth,age,setc,prek,pto,pect,mm,mc,vo.getPost_idx());
	  }
	}else {
		if(cfvo != null) {
			mainMapper.deleteClarification(vo.getPost_idx());
		}
	}
	
	//기술 정보 업데이트
	PostSkillVo svo = companyMapper.getSkillIDX(vo.getPost_idx());	
	// 기술이 기존에 없으면 - insert  있으면 -update 기존에 있지만 지웠다면 - delete 진행
	if(vo.getSkill_name() != null ) {
	  if(svo != null) {
		  companyMapper.updatePostSkill(vo);
	  }else if(svo == null) {		
		  companyMapper.insertSkill(vo);	
	    }
	}else {				
		companyMapper.deleteSkill(vo.getPost_idx());
		
	}
	
	ModelAndView mv = new ModelAndView();
	mv.setViewName("redirect:/Company/Mypage/Post/List?company_idx=" + vo.getCompany_idx());
	return mv;
	
	
	}
	
	@RequestMapping("/Post/Delete")
	public ModelAndView postDelete(@RequestParam("appli_idx") int appli_idx, PostWriteVo postWriteVo) {

	int image_idx= companyMapper.getpostC(postWriteVo.getPost_idx());
	
	companyMapper.deleteApply(appli_idx);
	companyMapper.deletePostSkill(postWriteVo);
	mainMapper.deleteClarification(postWriteVo.getPost_idx());
	mainMapper.deletePostClick(postWriteVo.getPost_idx());	
	companyMapper.deletePost(postWriteVo);
	pdsService.deleteImage(image_idx);	

	System.out.println(postWriteVo);
	ModelAndView mv = new ModelAndView();
	mv.setViewName("redirect:/Company/Mypage/Post/List?company_idx=" + postWriteVo.getCompany_idx());
	return mv;
		
	}
	

	@RequestMapping("/Home/Delete")
	public ModelAndView delete(CompanyVo companyvo, HttpSession session) {
		companyMapper.deleteCompany(companyvo);
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		
		return mv;
		
	}

}
