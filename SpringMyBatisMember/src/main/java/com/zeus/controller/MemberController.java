package com.zeus.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@MapperScan(basePackages = "com.zeus.mapper")
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberservice;

	@GetMapping("/insertForm")
	public String insert(Member member, Model model) {
		return "member/insertForm";
	}

	@PostMapping("/insert")
	public String memberinsert(Member member, Model model) {
		log.info("insert member =" + member.toString());
		try {
			int count = memberservice.create(member);
			if (count > 0) {
				model.addAttribute("message", "%s 등록 성공".formatted(member.getName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%s 등록 실패".formatted(member.getName()));
		return "member/failed";

	}

	@GetMapping("/memberList")
	public String memberList(Model model) {
		log.info("memberList");

		try {
			List<Member> memberList = memberservice.list();
			model.addAttribute("memberList", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";

	}

	@GetMapping("/detail")
	public String memberDetail(Member member, Model model) {
		log.info("Detail" + member.toString());
		try {
			Member m = memberservice.read(member);
			if (m == null) {
				return "member/failed";
			}
			model.addAttribute("member", m);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/detail";

	}

	@GetMapping("/updateForm")
	public String memberUpdate(Member member, Model model) {
		log.info("update" + member.toString());
		try {
			Member m = memberservice.read(member);
			if (m == null) {
				return "member/failed";
			}
			model.addAttribute("member", m);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/update";
	}

	@PostMapping("/update")
	public String update(Member member, Model model) {
		int count;
		try {
			count = memberservice.update(member);
			if (count > 0) {
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

	@GetMapping("/delete")
	public String getMethodName(Member member, Model model) {
		int count;
		try {
			count = memberservice.delete(member);
			if (count > 0) {
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

	@GetMapping("/loginForm")
	public String memberloginForm() {
		return "member/loginForm";
	}

	@PostMapping("/login")
	public String memgerlogin(Member member, Model model) {

		try {
			Member m = memberservice.loginRead(member);

			if (m != null) {
				model.addAttribute("member", m);
				return "member/detail";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}
}
