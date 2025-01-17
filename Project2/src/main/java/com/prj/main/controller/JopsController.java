package com.prj.main.controller;

import java.util.HashMap;   
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.prj.main.mapper.MainMapper;
import com.prj.main.vo.CareerVo;
import com.prj.main.vo.CityVo;
import com.prj.main.vo.ClarificationVo;
import com.prj.main.vo.DutyVo;
import com.prj.main.vo.EmpVo;
import com.prj.main.vo.ImagefileVo;
import com.prj.main.vo.PostClickListVo;
import com.prj.main.vo.PostCountVo;
import com.prj.main.vo.PostListVo;
import com.prj.main.vo.ResumeListVo;
import com.prj.main.vo.SkillVo;
import com.prj.service.ClickService;
import com.prj.service.PdsService;
import com.prj.users.vo.ApplicationVo;
import com.prj.users.vo.UserVo;
import com.prj.companys.vo.CompanyVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("Main")
public class JopsController {
   
   @Autowired
   private MainMapper mainMapper;
   @Autowired
   private ClickService postClickService;
   @Autowired
   private PdsService pdsService;
   /* Jobs 관련 */
   /*================================================================================*/
   @RequestMapping("/Jobs/List")
   @ResponseBody
   public ModelAndView jobs() {
      List<CityVo>    cityList    = mainMapper.getCityList();
      List<DutyVo>    dutyList    = mainMapper.getDutyList();
      List<CareerVo>    careerList    = mainMapper.getCareerList();
      List<EmpVo>    empList    = mainMapper.getEmpList();
      List<SkillVo>    skillList    = mainMapper.getSkillList();
      //List<CompanyVo> companyList = mainMapper.getCompanyNameList();
   
      
      List<PostListVo> postList = mainMapper.getPostList();
      ModelAndView mv = new ModelAndView();
      mv.addObject("postList",   postList);
      mv.addObject("cityList",   cityList);
      mv.addObject("dutyList",   dutyList);
      mv.addObject("careerList",   careerList);
      mv.addObject("empList",      empList);
      mv.addObject("skillList",   skillList);
      //mv.addObject("companyList",   companyList);
      mv.setViewName("main/jobs/list");
      return mv;
   }
   
   @RequestMapping("/JobsFilter")
   public Map<String, Object> filterJobs(
           @RequestParam(required = false, value="city_id")    String city_id,
           @RequestParam(required = false, value="duty_id")    String duty_id,
           @RequestParam(required = false, value="career_id")    String career_id,
           @RequestParam(required = false, value="emp_id")    String emp_id,
           @RequestParam(required = false, value="skill_id")    String skill_id,
           @RequestParam(required = false, value="company_name")    String company_name) {
         if (company_name == null) {
              company_name = ""; // 또는 적절한 기본값
          }
       
       List<PostListVo> jopsFilter = mainMapper.getFilteredPosts(city_id, duty_id, career_id, emp_id, skill_id, company_name);
       
       
       Map<String, Object> response = new HashMap<>();
       response.put("postList", jopsFilter);
       System.out.println(jopsFilter);
       response.put("message", "데이터를 성공적으로 가져왔습니다.");
       return response;
   }
   
   @RequestMapping("/Jobs/View")
   public ModelAndView view(HttpServletRequest request,@RequestParam(required = true, value="post_idx")  String post_idx) {
      mainMapper.updatePostHit(post_idx);
      PostListVo vo = mainMapper.getPost(post_idx);
      Double    totPoint = (Double) mainMapper.getTotPoint(post_idx);
      HttpSession session = request.getSession();
      Object userObject = session.getAttribute("login");
      
      /*추가 지원자-인담자톡-이미지*/
      PostCountVo pcvo = mainMapper.getPostCount(post_idx);
      ClarificationVo cfvo = mainMapper.getClarification(Integer.parseInt(post_idx));
      //이미지 정보
      ImagefileVo ifvo = pdsService.getImagefile(vo.getImage_idx());
      String imagePath = "";
      if(ifvo==null) {
          imagePath = "0";
      }else {
         imagePath = ifvo.getImage_path().replace("\\", "/");
      }      
      
      /* 여기 까지*/
      
      ModelAndView mv = new ModelAndView();
      if (userObject instanceof UserVo) {
         UserVo userVo = (UserVo) session.getAttribute("login");         
         /*추가 클릭-산업군 추천공고*/
         List<PostClickListVo> list =   mainMapper.getPostClickList(userVo.getUser_idx(),post_idx,vo.getDuty_id());
         postClickService.insertPostClick(userVo.getUser_idx(),Integer.parseInt(post_idx));
         /* 여기 까지*/         
         mv.addObject("clickList",list);
             if(userVo != null ) {   
            
            List<ResumeListVo> resumeVo = mainMapper.getUserResumeIdx(userVo.getUser_idx());
            String ub_idx = mainMapper.getBookU(userVo.getUser_idx(),vo.getCompany_idx());
            mv.addObject("cb_idx",ub_idx);
            mv.addObject("resumeVo",resumeVo);
            mv.addObject("user_idx",userVo.getUser_idx());
            mv.addObject("userObject",userObject);
         }   
      }
      mv.addObject("vo",vo);
      mv.addObject("totPoint",totPoint);
      mv.addObject("pcount",pcvo);
      mv.addObject("cfvo",cfvo);
      mv.addObject("imagePath",imagePath);
      mv.setViewName("main/jobs/view");
      return mv;
   }
   
   @RequestMapping("/Jobs/Apply")
   public ModelAndView apply(ApplicationVo vo) {
      System.out.println("vo" + vo);
      mainMapper.insertApply(vo);
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/Main/Jobs/View?post_idx="+vo.getPost_idx());
      return mv;
   }
   @RequestMapping(value="Jobs/BookMark/On")
   @ResponseBody
   public String bookmarkon(@RequestParam("company_idx") int company_idx,@RequestParam("user_idx") int user_idx) {
      

      mainMapper.insertBookU(company_idx,user_idx);

      return "";   
   }
   
   @RequestMapping(value="Jobs/BookMark/Off")
   @ResponseBody
   public String bookmarkoff(@RequestParam("company_idx") int company_idx,@RequestParam("user_idx") int user_idx) {
      
      mainMapper.deleteBookU(company_idx,user_idx);
      return "";   
   }   
}
