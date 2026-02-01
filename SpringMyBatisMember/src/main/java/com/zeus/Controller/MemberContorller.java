package com.zeus.Controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zeus.domain.Member;
import com.zeus.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@MapperScan(basePackages = "com.zeus.mapper")
@RequestMapping("/Member")
public class MemberContorller {
	@Autowired
	private MemberService memberservice;

	@GetMapping("/insertForm")
	public String insert(Member member, Model molde) {
		return "insertForm";
	}

	@PostMapping("/insert")
	public String memberinsert(Member member, Model model) {
		log.info("insert member =" + member.toString());
		try {
			int count = memberservice.register(member);
			if (count > 0) {
				model.addAttribute("messge", "%s 등록 성공".formatted(member.getName()));
				return  "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("messge", "%s 등록 실패".formatted(member.getName()));
		return  "member/failed";
		
	}

}















